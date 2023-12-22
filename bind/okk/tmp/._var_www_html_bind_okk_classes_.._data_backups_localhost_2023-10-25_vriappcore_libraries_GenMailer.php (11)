<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

//--------------------------------------------------------------------------------
//  Custom Library : Enhanced Mailer Manager
//   coded by: M.Sc. Ramiro Pedro Laura Murillo
//   dated on: 21/02/2017
//--------------------------------------------------------------------------------


//require_once APPPATH . "models/BaseAdo.php";
require_once BASEPATH . "libraries/Email.php";


//
// our Composed Model to WebApp
//

class GenMailer extends CI_Email
{
    public $config = array();


    public function __construct()
    {
        parent::__construct();

        $config = array();
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = 'html'; // 'text' or 'html'
        $config['protocol'] = 'smtp';

        //$config['smtp_host']    = 'smtp.gmail.com';
        //$config['smtp_port']    = '587';
        //$config['smtp_host']    = 'ssl://smtp.gmail.com';
        //$config['smtp_port']    = '465';

        /*
        $config['smtp_host']    = 'ssl://mail.ideci.net.pe';
        $config['smtp_port']    = '465';

        $config['smtp_timeout'] = '7';
        $config['smtp_user']    = 'vriunap@ideci.net.pe';
        $config['smtp_pass']    = 'opidunap++';

        $config['smtp_timeout'] = '20';
        $config['smtp_user']    = 'cursos@unap.edu.pe';
        $config['smtp_pass']    = 'nalguitas6969';
        */
        $config['smtp_host']    = 'ssl://smtp.gmail.com';
        $config['smtp_port']    = '465';

        $config['smtp_timeout'] = '20';
        $config['smtp_user']    = 'transferenciatecnologica@unamba.edu.pe';
        $config['smtp_pass']    = 'ditt@1234';
        //$config['smtp_user']    = 'pilar@unap.edu.pe';
        //$config['smtp_pass']    = 'opidunap++2';
        //$config['smtp_user']    = 'mmamanic@unap.edu.pe';
        //$config['smtp_pass']    = 'alessia113494';

        $config['newline']      = "\r\n";
        $config['validation']   = TRUE; // bool whether to validate email or not

        $this->config = $config;
    }


    //----------------------------------------------------------------------------------------------------------------
    // Formatos HTML para presentacion de correos por App
    //----------------------------------------------------------------------------------------------------------------
    private function frmMsgVRI( $msg )
    {
        $str = "<body style='background:#E0E0E0; padding:25px'> <center> "
             . "<div style='background:white;width:600px;padding:14px;border:1px solid #B0B0B0'> "
             . "<div style='text-align:left;font-family:Arial'> "
             . "<img style='float: right' src='http://vriunap.pe/absmain/imgs/sm_unap.png' height=55> &nbsp;&nbsp; "
             . "<img style='float: left' src='http://vriunap.pe/absmain/imgs/sm_vri.png' height=55> &nbsp;&nbsp; "
             . "<div style='clear: both'></div>"
             . "<hr> <p> $msg </p> <br><hr style='border:1px dotted #C0C0C0'> "
             . "<p style='font-size:10px;font-weight:bold'> Universidad Nacional Micaela Bastidas de Apurímac<br>"
             . "Vicerrectorado de Investigación<br>Dirección General de Investigación<br> <small>Plataforma de Investigación y Desarrollo </small> </p> </div></div>"
             . "</center> </body>";

        return $str;
    }

    private function frmMsgPilar( $msg )
    {
        $str = "<body style='background:#E0E0E0; padding:25px'> <center> "
             . "<div style='background:white;width:650px;padding:14px;border:1px solid #B0B0B0'> "
             . "<div style='text-align:left;font-family:Arial'> "
             //. "<img src='http://vriunap.pe/absmain/imgs/sm_unap.png' height=55> &nbsp;&nbsp; "
             //. "<img src='http://vriunap.pe/absmain/imgs/sm_vri.png' height=55> &nbsp;&nbsp; "
             //. "<img src='http://vriunap.pe/absmain/imgs/sm_pilar.png' height=60> "
             . "<center> <img src='https://pilar.unamba.edu.pe/vriadds/pilar/imag/logos-u-v-p.png' height=60> </center>"

             . "<hr> <p> $msg </p> <br><hr style='border:1px dotted #C0C0C0'> "
             . "<p style='font-size:10px;font-weight:bold'> Universidad Nacional Micaela Bastidas de Apurímac <br>"
             . "Vicerrectorado de Investigación<br>Unidad de Investigación<br> </p> </div></div>"
             . "</center> </body>";

        return $str;
    }

    private function frmMsgFedu( $msg )
    {
        $str = "<body style='background:#E0E0E0; padding:25px'> <center> "
             . "<div style='background:white;width:600px;padding:14px;border:1px solid #B0B0B0'> "
             . "<div style='text-align:left;font-family:Arial'> "
             . "<img src='http://vriunap.pe/absmain/imgs/sm_unap.png' height=55> &nbsp;&nbsp; "
             . "<img src='http://vriunap.pe/absmain/imgs/sm_vri.png' height=55> &nbsp;&nbsp; "
             . "<img src='http://vriunap.pe/absmain/imgs/fedu.jpg' height=54> "
             . "<hr> <p align='justify'> $msg </p> <br><hr style='border:1px dotted #C0C0C0'> "
             . "<p style='font-size:10px;font-weight:bold'> Universidad Nacional Micaela Bastidas de Apurímac <br>"
             . "Vicerrectorado de Investigación<br>Dirección General de Investigación<br> <small>Plataforma de Investigación y Desarrollo </small> </p> </div></div>"
             . "</center> </body>";

        return $str;
    }

