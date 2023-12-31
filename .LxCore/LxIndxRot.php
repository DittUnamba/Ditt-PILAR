<?php
/************************************************************************
*  Lightning XR - 2022
*  Dockable design 4S
*
*  Designed by: Ramiro Pedro Laura Murillo
*               Doctor in Computer Science
*               Master Degree in Informatics
*               Universidad Nacional del Altiplano
*
*  Module : LxInvoker
*  Native : php7.2+
*
************************************************************************/
//
// base dir config
//
$LxCoreDir = ".LxCore";
$LxResDir  = ".rsrc";

include( "$LxCoreDir/Config/Config.php" );
include( "$LxCoreDir/LxLib.php" );
include( "$LxCoreDir/LxApp.php" );

//use LxCore\LxRoutes;
//use LxCore\LxDB;
//use LxCore\LxTable;
use LxCore\LxApp;

echo $_GET["url"];

$_SERVER['REQUEST_URI'] = "pepe";

echo ":::>>".$_SERVER['REQUEST_URI'];

// init default app
//
$app = new LxApp();
$app->Run();

echo "<br>->> /ROOT >> " . getcwd();

?>