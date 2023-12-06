<?PHP if ( !defined('LX_COREDIR')) exit('There is no Lightning-X Core');
/*************************************************************************
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
*************************************************************************/

use LxCore\LxController;
use LxCore\LxTable;
use LxCore\Ado;



class Composer extends LxController
{
    public $config = array();


    public function __construct()
    {
        parent:: __construct();

        $this->Library( "BS" );
        /*
        $this->Library( "Upload" );
        $this->Library( "Signer" );
        $this->Library( "Mailer" );
        */
        $this->Library( "Mailer" );
        //$this->Model( "dbSis" );
    }

    public function Index()
    {
        // single views
        // $this->View( "pagina" );
        //
        // if ( ! is_php('5.4'))
        // echo "v:". PHP_VERSION_ID; 70234

        //$this->Layout( "valida/Base", "valida/LaySubir" );

        //echo "Meta Marcado XML - VRI";

        $this->View( "compos/base" );
    }

    public function GeForm()
    {
        //print_r( $this->dbSis );
    }
}
