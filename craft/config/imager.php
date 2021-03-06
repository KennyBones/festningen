<?php

/**
 * Imager by André Elvan
 *
 * @author      André Elvan <http://vaersaagod.no>
 * @package     Imager
 * @copyright   Copyright (c) 2016, André Elvan
 * @license     http://opensource.org/licenses/mit-license.php MIT License
 * @link        https://github.com/aelvan/Imager-Craft
 */


/**
 * Configuration file for Imager
 *
 * Override this by placing a file named 'imager.php' inside your config folder and override variables as needed.
 * Multi-environment settings work in this file the same way as in general.php or db.php
 */

 return array(
   'imagerSystemPath' => $_SERVER['DOCUMENT_ROOT'] . '/dynamic/imager/',
   'imagerUrl' => SITE_URL. 'dynamic/imager/',
   //'interlace' => true,
   'allowUpscale' => false,
   'jpegQuality' => 90,
   'jpegoptimEnabled' => true,
  	'optipngEnabled' => true,
 );
