<?PHP  if ( ! defined('LX_COREDIR')) exit('There is no Lightning-X Core');
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


define( "LX_ADMIN", "LxRMVC" );
// https://admision.senati.marketing/wp-admin/admin-ajax.php

class Web extends LxController
{
    public function __construct()
    {
        parent:: __construct();

        $this->Model( "dbConc" );
        $this->Model( "dbCurs" );

        $this->Library( "BS" );
        $this->Library( "Upload" );
        $this->Library( "Session" );

        //$this->Library( "RemDB" );
        //$this->Library( "email" );
        //$this->Library( "GenApi" );
        //$this->Library( "SexyPdf" );

        $this->Model( "dbSis" );
    }

    public function Index()
    {
        // single views
        // $this->View( "pagina" );

        $this->Layout( "base", "layDemo" );
    }

    public function info()
    {
        phpinfo();
    }

    public function UpdateDataA()
    {
        echo "Correo leido: " . LxPost("mail");
    }

    public function GeForm()
    {
        $tbl = $this->dbSis->GetTable( "sgFormus" );
        foreach( $tbl->result() as $row ){
            echo "$row->Id :: $row->Agrup :: $row->Cod - $row->Nombre <br>";
        }
        echo "<hr>";

        $row = $tbl->GetRowi( 0 );
        $tbl = $this->dbSis->GetTable( "sgPreguntas", "IdForm = $row->Id" );
        foreach( $tbl->result() as $row ){

            // Seria mas sencillo "$row->Tipo" pero para el tipo de control cargamos data
            //
            $ctrl = $this->dbSis->GetRow( "dicPregTipo", "Id = $row->Tipo" );
            $name = "ctx$row->Id";
            $value = "";

            //----------------------------------------------------------------------------------------------
            if( $ctrl->Type == "text" ){

                echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";

            } elseif( $ctrl->Type == "textarea" ){

                echo "<textarea class='text' name='$name' placeholder='$hint'>$value</textarea>";

            } elseif( $ctrl->Type == "number" ){

                echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";

            } elseif( $ctrl->Type == "date" ){

                echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";

            } elseif( $ctrl->Type == "dtime" ){

                echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";

            } elseif( $ctrl->Type == "select" ){

                $opts = $this->dbSis->GetTable( "sgSelecsDet", "IdSelec = $row->GrupSel" );

                echo "<select class='' name='$name' required>";
                foreach( $opts->result() as $val ){
                    echo "<option value='$val->Id - $val->IdSelec'> $val->Nombre </option>";
                }
                echo "</select>";

            } elseif( $ctrl->Type == "file" ){
                //echo "FILEFILE";

                echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint' >";
            }
            //----------------------------------------------------------------------------------------------

            //$this->Display( $ctrl, "eme$row->Id" );
            echo "$row->Id :: $row->Obliga :: $row->Tipo - $row->Nombre <br>";
        }

        //sgPreguntas
        //$ctrl = $this->dbSis->GetRow( "dicPregTipo", "Id = 11" );
        //$this->Display( $ctrl, "eme1" );
    }

    public function Display( $ctrl, $name, $value="", $hint="" )
    {
        /*
        if( $ctrl->Type == "text" ){
            echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";
        } elseif( $ctrl->Type == "textarea" ){
            echo "<textarea class='text' name='$name' placeholder='$hint'>$value</textarea>";
        } elseif( $ctrl->Type == "number" ){
            echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";
        } elseif( $ctrl->Type == "date" ){
            echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";
        } elseif( $ctrl->Type == "dtime" ){
            echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";
        } elseif( $ctrl->Type == "select" ){

            //echo "<input type='$ctrl->Type' class='' name='$name' value='$value' placeholder='$hint'>";
            //echo "SELSEL";
            $sel = $this->dbSis->GetTable( "sgSelecsDet", "IdSelec = $" );
            echo "<select class='' name='$name' required>";
            foreach( $sel->result() as $row ){

            }
            echo "</select>";

        } elseif( $ctrl->Type == "file" ){
            echo "FILEFILE";
        }
        */
    }


    public function Render()
    {
        //echo Asset("poox");
        //echo str_replace( "/", ".", "admin/v1/login" );
        //echo "<hr>";
        //$this->KRender( "tplDemo" );
        $this->KView( "tes/login" );
    }

    public function mailer()
    {
        $this->Library( "Mailer" );

        $this->Mailer->SMTP();
        $this->Mailer->Sign( "Plataforma PILAR Indep" );
        $this->Mailer->Send( "rlaura@unap.edu.pe", "proba Indep", "proba <b>nova</b> src='opa' Indep" );
    }

    // deshechable solo demo para X509
    public function certi()
    {
        $this->Library("Signer");

        $cert = new Lx509Certificate("SanPiter21.pfx","fs");

        //var_dump( $cert );
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
        $buff = file_get_contents("signature.p7b");

        //$cert = shell_exec( "openssl pkcs7 -in $file -inform DER -print_certs");// > info2.txt" );
        $cert = $this->pkcs7_read( $buff );
        $resx = openssl_x509_parse( $cert );
        //der2pem
        echo "Parsed <PRE>";
        print_r( $resx );

    }

    public function pkcs7_read( $buffer )
    {
        $file = "/tmp/" . tmpfile();
        file_put_contents( $file, $buffer );

        // lee DER o PEM como si nada no problem
        //
        $cert = shell_exec( "openssl pkcs7 -in \"$file\" -inform DER -print_certs" );// > info2.txt" );
        return $cert;
    }

    function der2pem( $der, $type='CERTIFICATE' )
    {
        // necesario para  (openssl_pkcs7_read)
        //
        $pem = chunk_split(base64_encode($der), 64, "\n");
        $pem = "-----BEGIN ".$type."-----\n".$pem."-----END ".$type."-----\n";
        return $pem;
    }



}