    //--------------------------------------------------------------------------------------
    // funciones de exportacion
    //--------------------------------------------------------------------------------------

    public function mailFedu( $mailx, $title, $msg )
    {
        //$config['protocol'] = 'sendmail';
        //$config['mailpath'] = '/usr/sbin/sendmail';
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->from('fedu@vriunap.pe', 'FEDU - VRI - UNAP');
        $this->to( $mailx );
        $this->cc('vriunap@yahoo.com');

        $this->subject( $title );
        $this->message( $this->frmMsgFedu($msg) );

        if ( ! $this->send() )
            echo $this->email->print_debugger();
    }

    public function mailPilar( $mailx, $title, $msg )
    {
        $this->initialize( $this->config );

        //$this->from('pilar@vriunap.pe', 'Plataforma PILAR - UNAP');
        $this->from('transferenciatecnologica@unamba.edu.pe', 'PILAR UNAMBA');
        $this->to( $mailx );
        //$this->cc( 'vriunap@yahoo.com' );

        $this->subject( $title );
        $this->message( $this->frmMsgPilar($msg) );

        $this->send();

        /*
        $config['protocol'] = 'sendmail';
        $config['mailpath'] = '/usr/sbin/sendmail';
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->from('transferenciatecnologica@unamba.edu.pe', 'Plataforma PILAR');
        $this->to( $mailx );
        //$this->cc('vriunap@yahoo.com');

        $this->subject( $title );
        $this->message( $this->frmMsgPilar($msg) );

        if ( ! $this->send() )
            echo $this->email->print_debugger();
        */
    }

    public function sendMail( $mailx, $title, $msg ) // VRI general
    {
        //$config['protocol'] = 'sendmail';
        //$config['mailpath'] = '/usr/sbin/sendmail';
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->from('vri@vriunap.pe', 'Vicerrectorado de Investigación - UNAP');
        $this->to( $mailx );
        $this->cc('opid@unap.edu.pe');

        $this->subject( $title );
        $this->message( $this->frmMsgVRI($msg) );

        if ( ! $this->send() )
            echo $this->email->print_debugger();
    }

    public function sendHtml( $mailx, $title, $msg ) // VRI general
    {
        //$config['protocol'] = 'sendmail';
        //$config['mailpath'] = '/usr/sbin/sendmail';
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->from('vri@vriunap.pe', 'Vicerrectorado de Investigación - UNAP');
        $this->to( $mailx );
        $this->cc('vriunap@yahoo.com');

        $this->subject( $title );
        $this->message( $msg );

        if ( ! $this->send() )
            echo $this->email->print_debugger();
    }

    public function mailDSC( $mailx, $title, $msg )
    {
        //$config['protocol'] = 'sendmail';
        //$config['mailpath'] = '/usr/sbin/sendmail';
        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->from('parte@datascience.edu.pe', 'FINESI-UNAP 2020');
        $this->to( $mailx );
        $this->cc('partevirtualfinesi@gmail.com');
        $this->cc('ieipartedigital@gmail.com');


        $msgx = '<div style="background: linear-gradient(152deg, rgba(63,94,251,1) 0%, rgba(161,70,252,1) 50%);'
              . 'text-align: center; padding: 15px; border-bottom: 16px solid rgb(200,200,200)"> <img src="https://vriunap.pe/vriadds/epiei/finesi_rotulo.png" width=550> </div><br>'
              . "<p> $msg </p> <br><hr style='border:1px dotted #C0C0C0'> "
              . "<p style='font-size:10px;font-weight:bold'> Universidad Nacional del Altiplano - Puno <br>"
              . "<b>Facultad de Ingenieria Estadísitica e Informática</b> </p> </div></div>"
              . "</center> </body>";

        $this->subject( $title );
        $this->message( $msgx ); //$this->frmMsgVRI($msg) );

        if ( ! $this->send() )
            echo $this->email->print_debugger();
    }


    //--------------------------------------------------------------------------------------
    // evio por lotes :: bcc_batch_size = 500   (email.php .. line 224)
    //--------------------------------------------------------------------------------------
    public function sendBatch( $arrmail, $title, $msg, $who=1 )
    {
        // who:1  VRI
        // who:2  Pilar
        // who:3  Fedu

        $config['charset']  = 'UTF-8';
        $config['mailtype'] = "html";

        $this->initialize($config);

        $this->to( 'vriunap@yahoo.com' );
        $this->bcc( $arrmail );

        // $this->cc('rpedrolm@yahoo.es');
        // $arr = array('jcesarblues@live.com','rpedrolm@yahoo.es');

        if( $who==1 ) $this->from('vri@vriunap.pe', 'Vicerrectorado de Investigación - UNAP');
        if( $who==2 ) $this->from('pilar@vriunap.pe', 'Plataforma PILAR - UNAP');
        if( $who==3 ) $this->from('fedu@vriunap.pe', 'FEDU - VRI');

        $this->subject( $title );

        if( $who==1 ) $this->message( $this->frmMsgVRI($msg) );
        if( $who==2 ) $this->message( $this->frmMsgPilar($msg) );
        if( $who==3 ) $this->message( $this->frmMsgFedu($msg) );

        if ( ! $this->send() )
            echo $this->print_debugger();

        return $msg;
    }

}



