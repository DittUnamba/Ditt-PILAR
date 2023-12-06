<?php if( !defined('LX_COREDIR') ) exit('LxCore is not present');
/************************************************************************
 *
 *  Module : Native Session Manager
 *
 ************************************************************************/


abstract class GenSessionNative {

    public function isOn()
    {
        echo "custom lib: GenSession loaded.<br>";
    }

    public function set_userdata( $name, $value )
    {
        if(!isset($_SESSION))
            session_start();

        $_SESSION[ $name ] = $value;


        /*
        if( !isset($_SESSION) ){


            // 432000
            // 24 Hrs * 4
            $timeout = 86400 * 3;

            // Set the maxlifetime of session
            ini_set("session.gc_maxlifetime", $timeout );
            ini_set("session.cookie_lifetime", $timeout );
            ini_set('session.name','LxRMVC_Sess');

            ini_set('session.use_cookies', 1);

            session_set_cookie_params($timeout);
            $Info = session_get_cookie_params();

            session_start();

            // Update the timeout of session cookie
            $sessName = session_name();
            if( isset($_COOKIE[ $sessName ]) ) {
                setcookie( $sessName, $_COOKIE[ $sessName ], time() + $timeout, '/', $Info['domain'] );
            }
        }

        session_start();
        $_SESSION[ $name ] = $value;
        */
    }

    public function get_userdata( $name )
    {
        if(!isset($_SESSION))
	        session_start();

        if( isset($_SESSION[ $name ]) )
            return $_SESSION[ $name ];

        return NULL;
    }

    public function sess_destroy( $name )
    {
        if(!isset($_SESSION))
            session_start();

        //$_SESSION[ $name ] = NULL;
        unset( $_SESSION[ $name ] );
    }
}


//--------------------------------------------------------------------------------
// Enhanced Session Class : indepent sessions by App as it worth  (Pedrix)
//--------------------------------------------------------------------------------

//
// support for multi sessions
//
define( "SessRealName", "LxPMVC" );


class Session extends GenSessionNative {

    public function __construct()
    {
        //parent::__construct();
    }

    public function ver()
    {
        return "LxSession v.1/16";
    }

    public function GetData( $sessName=SessRealName )
    {
        //return $this->GetSessionData($sessName);
        $sessData = $this->get_userdata( $sessName );
        if( ! $sessData ) return NULL;

        // si existe info, crear en JSON
        return json_decode( json_encode($sessData) );
    }

    public function SetData( $arrData, $sessName=SessRealName )
    {
        $this->set_userdata( $sessName, $arrData );
    }

    // version modificada para sessiones Multi-Admin level
    //
    public function IsLoggedAccess( $sessName=SessRealName, $arrAllows=1 )
    {
        $sessData = $this->GetSessionData( $sessName );
        if( ! $sessData ) {
            echo "LxPMVC : Access is not allowed";
            echo "<script> location.href='/conciencia' </script>";
            exit; return;
        }

        $allowed = false;
        if( is_array($arrAllows) ) {
            foreach( $arrAllows as $itm ){
                if( $itm == $sessData->userLevel )
                    $allowed = true;
            }
        } else {
            //if( $arrAllows == $sessData->userLevel )
            $allowed = true; // para todos los ($sessName)
        }

        if( ! $allowed ) {
            echo "LxPMVC : You haven't enough priviledges";
            exit; return;
        }
    }

    public function SessionDestroy( $sessName=SessRealName )
    {
        $this->sess_destroy( $sessName );
    }

    public function Destroy( $sessName=SessRealName )
    {
        $this->sess_destroy( $sessName );
    }

    //----------------------------------------------------
    // Esuema plurivariables en session
    //----------------------------------------------------
    public function SetVar( $name, $arrData="" )
    {
        /*
        if( ! $arrData ) return;
        session_start();
        $_SESSION[ $name ] = $arrData;
        */
        $this->set_userdata( $name, $arrData );
    }

    public function GetVar( $name )
    {
        /*
        session_start();
        return $_SESSION[ $name ];
        */
        return $this->get_userdata( $name );
    }

    public function GetFlash( $name )
    {
        session_start();
        $temp = $this->GetVar( $name );   // save tmp
        //unset( $_SESSION[ $name ] );
        $this->sess_destroy( $name );
        return $temp;
    }
}

?>
