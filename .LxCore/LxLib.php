<?php
/***********************************************************
 *  Lightning-XR - Advanced Inner Library
 *
 *  Developer : Ramiro Pedro Laura Murillo
 *  version   : 2.0 (jun2022)
 **********************************************************/


function BaseUrl( $link="" )
{
    global $config;
    global $LxSubApp;

    // return 'baseUrl/folderApp/' + $link
    //
    if( isset($LxSubApp) and $LxSubApp )
        return $config["BASE_URL"] . $link;
        //return $config["BASE_URL"] ."/". $link;

    return $config["BASE_URL"] . $link;
}

function Asset( $resFile="" )
{
    //global $config, $webDir;
    //return $config["BASE_URL"] . $webDir . "/" . $resFile;
    global $LxResDir;
    return BaseUrl( $LxResDir . "/" . $resFile );
}

function Route( $urlAlias )
{
    global $routes;
    return $routes[ $urlAlias ];
}

function ResDir( $resFile="" )
{
    return Asset( $resFile );
}

function Redirect( $dest="" )
{
    echo "<script>";
    echo "location.href='$dest'";
    echo "</script>";
}

function IsMobile()
{
    return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
}

//Asset;

function LxInput( $IdName, $val )
{
    $clsTheme = "class='form-control'";
    //echo "T";
    echo "<input $clsTheme name='$IdName' id='$IdName' value='$val'>";
}

//function LxButton( $label, $action, $args="", $divRes="" )

function LxButton( $action, $dest=null, $label="Send", $lock="", $style="btn-warning" )
{
    // action:
    //  -->  "web/func"                    --> Generico
    //  -->  "web/func/:$val/:edt.value"   --> Multiples
    //  -->  "web/func/:FrmLogin"          --> Solo 1 envio
    //

    //$form = explode( "/#", $action );
    $sets = explode( "/:", $action );

    $form = null;
    $targ = $sets[0];
    $dest = $dest? $dest : ""; //"""document.body.innerHTML" ;
    if( isset($sets[1]) )
        $form = (substr(strtolower($sets[1]),0,3) == "frm")? $sets[1] : null;


    $res = "<button class='jlxSend mb-1 w-100 btn $style'
                    data-lock    = '$lock'
                    data-form    = '$form'
                    data-target  = '$targ'
                    data-destiny = '$dest'> $label </button>"
         ;

    echo $res;
    return;

    //$clsTheme = "class='btn btn-info'";
    //echo "T";
    //echo "<button $clsTheme onclick='$action'+$val> $label  </button>";

    // data-form

    echo "<button class='jlxSend btn btn-warning'
                  data-args    = '$args'
                  data-form    = ''
                  data-target  = '$action'
                  data-destiny = '$divRes'> $label </button>";

    $r = "
        <script>
        function jsExec( cmd, args, div )
        {
            var rend = document.querySelector( div );
            if( args.includes('#') )
                rend = document.querySelector( args );

            rend.innerHTML = cmd +\" :: \"+ args;

        }
        </script>
        <button $clsTheme onclick=\"jsExec( '$action', $args, '$divRes' )\" > $label  </button>
    ";

}



//-------------------------------------------------------------------
// request urls
//-------------------------------------------------------------------
function LxPost( $field, $valdef=null )
{
    if( isset($_POST[$field]) )
        return mlSanitize( $_POST[$field] );
    return $valdef;
}

function LxGet( $field, $valdef=null )
{
    if( isset($_GET[$field]) )
        return mlSanitize( $_POST[$field] );
    return $valdef;
}

function LxRequest( $field, $valdef=null )
{
    if( isset($_REQUEST[$field]) )
        return mlSanitize( $_REQUEST[$field] );
    return $valdef;
}
//-------------------------------------------------------------------------
function LxDate()
{
    date_default_timezone_set('America/Bogota');
    return date('Y-m-d');
}

function LxTime()
{
    date_default_timezone_set('America/Bogota');
    return date('H:i:s');
}

function LxDateTime()
{
    date_default_timezone_set('America/Bogota');
    return date('Y-m-d H:i:s');
}

