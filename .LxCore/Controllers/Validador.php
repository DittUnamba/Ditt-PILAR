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



class Validador extends LxController
{
    public $config = array();


    public function __construct()
    {
        parent:: __construct();

        $this->Library( "BS" );
        $this->Library( "Upload" );
        $this->Library( "Signer" );

        $this->Library( "Mailer" );
    }

    public function Index()
    {
        // single views
        // $this->View( "pagina" );
        //
        // if ( ! is_php('5.4'))
        // echo "v:". PHP_VERSION_ID; 70234

        $this->Layout( "valida/Base", "valida/LaySubir" );
    }

    public function Validar()
    {
        //---------------------------------------------------------------------
        $config['ctrlname'] = "arch";
        $config['allowed']  = "pdf";
        $config['pathdest'] = "repositor/evals";
        //$config['pathdest'] = "wroot/pdf";
        $config['newname']  = date("m-d-H-i-s").".pdf";

        if( ! $this->Upload->Exec( $config ) ){
            echo "Panic()";
            return;
        }
        //---------------------------------------------------------------------

        $pdfDoc = new LxPdfDoc( $config['pathdest']."/".$config['newname'] );

        $res = $pdfDoc->Signatures();
        $res = json_decode( $res );


        if( ! $res->success ){
            $this->BS->Message( "No se ha encontrado ninguna <b>Firma y/o Certificado Digital</b>." );
            return;
        }


        foreach( $res->sign as $row ){

            if( $this->EmisorCA($row->issuer->CN) )
              $this->BS->AddTable( "font-size: 12px; margin-bottom: 20px; background: #abf4a4", "0.34rem" );
            else
              $this->BS->AddTable( "font-size: 12px; margin-bottom: 20px; background: #f4aba4", "0.34rem" );
            //$this->BS->AddTH( ["","",""] );
            //$this->BS->AddTR( [ "Nombre de Certificado", $row->SignName ], "border-top: 4px solid #aaeeaa" );
            $this->BS->AddTR( [ "Firmante", $row->subject->CN ] );
            $this->BS->AddTR( [ "Organización", $row->subject->O ] );
            $this->BS->AddTR( [ "Emisor (CA)", $row->issuer->CN ] );
            $this->BS->AddTR( [ "Valido Hasta", date("Y-m-d H:i:s",$row->validTo_time_t) ] ); //$row->validTo ] );
            $this->BS->AddTR( [ "Permisos", $row->extensions->keyUsage] );
            $this->BS->EndTable();
        }

        $this->BS->Message( "<b>$res->N</b> - Certificados encontrados." );

        /*
        $txt = $this->GenApi->Pdf2Text( $pdf );
        $met = $this->GenApi->PdfMetas( $pdf );

        $Id = $this->dbTram->Insert( "fdValidacs", [
            'Destiny' => $this->upload->NewName,
            'Source'  => $this->upload->FileName,
            'Uri'     => $_SERVER['HTTP_REFERER'],
            'Agent'   => $_SERVER["HTTP_USER_AGENT"],
            'Signs'   => sizeof($res),
            'Meta'    => $met,
            'Content' => $txt,
            'Fecha'   => LxDateTime()
        ] );

        foreach( $res as $row ){
            $this->dbTram->Insert( "fdFirmas", [
                'IdVal'    => $Id,
                'CA'       => $row->CertIssuedBy,
                'Firmante' => $row->CN,
                'Validez'  => $row->CertExpiration
            ] );
        }*/
    }

    public function EmisorCA( $issuerCN="ECEP-RENIEC CA Class 3" ) 
    {
        // Llama.pe SHA256 Standard CA
        // ECEP-RENIEC CA Class 3
        // UANATACA CA1 2016


        // time buffering checker
        //
        $uri = "https://vriunap.pe/repositor/xml/tsl-pe.xml";
        $xml = LxCurl( $uri );

        //preg_match_all( '#\<tsl:tspservice\>(.+)\<\/tsl:tspservice\>#isU', $xml, $match );
        //preg_match_all( '#\<tsl:servicename\>(.+)\<\/tsl:servicename\>#isU', $xml, $match, PREG_SET_ORDER );
        //echo "<pre>";
        //print_r( $match );


        // Caso especial: ECEP-RENIEC CA Class 1,2,3
        //
        if( strstr($issuerCN, 'ECEP-RENIEC') )
            $issuerCN = 'ECEP-RENIEC';

        preg_match_all( '#\<tsl:Name xml:lang="es">(.+)\<\/tsl:Name\>#isU', $xml, $match );
        foreach( $match[0] as $issuer ){

            $res = strstr( $issuer, strtoupper($issuerCN) );
            if( $res ) return $res;
        }

        return null;
    }

