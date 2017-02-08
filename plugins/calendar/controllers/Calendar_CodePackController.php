<?php

namespace Craft;

use Calendar\Library\CodePack\CodePack;
use Calendar\Library\CodePack\Exceptions\FileObject\FileObjectException;
use Calendar\Library\CodePack\Exceptions\Manifest\ManifestNotPresentException;
use Calendar\Library\PermissionsHelper;

class Calendar_CodePackController extends BaseController
{
    const FLASH_VAR_KEY = 'codepack_prefix';

    public function init()
    {
        PermissionsHelper::requirePermission(PermissionsHelper::PERMISSION_SETTINGS);
        
        parent::init();
    }

    /**
     * Show CodePack contents
     * Provide means to prefix the CodePack
     *
     * @throws HttpException
     */
    public function actionListContents()
    {
        $codePack = $this->getCodePack();

        $postInstallPrefix = craft()->userSession->getFlash(self::FLASH_VAR_KEY);
        if ($postInstallPrefix) {
            $this->renderTemplate(
                'calendar/codepack/_post_install',
                array(
                    'codePack' => $codePack,
                    'prefix'   => $postInstallPrefix,
                )
            );
        }

        $this->renderTemplate(
            'calendar/codepack',
            array(
                'codePack' => $codePack,
                'prefix'   => 'calendar_',
            )
        );
    }

    /**
     * Perform the install feats
     *
     * @throws HttpException
     */
    public function actionInstall()
    {
        $this->requirePostRequest();

        $codePack = $this->getCodePack();
        $prefix   = craft()->request->getRequiredPost('prefix');

        $prefix = preg_replace('/[^a-zA-Z_0-9]/', '', $prefix);

        try {
            $codePack->install($prefix);
            craft()->calendar_settings->dismissDemoBanner();
        } catch (FileObjectException $exception) {
            $this->renderTemplate(
                'calendar/codepack',
                array(
                    'codePack'         => $codePack,
                    'prefix'           => $prefix,
                    'exceptionMessage' => $exception->getMessage(),
                )
            );
        }

        craft()->userSession->setFlash('codepack_prefix', $prefix);

        $this->redirectToPostedUrl();
    }

    /**
     * @return CodePack
     * @throws HttpException
     */
    private function getCodePack()
    {
        try {
            $codePack = new CodePack(__DIR__ . '/../codepack');
        } catch (ManifestNotPresentException $exception) {
            $this->renderTemplate('calendar/codepack/_no_codepacks');

            return null;
        }

        return $codePack;
    }
}
