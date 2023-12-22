<?php

// Display only errors & warnings without notices
//
ini_set( 'display_errors', 1 );
error_reporting( E_ERROR | E_WARNING | E_PARSE ); //| E_NOTICE );


//
// This module its only for folder apps never for '/'
//

$LxCoreDir = "../.LxCore"; // composed
$LxResDir  = "wroot";
$LxSubApp  = true;

// config baseurl :: routes :: BD
//
//include( "$LxCoreDir/Config/Config.php" );
include( "./Config/Config.php" ); // local config
include( "$LxCoreDir/LxLib.php" );
include( "$LxCoreDir/LxDB.php" );
include( "$LxCoreDir/LxApp.php" );

