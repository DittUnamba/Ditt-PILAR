<?PHP  if ( ! defined('LX_COREDIR')) exit('There is no Lightning-X Core');
//------------------------------------------------------------------------------

use LxCore\LxController;
use LxCore\LxTable;
use LxCore\Ado;

define( "API_VERSION", "1.9a" );


class Api extends LxController{

    public function __construct()
    {
        parent:: __construct();

        // $this->Model( "Ado" );
        // $this->Library( "RemDB" );
        // $this->Library( "BS" );
    }

    public function Index()
    {
        header('Content-Type: application/json; charset=utf-8');

        echo '{"success":false, "message":"VRI Developers API '.API_VERSION.'"}';
    }

    //public function apiMail()
    public function Mail()
    {
        // HTML Body
        $obj = LxPost( "request" );
        $obj = base64_decode( $obj );
        $obj = json_decode( $obj );


        header('Content-Type: application/json; charset=utf-8');

        if( ! $obj ){
            echo json_encode( ['result'=>false, 'msg'=>"LxMailer API ".API_VERSION] );
            return;
        }

        // $this->loadLibrary("email");
        // $this->email->sign( $obj->sign );
        // $this->email->from( $obj->from );
        // $this->email->send( "", $obj->title,  $obj->body );

        $this->Library( "Mailer" );

        $this->Mailer->SMTP();
        $this->Mailer->Sign( $obj->sign );
        $this->Mailer->Send( $obj->to, $obj->title,  $obj->body );

        echo json_encode( ['result'=>true, 'msg'=>"LxMailer sent your message"] );
    }

    //------------------------------------------------------------------------------
    // to lib
    //------------------------------------------------------------------------------
    /*
    public function apiMail( $arrArgs=null )
    {
        $arrArgs = [
            'to'    => "rlaura@unap.edu.pe",
            'sign'  => "VRI Cursos & Eventos",
            'title' => "Saludos de cursos b",
            'body'  => "Message on <b>Bold</b>"
        ];

        $req = base64_encode( json_encode( $arrArgs ) );

        //$uri = "https://tramites.munilampa.gob.pe/web/apiMail";
        //$uri = "https://vriunap.pe/cursos/web/apiMail";
        $uri = "https://vriunap.pe/api/mail";

        $api = curl_init();
        curl_setopt($api, CURLOPT_URL, $uri );
        curl_setopt($api, CURLOPT_POST, TRUE );
        curl_setopt($api, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($api, CURLOPT_POSTFIELDS, array( 'request' => $req ) );

        curl_setopt($api, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($api, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($api, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($api, CURLOPT_TIMEOUT, 10);

        $res = curl_exec($api);
        echo "<hr> $res";

        return $res;
    }
    */
}

?>