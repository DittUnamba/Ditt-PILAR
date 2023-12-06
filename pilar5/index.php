<?php
/************************************************************************
*  Lightning XR - 2022
*  Dockable design 4S
*
*  PILAR5 FirmDig --[ Bachiller, Pregrado, Segundas, Posgrado ]
*
*  Developed by: Ramiro Pedro Laura Murillo
*                Fred Torres Cruz
*                Julio C. Tisnado Puma
*                Universidad Nacional del Altiplano
*
************************************************************************/


use LxCore\LxApp;

include( "../.LxCore/Loader.php" );


$app = new LxApp();
$app ->Run();


// Future SPA Entry Point
/*
$app = new LxSPA();
$app->MainLayer( "views/mibase.html" );
$app->RunJS();
*/

// EOF