    public function upgrade( $replace=false )
    {
        $uriA = "https://iofe.indecopi.gob.pe/TSL/tsl-pe.xml";
        $uriB = "https://vriunap.pe/repositor/xml/tsl-pe.xml";

        $peso = "283672";
        $firm = "2022-08-11T17:02:51-05:00";

        /*
        <etsi:Cert>
          <etsi:CertDigest>
            <ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
               <ds:DigestValue>2LRSDZmAoxXdZOYOje+5XgOMIr5+MTJFpv4kayd7l08=</ds:DigestValue>
          </etsi:CertDigest>
          <etsi:IssuerSerial>
            <ds:X509IssuerName>CN=INDECOPI AAC RAIZ,O=INDECOPI,OU=CFE,C=PERU</ds:X509IssuerName>
            <ds:X509SerialNumber>5684603502988113431</ds:X509SerialNumber>
          </etsi:IssuerSerial>
        </etsi:Cert>
        */

        $xml0 = file_get_contents( $uriA );

        // buscamos la fecha de la firma
        //
        preg_match( '#\<etsi:SigningTime\>(.+)\<\/etsi:SigningTime\>#', $xml0, $match );

        $leng = strlen( $xml0 );

        echo "En buffer: <b>$peso</b> => <b>$firm</b> <br>"    ;
        echo "IOFE xml: <b>$leng</b> => <b>$match[0]</b> <br>" ;

        if( $replace )
            file_put_contents( "/repositor/xml/tsl-pe.xml", $xml0 );
    }

    //=========================================================================
    public function sample()
    {
        //$pdfDoc = new LxPdfDoc("http://ideci.net.pe/demo/Parte2.pdf");
        //$pdfDoc = new LxPdfDoc("http://ideci.net.pe/demo/Informe.pdf");


        $pdfDoc = new LxPdfDoc("https://softinge.com/demo/subir/firmado[R].pdf");

        $jsox = $pdfDoc->Signatures();
        $json = json_decode( $jsox );

        /*
        $jsox = json_encode( $jsox, JSON_PRETTY_PRINT );
        $json = json_decode( $jsox );

        echo "<pre>";
        echo $jsox;
        echo "</pre><hr>";
        */

        echo "<pre>";
        print_r( $json );

        /*
        $arrContextOptions=array(
            "ssl"=>array(
                "verify_peer"=>false,
                "verify_peer_name"=>false,
            ),
        );

        $response = file_get_contents("https://softinge.com/demo/subir/firmado[R].pdf", false, stream_context_create($arrContextOptions));

        echo $response;*/
    }

    public function certi()
    {
        $cert = new Lx509Certificate("wroot/ssl/SanPiter21.pfx","f");

        //echo "<hr>";
        //print_r( $cert );

        echo $cert->GetSubjectVal( "subject" );
        echo "<hr>";
        echo $cert->GetSubjectVal( "name" );
        echo "<hr>";
        echo $cert->GetSubjectVal( "validTo_time_t" );
        echo " :: " . date("Y-m-d H:i:s", $cert->GetSubjectVal("validTo_time_t") );
        echo "<hr>";
        echo $cert->GetSubjectVal( "extensions", "subjectAltName" );
        echo "<hr>";
        echo $cert->GetSubjectVal( "subject", "CN" );
        echo "<hr>";
        echo $cert->Export( "PEM" );

        echo "<hr>";

        // Modo php7+
        //------------------------------------------------------------------
        // $p7b = file_get_contents("signature.p7b"); // extraido de un PDF
        // $pem = $this->der2pem( $p7b );
        // openssl_pkcs7_read( $pem, $cert ); // $cert[0]
        //------------------------------------------------------------------

        // Modo php56+ viene de memoria
        //
    }

}