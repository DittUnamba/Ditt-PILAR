<?php if( !defined('LX_COREDIR') ) exit('LxCore is not present');
/*************************************************************************
 *   Extendes Both Libs - LxMailer 2022 (09)
 *   Re-coded by : Ramiro Pedro Laura Murillo
 *
 *   07-09-2022 : Standarized both libraries
 *
 **************************************************************************/


//require_once BASEPATH . "libraries/Email.php";
include_once( LX_COREDIR . "/Library/MailerCI.php" );
include_once( LX_COREDIR . "/Library/MailerPx.php" );



class Mailer extends MailerCI { //MailerPx {


    //-------------------------------------------------------------------------------------
    // Customized mails for our WebSystems
    //-------------------------------------------------------------------------------------
    private function Write( $msg, $sis, $img )
    {
        $body = "<head> <meta name='viewport' content='width=device-width, initial-scale=1'> </head> <body style='margin: 0px; padding: 0px; font-family: Arial; font-size: 15px'>"
              . "<div style='background: #F0F0E0'> <center> <div style='border-collapse:collapse; border-spacing:0px;background: white; width: 600px'>"
              //. "<div style='background:linear-gradient(152deg,rgba(63,94,251,1) 0%,rgba(161,70,252,1) 50%); text-align:center; padding: 14px; border-bottom: 12px solid rgb(200,200,200); color: white'> <img src='https://fcd.edu.pe/apps/public/img/finesi_rotuloB.png' width='80%'> </div>"
              //. "<div style='background:linear-gradient(152deg,rgba(63,94,251,1) 0%,rgba(161,70,252,1) 50%); text-align:center; padding: 14px; border-bottom: 12px solid rgb(200,200,200); color: white'> <img src='https://vriunap.pe/absmain/imgs/vri.png' width='20%'> </div>"
              . "<div style='background-color: rgb(238,174,202,1); background:linear-gradient(90deg, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); text-align:center; padding: 16px; border-bottom: 10px solid #EEE; color: white'> <img src='$img' width='16%'> </div>"
              . "<div style='text-align: left; padding: 25px'> $msg </div>"
              . "<div style='text-align: right; padding: 14px; font-size: 11px'> <B>$sis</B><br> OPID VRI | UNAP  </div>"
              . "<div style='text-align: center; background: #cecedd; padding: 16px; font-size: 11px; line-height: 1'> <small style='color: #444'>Universidad Nacional del Altiplano <br>Vicerrectorado de Investigación<br> <i>Lightning-XR Framework 2022</i> </small> </div>"
              . "</center> </div> </div>"
              . "</body>"
              ;

        return $body;
    }

    public function Pilar( $arrMail, $subject, $msg, $brochFile="", $Id=3 )
    {
        // Bachiller, Segunda, Pregrado, Articulo, Segunda, Posgrado
        //$Id = 3; // 1 - 5

        $sis = "Plataforma PILAR";
        $img = "https://vriunap.pe/pilar5/wroot/logo/pilar$Id.png";


        echo $this->Write( $msg, $sis, $img );
    }

    public function Cursos( $arrMail, $subject, $msg, $brochFile="" )
    {
        $sis = "Cursos & Eventos";
        $img = "https://vriunap.pe/pilar5/wroot/logo/logoWW.png";


        echo $this->Write( $msg, $sis, $img );
    }

    // don't use on flat new msg
    //
    public function Send( $arrMail, $subject, $msg, $brochFile="" )
    {
        $sis = "Pltaforma VRI";
        $img = "https://vriunap.pe/pilar5/wroot/logo/logoWW.png";

        $html = $this->Write( $msg, $sis, $img );

        parent::Send( $arrMail, $subject, $html, $brochFile );
    }
}