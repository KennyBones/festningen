<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

$customDbConfig = array(

	'*' => array(
		'tablePrefix' => 'craft',
	),
	'LOCAL' => array(
		'server' 	=> 'localhost',
		'user' 		=> 'festningen',
		//'port' => '3306',
		//'password' 	=> 'root',
		'password' 	=> 'festningen',
		'database' 	=> 'festningen_craft'
	),
	'DEV' => array(
		'server' 	=> 'db174422.mysql.sysedata.no',
		'port' 		=> '8889',
		//'port' => '3306',
		'user' 		=> 'db174422',
		'password' 	=> '7cd33b3e',
		'database' 	=> 'db174422'
	),
	'STAGE' => array(
		'server' 	=> '',
		'user' 		=> '',
		'password' 	=> '',
		'database' 	=> ''
	),
	'PROD' => array(
		'server' 	=> 'db174422.mysql.sysedata.no',
		'user' 		=> 'db174422',
		'password' 	=> '7cd33b3e',
		'database' 	=> 'db174422',
		'initSQLs' => array("SET SESSION sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';")
	)
);

// If a local db file exists, merge the local db settings
if (is_array($customLocalDbConfig = @include(CRAFT_CONFIG_PATH . 'local/db.php')))
{
	$customGlobalDbConfig = array_merge($customDbConfig['*'], $customLocalDbConfig);
	$customDbConfig = $customGlobalDbConfig;
}
return $customDbConfig;
