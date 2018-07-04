<?php

$vendorDir = dirname(__DIR__);

return array (
  'craftcms/aws-s3' => 
  array (
    'class' => 'craft\\awss3\\Plugin',
    'basePath' => $vendorDir . '/craftcms/aws-s3/src',
    'handle' => 'aws-s3',
    'aliases' => 
    array (
      '@craft/awss3' => $vendorDir . '/craftcms/aws-s3/src',
    ),
    'name' => 'Amazon S3',
    'version' => '1.0.8',
    'description' => 'Amazon S3 integration for Craft CMS',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'changelogUrl' => 'https://raw.githubusercontent.com/craftcms/aws-s3/master/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/craftcms/aws-s3/archive/master.zip',
  ),
  'aelvan/imager' => 
  array (
    'class' => 'aelvan\\imager\\Imager',
    'basePath' => $vendorDir . '/aelvan/imager/src',
    'handle' => 'imager',
    'aliases' => 
    array (
      '@aelvan/imager' => $vendorDir . '/aelvan/imager/src',
    ),
    'name' => 'Imager',
    'version' => 'v2.0.1.2',
    'schemaVersion' => '2.0.0',
    'description' => 'Image transforms gone wild',
    'developer' => 'André Elvan',
    'developerUrl' => 'https://www.vaersaagod.no',
    'documentationUrl' => 'https://github.com/aelvan/Imager-Craft/blob/craft3/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/aelvan/Imager-Craft/craft3/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
    'components' => 
    array (
    ),
  ),
  'ether/simplemap' => 
  array (
    'class' => 'ether\\simplemap\\SimpleMap',
    'basePath' => $vendorDir . '/ether/simplemap/src',
    'handle' => 'simplemap',
    'aliases' => 
    array (
      '@ether/simplemap' => $vendorDir . '/ether/simplemap/src',
    ),
    'name' => 'SimpleMap',
    'version' => '3.3.3',
    'schemaVersion' => '3.0.0',
    'description' => 'A beautifully simple Google Map field type.',
    'developer' => 'Ether Creative',
    'developerUrl' => 'https://ethercreative.co.uk',
    'developerEmail' => 'tam@ethercreative.co.uk',
  ),
  'verbb/field-manager' => 
  array (
    'class' => 'verbb\\fieldmanager\\FieldManager',
    'basePath' => $vendorDir . '/verbb/field-manager/src',
    'handle' => 'field-manager',
    'aliases' => 
    array (
      '@verbb/fieldmanager' => $vendorDir . '/verbb/field-manager/src',
    ),
    'name' => 'Field Manager',
    'version' => '2.0.2',
    'schemaVersion' => '1.0.0',
    'description' => 'Manage your fields and field groups with ease with simple field or group cloning and quicker overall management.',
    'developer' => 'Verbb',
    'developerUrl' => 'https://verbb.io',
    'developerEmail' => 'support@verbb.io',
    'documentationUrl' => 'https://github.com/verbb/field-manager',
    'changelogUrl' => 'https://raw.githubusercontent.com/verbb/field-manager/craft-3/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => true,
  ),
  'verbb/super-table' => 
  array (
    'class' => 'verbb\\supertable\\SuperTable',
    'basePath' => $vendorDir . '/verbb/super-table/src',
    'handle' => 'super-table',
    'aliases' => 
    array (
      '@verbb/supertable' => $vendorDir . '/verbb/super-table/src',
    ),
    'name' => 'Super Table',
    'version' => '2.0.7',
    'schemaVersion' => '2.0.4',
    'description' => 'Super-charge your Craft workflow with Super Table. Use it to group fields together or build complex Matrix-in-Matrix solutions.',
    'developer' => 'Verbb',
    'developerUrl' => 'https://verbb.io',
    'developerEmail' => 'support@verbb.io',
    'documentationUrl' => 'https://github.com/verbb/super-table',
    'changelogUrl' => 'https://raw.githubusercontent.com/verbb/super-table/craft-3/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
  'verbb/cp-nav' => 
  array (
    'class' => 'verbb\\cpnav\\CpNav',
    'basePath' => $vendorDir . '/verbb/cp-nav/src',
    'handle' => 'cp-nav',
    'aliases' => 
    array (
      '@verbb/cpnav' => $vendorDir . '/verbb/cp-nav/src',
    ),
    'name' => 'Control Panel Nav',
    'version' => '2.0.7',
    'schemaVersion' => '2.0.0',
    'description' => 'Control Panel Nav helps you managing your Control Panel navigation.',
    'developer' => 'Verbb',
    'developerUrl' => 'http://verbb.io',
    'developerEmail' => 'support@verbb.io',
    'documentationUrl' => 'https://github.com/verbb/cp-nav',
    'changelogUrl' => 'https://raw.githubusercontent.com/verbb/cp-nav/craft-3/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => false,
  ),
  'angellco/spoon' => 
  array (
    'class' => 'angellco\\spoon\\Spoon',
    'basePath' => $vendorDir . '/angellco/spoon/src',
    'handle' => 'spoon',
    'aliases' => 
    array (
      '@angellco/spoon' => $vendorDir . '/angellco/spoon/src',
    ),
    'name' => 'Spoon',
    'version' => '3.0.0-beta.4',
    'description' => 'A plugin for Craft to enhance your Matrix fields with groups, tabs and more!',
    'developer' => 'Angell & Co',
    'developerUrl' => 'https://angell.io',
    'changelogUrl' => 'https://raw.githubusercontent.com/angell-co/spoon/master/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => false,
    'components' => 
    array (
      'fields' => 'angellco\\spoon\\services\\Fields',
      'blockTypes' => 'angellco\\spoon\\services\\BlockTypes',
      'loader' => 'angellco\\spoon\\services\\Loader',
    ),
  ),
  'aelvan/inlin' => 
  array (
    'class' => 'aelvan\\inlin\\Inlin',
    'basePath' => $vendorDir . '/aelvan/inlin/src',
    'handle' => 'inlin',
    'aliases' => 
    array (
      '@aelvan/inlin' => $vendorDir . '/aelvan/inlin/src',
    ),
    'name' => 'Inlin',
    'version' => '2.0.0',
    'schemaVersion' => '2.0.0',
    'description' => 'A simple plugin for inlining stuff in your templates.',
    'developer' => 'André Elvan',
    'developerUrl' => 'https://www.vaersaagod.no',
    'documentationUrl' => 'https://github.com/aelvan/Inlin-Craft/blob/craft3/README.md',
    'changelogUrl' => 'https://github.com/aelvan/Inlin-Craft/blob/craft3/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
);
