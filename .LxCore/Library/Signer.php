<?php if( !defined('LX_COREDIR') ) exit('LxCore is not present');
/************************************************************************
 *
 *  Module : Lx fast file Upload
 *
 ************************************************************************/

class Lx509Certificate
{
    public $publicKey = null;
    public $privateKey = null;
    public $Subject = null;

    private $Cert;


    // X509Certificate( string $file, string $pass )
    //
    public function __construct( $file, $pass )
    {
        $pfx = file_get_contents( $file );

        $res = openssl_pkcs12_read( $pfx, $cert, $pass );
        if( $res === false ){
            return null;
            // openssl_error_string
        }

        $this->privateKey = $cert['pkey'];
        $this->publicKey = $cert['cert'];
        $this->Cert = $cert;

        // extraer informacion del certi
        $this->Subject = openssl_x509_parse( $this->publicKey );
    }

    public function Export( $type="PEM" )
    {
        switch ($type) {
            case "PEM" : //  X509ContentType::PEM
                return $this->publicKey . $this->privateKey;
            case "CER" :
                return $this->publicKey;
            case "KEY" :
                return $this->privateKey;
        }

        return '';
    }

    public function GetSubjectVal( $key="name", $subKey=null )
    {
        // validTo_time_t, name, subject
        // [extensions][subjectAltName] = email - RFC 822
        //
        if( $subKey )
            return $this->Subject[$key][$subKey];

        if( isset($this->Subject[$key]) )
            return $this->Subject[$key];

        return null;
    }
}



class LxPdfDoc
{
    private $FileName = null;
    private $Buffer = null;

    public function __construct( $urlFile )
    {
        $this->FileName = $urlFile;
        //$this->Buffer = file_get_contents( $urlFile );
    }

    public function Signatures()
    {
        //$buffer = file_get_contents( $this->FileName );

        $arrContextOps = [
            "ssl" => [
                "verify_peer"=>false,
                "verify_peer_name"=>false,
            ],
        ];

        $buffer = file_get_contents( $this->FileName, false, stream_context_create($arrContextOps));

        if( ! $buffer ){
            return null;
        }


        // Poder Judicial  /Type/Sig
        $cont = $this->LxRegEx( $buffer, '#\/Type\/Sig#', PREG_OFFSET_CAPTURE );
        if( sizeof($cont[0]) == 0 )
            // Reniec + Sunedu   /Type /Sig
            $cont = $this->LxRegEx( $buffer, '#\/Type \/Sig\s#', PREG_OFFSET_CAPTURE );

        // '/Type /Sig/Location'
        if( sizeof($cont[0]) == 0 )
            $cont = $this->LxRegEx( $buffer, '#\/Type \/Sig#', PREG_OFFSET_CAPTURE );


        // * publicKey cert offset Locations
        //
        $rang = $this->LxRegEx( $buffer, '#\/ByteRange\s*\[\s*(\d+) (\d+) (\d+) (\d+)#' );


        // Flags: /Us   Ungreedy & Single line no feedline
        // Signature separator it has take three days to achieve this
        //
        // $firm = $this->LxFileRegEx( $arch, "/<<\/Contents\s*<(.+)>/Us",  PREG_OFFSET_CAPTURE | PREG_SET_ORDER );

        $data = array( 'success'=>false, 'msg'=>"No contiene firmas digitales" );
        //if( sizeof($rang[0]) == 0 )
        if( sizeof( $cont[0] ) == 0 )
        {
            return json_encode( $data );
        }



        //-------------------------------------------------------------------------------------
        // when arrives here it has signature(s)
        // echo "<pre>";
        // print_r( $rang );
        //-------------------------------------------------------------------------------------
        // if (isset($rang[2]) && isset($rang[3]) && isset($rang[2][0]) && isset($rang[3][0]))


        /*
        << /Type /Sig /Filter /Adobe.PPKLite /SubFilter /adbe.pkcs7.detached/ByteRange[O1 L1 O2 L2] /Contents<0000....0000>

        O1 = offset 1 (zero)
        L1 = Length 1 (Content length before signature)
        O2 = offset 2 (L1 + signature length)
        L2 = Length 2 (Content length after signature)

        O2 = offset 2 = L1 + signature length + 2
        */

        // init
        $signs = [];


        // in '$rang[0]' it counts ByteRanges found
        //
        for( $i=0; $i<sizeof($rang[0]); $i++ ){

            //$stream = fopen( $arch, "rb");
            //$cert = stream_get_contents($stream, $end - $ini - 2, $ini + 1);

            $ini = $rang[2][ $i ];
            $end = $rang[3][ $i ];
            $len = $end - $ini - 2; // < * >


            // (PHP < 7 )
            //
            if ( PHP_VERSION_ID < 70000 )
            {
                $hex = substr($buffer, $ini+1, $len);
                $bin = hex2bin( $hex );

                // php56
                // shell_exec openssl fwrite hex2bin()
                //
                $cert = $this->pkcs7_read_raw( $bin );
                $res = openssl_x509_parse( $cert ); // $cert : buffer

            } else {

                // php7.0+
                // HEX coded a Pkcs7 publicKey : 40960 + cert 3k
                //
                $hex = $this->LxMemCopy( $buffer, $ini+1, $len );

                // HEX to bin --> PEM b64
                $bin = hex2bin( $hex );
                $pem = $this->LxDer2Pem( $bin );

                // PEM to CERT[]
                openssl_pkcs7_read( $pem, $cert ); // $cert[]

                // finally Issuer and Subject info pubKey
                $res = openssl_x509_parse( $cert[0] );
            }


            // lo editamos para evitar errores
            if( isset($res['extensions']['qcStatements']) )
                $res['extensions']['qcStatements'] = "...";

            $signs[] = $res;
        }

        // \u00fe\u00ff
        $data = array( 'success'=>true, 'N'=>sizeof($rang[0]), 'sign'=>$signs );

        // Salida JSON
        $str = json_encode( $data, JSON_UNESCAPED_UNICODE );
        return $str;
    }

    function LxMemCopy( $buff, $ini, $len )
    {
        $cont = 0;
        $dest = "";

        for( $i=$ini; $i<$ini+$len; $i++ ){
            $dest[$cont++] = $buff[$i];
        }

        return $dest;
    }

    function LxRegEx( $buff, $expr, $param=PREG_PATTERN_ORDER )
    {
        // \s*  con o sin espacio
        // \s   single space
        // \d+  digits
        // \w+  alpha numerics
        // /gUs busquedas separadas global Ungredy single line

        preg_match_all($expr, $buff, $result, $param );

        return $result;
    }

    function LxDer2Pem( $der, $type='CERTIFICATE' )
    {
        // necesario para  (openssl_pkcs7_read)
        //
        $pem = chunk_split(base64_encode($der), 64, "\n");
        $pem = "-----BEGIN ".$type."-----\n".$pem."-----END ".$type."-----\n";
        return $pem;
    }

    public function pkcs7_read_raw( $buffer )
    {
        $file = "/tmp/" . tmpfile();
        file_put_contents( $file, $buffer );

        // lee DER o PEM como si nada sin problema de buyes de exceso
        //
        $cert = shell_exec( "openssl pkcs7 -in \"$file\" -inform DER -print_certs" );

        return $cert;
    }

    public function pkcs7_read_file( $file )
    {
        $p7b = file_get_contents($file);
        $pem = $this->der2pem( $p7b );
        openssl_pkcs7_read( $pem, $cert ); // $cert[0]

        return $cert[0];
    }
}

class Signer {

	public $privateKey = null;
    public $publicKey = null;
}

