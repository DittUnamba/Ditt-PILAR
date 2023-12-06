<?PHP
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

$config["BASE_URL"] = "http://http://161.132.39.12/pilar5/";


// controller
//
$config["Start"] = "Web";

// routing alias to short routes
//
$routes["/tesisposter"] = "web/index/1";
$routes["/postcientif"] = "web/index/2";
$routes["/tesis3mt"]    = "web/index/3";

// database configuration
//
$config["iDRIVER"] = "mysqli";
//$config["iDRIVER"] = "PDO";

$config["iSERVER"] = "localhost";
$config["DB_PASS"] = "Pau_VFtp_dJk9";
$config["DB_USER"] = "vriunap_admin";
$config["DB_NAME"] = "vriunap_conciencia";

?>