function LxNormalDate( $dateutc )
{
    // a/m/aaa hh:mm am/pm
    return date_format( date_create($dateutc),"d/m/Y h:ia" );
}

function LxShortDate( $str )
{
    $timestamp = strtotime( $str );     // "2019-03-31"
    return date("d/m/Y", $timestamp); // Outputs: 31-03-2019
}

function LxShortHour( $str )
{
    $timestamp = strtotime( $str );     // "2019-03-31"
    return date("h:i:s a", $timestamp); // Outputs: 31-03-2019
}

function LxDateYMD( $dateutm )
{
    $dt = explode( "/", $dateutm );
    return sprintf( "%04d-%02d-%02d", $dt[2], $dt[1], $dt[0] );
}

// a string formated or in splited array
function LxHumanDate( $dateutm, $inArr=false )
{
    // date time
    $dt  = explode( " ", $dateutm );
    $dt  = explode( "-", $dt[0] );
    $mes = ["","ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SETIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE"];

    // as string composed "01 de enero de anio"
    if( ! $inArr )
        return  $dt[2] . " DE " . $mes[ (int)$dt[1] ]. " DE " . $dt[0];

    return [ $dt[2], $mes[ (int)$dt[1] ], $dt[0] ];
}

//-------------------------------------------------------------------------
function sqlPassword( $input )
{
    $pass = strtoupper(sha1(sha1($input,true)));
    $pass = '*' . $pass;
    return $pass;
}

function LxToJson( $args )
{
    if( is_array($args) )
        return json_decode( json_encode($args) );

    // when is a string

    // $arra = (array) json_decode( $args );
    // $json = json_decode( json_encode($arra) );
    // return $json;

    return json_decode( $args );
}

function LxJsonStr( $arr )
{
    return json_encode( $arr );
}

function LxApi( $uri, $arrArgs=null )
{
    return json_decode( LxCurl($uri, $arrArgs) );
}

