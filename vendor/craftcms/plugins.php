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
    'version' => '2.0.8',
    'schemaVersion' => '2.0.4',
    'description' => 'Super-charge your Craft workflow with Super Table. Use it to group fields together or build complex Matrix-in-Matrix solutions.',
    'developer' => 'Verbb',
    'developerUrl' => 'https://verbb.io',
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
    'version' => '2.0.8',
    'schemaVersion' => '2.0.0',
    'description' => 'Control Panel Nav helps you managing your Control Panel navigation.',
    'developer' => 'Verbb',
    'developerUrl' => 'http://verbb.io',
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
  'rias/craft-position-fieldtype' => 
  array (
    'class' => 'rias\\positionfieldtype\\PositionFieldtype',
    'basePath' => $vendorDir . '/rias/craft-position-fieldtype/src',
    'handle' => 'position-fieldtype',
    'aliases' => 
    array (
      '@rias/positionfieldtype' => $vendorDir . '/rias/craft-position-fieldtype/src',
    ),
    'name' => 'Position Fieldtype',
    'version' => '1.0.13',
    'schemaVersion' => '1.0.0',
    'description' => 'Brings back the Position fieldtype from Craft 2',
    'developer' => 'Rias',
    'developerUrl' => 'https://rias.be',
    'changelogUrl' => 'https://raw.githubusercontent.com/Rias500/craft-position-fieldtype/master/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
  'supercool/buttonbox' => 
  array (
    'class' => 'supercool\\buttonbox\\ButtonBox',
    'basePath' => $vendorDir . '/supercool/buttonbox/src',
    'handle' => 'buttonbox',
    'aliases' => 
    array (
      '@supercool/buttonbox' => $vendorDir . '/supercool/buttonbox/src',
    ),
    'name' => 'Button Box',
    'version' => '2.0.2',
    'schemaVersion' => '1.0.0',
    'description' => 'A collection of utility field types for Craft',
    'developer' => 'Supercool',
    'developerUrl' => 'http://supercooldesign.co.uk',
    'documentationUrl' => 'https://github.com/supercool/buttonbox/blob/master/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/supercool/buttonbox/master/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
  'craftcms/redactor' => 
  array (
    'class' => 'craft\\redactor\\Plugin',
    'basePath' => $vendorDir . '/craftcms/redactor/src',
    'handle' => 'redactor',
    'aliases' => 
    array (
      '@craft/redactor' => $vendorDir . '/craftcms/redactor/src',
    ),
    'name' => 'Redactor',
    'version' => '2.1.6',
    'description' => 'Edit rich text content in Craft CMS using Redactor by Imperavi.',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/redactor',
  ),
);