function LxCurl( $uri, $arrArgs=null, $sslSkip=true, $arrHeader=null, $mode="POST" )
{
    $api = curl_init( $uri );

    if( $arrArgs ){ // POST

        curl_setopt($api, CURLOPT_CUSTOMREQUEST, $mode );
        curl_setopt($api, CURLOPT_POST, TRUE );
        curl_setopt($api, CURLOPT_POSTFIELDS, $arrArgs );
        curl_setopt($api, CURLOPT_RETURNTRANSFER, true);

    } else {  // GET

        curl_setopt($api, CURLOPT_URL, $uri );
        curl_setopt($api, CURLOPT_RETURNTRANSFER, 1);
    }

    if( $arrHeader )
        curl_setopt($api, CURLOPT_HTTPHEADER, $arrHeader );
        //, array(
        //    'Content-Type: application/json',
        //    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFmODgwOWFiZDAwNDc1ZjcwOWVlNDc1ZDJmZmY0YTU1ODZjY2UyOTUxMjRiMjBmMjgzM2JmZjFhYTIyZjJjOTMyNTY1MTc2Y2IwNDkxMDYyIn0.eyJhdWQiOiIxIiwianRpIjoiYWY4ODA5YWJkMDA0NzVmNzA5ZWU0NzVkMmZmZjRhNTU4NmNjZTI5NTEyNGIyMGYyODMzYmZmMWFhMjJmMmM5MzI1NjUxNzZjYjA0OTEwNjIiLCJpYXQiOjE1OTMwMTA1MjYsIm5iZiI6MTU5MzAxMDUyNiwiZXhwIjoxOTA4NTQzMzI1LCJzdWIiOiIxMjU4Iiwic2NvcGVzIjpbIioiXX0.DhhzHWLph1oexZKVa1r2wk9O8joJ3xsY6kzHd00uAW5WU2o7lPqo3GtA8zCjtnmq4y6avtty33fLRrew4gXhgkGFWTP4RLdRep2fnSaflwgHio1XjjwqnJK2l3nf5tppepD_wtK-l9Zmlz3aeV1Ei4888s1Si3HWNAiHJTjnh8YgQg2CSMMaRiBjvnin4eNpQ2vJA5INyzarkC5tQ511fe9kNiqbQMPxXVsCvzVXxyhGK_7cbNjouK5NeS6DPbQ_euqCArnikKNtWovDWL3zJWu2lGdqjNZ88JfOBtGHw9rJbnD-8xe4t-Y45HVN5n1OTsMQJMwBKkky9i5kps2LSaa9N34c_FgIiHfut7FWAFrqxDjF8Gvi8htYq9tK6l5tfBcrASNdkmRIyxtb138VeAMsoDcyrqcn4-QTgwAkcK56VI5-p6Vvs5zFq3xpP1afmJdnv8W1f7nyXp7_be5d5_hx_5cvqOQLz54tz_c_HsJFGmpSnPqFWV8rbCy0123LiWK-l1TeWGQsJ7xFs5ZwgscgFnLwMllyJysrf87d8q5i_F0ggYNwlELPGlIjCPlKJf5-GTi5bnPH1ZmMyHpDvnBVM5apW5DSvcCViKENLbABq6650y5O0GU1CbA7EzlHxipX0s4u9-TqhDpE8VNeLwDYOWtHt7fUdpI2BZviQC0'
        //) );

    // ssl skip php7+
    if( $sslSkip ){
        curl_setopt($api, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($api, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($api, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($api, CURLOPT_TIMEOUT, 10);
    }

    return curl_exec($api);
}


//-------------------------------------------------------------------------
// SSL Modern Encription for APIs
//-------------------------------------------------------------------------
function LxEncrypt($message, $key)
{
    //if (mb_strlen($key, '8bit') !== 32) {
    //    throw new Exception("Needs a 256-bit key!");
    //}

    $ivsize = openssl_cipher_iv_length("aes-256-cbc");
    $iv     = openssl_random_pseudo_bytes($ivsize);

    $result = openssl_encrypt($message, "aes-256-cbc", $key, OPENSSL_RAW_DATA, $iv );

    return $iv . $result;
}

function LxDecrypt($message, $key)
{
    //if (mb_strlen($key, '8bit') !== 32) {
    //    throw new Exception("Needs a 256-bit key!");
    //}

    $ivsize = openssl_cipher_iv_length("aes-256-cbc");
    $iv     = mb_substr($message, 0, $ivsize, '8bit');
    $result = mb_substr($message, $ivsize, null, '8bit');

    return openssl_decrypt( $result, "aes-256-cbc", $key, OPENSSL_RAW_DATA, $iv );
}

function LxRandStr( $len=16 )
{
    return substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $len );
}



/* to :: Lib->BS
function LxShowMsg( $type, $msg )
{
    echo "<div class='alert alert-$type mb-2'>";
    echo " $msg ";
    echo "</div>";
}*/



//--------------------------------------------------------------------------------------
// Private functions area : just for internal calls
//--------------------------------------------------------------------------------------
function mlError( $type, $msg )
{
    echo "<div style='border: 1px solid #C0C0C0; background: #FAFAFA; padding: 20px; font-family: Arial'>
          <h2 style='margin: 0px'> $type </h2> <hr style='border: 1px dashed #D0D0D0'>
          <br><span style='font-size: 18px'>$msg</span> <br><small style='font-size: 11px'><br>Redirecting en 3 Secs</small> </div>
          <div style='background: #ebf1fc; padding: 14px; font-size: 11px; font-family: Arial; border-bottom: 1px solid #C0C0C0'>
          Lightning-XR 2022 - The most compact and fast RMVC Framework</div>";
    //echo "<script> setTimeout( () => { location.href='/' }, 2500); </script>";
    exit;
}

//--------------------------------------------------------------------------------
// pre-procesor parsing tokenizer and pre-render
//--------------------------------------------------------------------------------
$gArr = "";
$gExp = "";
$gVal = "";
//----------------------------------------------------------------------------------
function mlKatana( $file )  // Extended version @{  }
{
    $buff = file_get_contents( $file );

    //preg_match_all( '#\@foreach(.+)\@endfor#is', $arch, $match );
    //preg_match_all( '#\@\w+#is', $arch, $match );

    /*
    echo "<pre>";
    preg_match_all( '|\@(.+)|m', $arch, $match );
    print_r( $match );
    */

    global $gArr;
    $gArr = new SplStack();

    $callbReplace = function( $match ){

        global $gArr;

        $exp = "";
        $val = "";
        $end = "; ";

        if( $match[1] == "end" ){

            $exp = $gArr->pop();
            switch( $exp ){
                case "if"      : $val = "endif"; break;
                case "else"    : $val = "endif"; break;
                case "for"     : $val = "endfor"; break;
                case "while"   : $val = "endwhile"; break;
                case "foreach" : $val = "endforeach"; break;
            }
        }
        else{
            //
            // @foreach( ... ) --> foreach
            //
            $token = strtok( $match[1], "\n\t( )" );

            if( $token != "elseif" and $token != "else" )
                $gArr->push( $token );

            if( in_array($token, ["if","else","elseif","for","while","foreach"]) )
                $end = ": ";
        }

        // echo "** $gVal) $match[1] :: $exp --> $val <br>";

        $exp = $match[1]=="end"? $val : $match[1]; // strtolower

        return "<?php " . $exp . $end. " ?>";
    };

    // @<exp> --> func | if | for | while ...
    $buff = preg_replace_callback( '|\@(.+)|m', $callbReplace, $buff );


    //
    // {{ <EXP> }}
    // $buff = preg_replace_callback( '/\{\{(.+)\}\}/', // previous with errors
    //
    //$buff = preg_replace_callback( '/{{\s*([^{}\s]+)\s*}}/',  // multilines and multi {{ $vars }} @{ $i = 0; }
    $buff = preg_replace_callback( '/{{\s*([^{}]+)\s*}}/',  // multilines and multi {{ $vars }} @{ $i = 0; }
        function ($match) {
            // strtolower($match[1])
            return "<?php echo " . $match[1] . "; ?>";
        },
        $buff
    );

    /*
    echo "<pre>";
    echo htmlentities( $buff );
    */

    return $buff;

    // @foreach( <EXP> )
    /*
    $arch = preg_replace_callback( '/\@foreach(.+)/',
        function ($match) {
            return "<? foreach ".strtolower($match[1]) . ": ?>";
        },
        $arch
    );
    */

    /*
    $exprs = ["foreach","while","for","if"];
    $arch = $this->RegxReplaceList( $arch, $exprs, true, ":" );

    $exprs = ["else","elseif"];
    $arch = $this->RegxReplaceList( $arch, $exprs, false, ":" );

    $exprs = ["endforeach","endwhile","endfor","endif"];
    $arch = $this->RegxReplaceList( $arch, $exprs, false, ";" );
    */
}


// deprecated function
/*
function toUTF( $str )
{
    return utf8_decode( $str );
}
*/

function &mlLoadRoutes()
{
    global $routes;
    return $routes;
}

function &mlLoadConfig( Array $replace = array() )
{
    global $config;

    // Are any values being dynamically added or replaced?
    foreach ($replace as $key => $val)
    {
        $config[$key] = $val;
    }

    return $config;
}

function mlSanitize( $str )
{
    $str = strip_tags($str);
    $str = str_replace( "%3c", "", $str);
    $str = str_replace( "%3C", "", $str);

    $str = str_replace( "'", "", $str);
    $str = str_replace( "{", "",  $str);
    $str = str_replace( "}", "",  $str);
    $str = str_replace( "%", "",  $str);
    $str = str_replace( "&", "",  $str);
    $str = str_replace( "#", "",  $str);
    $str = str_replace( ";", "",  $str);
    $str = str_replace( "!", "",  $str);
    $str = str_replace( ">", "",  $str);
    $str = str_replace( "<", "",  $str);
    $str = str_replace( "--", "", $str);

    $str = str_replace( "\"", "", $str);
    $str = str_replace( "\\", "", $str);

    //$str = str_replace( "“", "",  $str);
    //$str = str_replace( "”", "",  $str);
    //$str = str_replace( "–", "-",  $str);
    return $str;
}
