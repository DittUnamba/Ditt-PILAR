<?PHP if ( !defined('LX_COREDIR')) exit('There is no Lightning-X Core');
//--------------------------------------------------------------------------------
//  Custom Library : Fast and Sexy PDF maker
//   coded by: Ramiro Pedro Laura Murillo
//
//   migrated to LxMVC
//
//    * 06/09/2022 : sendmail & smtp mode addedes
//    * 01/09/2022 : modified
//    * 18/09/2017 : dated on
//    * 21/02/2017 : init
//--------------------------------------------------------------------------------


use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

include_once( LX_VENDORDIR . "/phpmailer/PHPMailer.php" );
include_once( LX_VENDORDIR . "/phpmailer/SMTP.php" );


class MailerPx {

    //--------------------------------------------
    // mode :: smtp object
    //--------------------------------------------
    public $mail = null;
    public $mode = "sendmail"; // sendmail or smtp

    //--------------------------------------------
    // mode :: sendmail
    //--------------------------------------------
    protected  $cc   = "vriunap@yahoo.com";
    protected  $sign = "VRI - UNA PUNO";
    protected  $from = "cursos@unap.edu.pe";



    function __construct()
    {
        $this->mail = new PHPMailer;

        $this->mail->isSMTP();
        // Enable SMTP debugging
        // SMTP::DEBUG_OFF = off (for production use)
        // SMTP::DEBUG_CLIENT = client messages
        // SMTP::DEBUG_SERVER = client and server messages

        //$this->mail->SMTPDebug = SMTP::DEBUG_SERVER;
        $this->mail->SMTPDebug = SMTP::DEBUG_OFF;

        $this->mail->Host = 'smtp.gmail.com';
        $this->mail->Port = 587;     // gmail
        $this->mail->Timeout  = 20;  // avoid spam
        $this->mail->SMTPAuth = true;
        $this->mail->SMTPSecure = 'tls'; //seguridad
        $this->mail->Username = 'cursos@unap.edu.pe';
        $this->mail->Password = 'nalguitas6969';
        //$this->mail->Username = 'opid@unap.edu.pe';
        //$this->mail->Password = 'opidunap++';
    }


    function cc( $arg )   { $this->cc  = $arg;  }
    function From( $arg ) { $this->from = $arg; }
    function Sign( $arg ) { $this->sign = $arg; }


    public function Send( $arrMail, $subject, $msg, $brochFile="" )
    {
        if( strtoupper($this->mode) == "SMTP" ){

            $this -> Send4Smtp( $arrMail, $subject, $msg, $brochFile );

        } else {

            // phpMailer has sendmail mode but too much code for something too simple
            //
            $this -> Send4Mail( $arrMail, $subject, $msg );
        }
    }

    public function SMTP( $user="", $pass="", $host="", $port="" )
    {
        // send with default config
        //
        $this->mode = "SMTP";

        if( $user ) $this->mail->Username = $user;
        if( $pass ) $this->mail->Password = $pass;
        if( $host ) $this->mail->Host = $host;
        if( $port ) $this->mail->Port = $port;
    }


    //--------------------------------------------------------------------
    // SMTP mode
    //--------------------------------------------------------------------
    private function Send4Smtp( $arrMail, $subject, $msg, $brochFile="" )
    {
        // 1 or N to Batch Send;
        //
        $oneMail = "";
        $arrMail = is_array($arrMail)? $arrMail : [ $arrMail ];
        foreach( $arrMail as $item ){

            //echo "mail to: $item <br>";
            $oneMail = $item;
            $this->mail->addAddress( $item );
        }


        // $foot = '<br><br>';
        //
        $this->mail->CharSet = 'UTF-8';
        $this->mail->AltBody = 'Campo alternativo de validación';
        $this->mail->Subject = $subject;
        $this->mail->addCC( $this->cc );
        $this->mail->setFrom($this->mail->Username, $this->sign );

        $this->mail->msgHTML( $msg ); //. $foot );

        // attach an image file
        if( $brochFile )
            $this->mail->addAttachment( $brochFile  ); // ('includes/img/coespe.jpg');

        if( ! $this->mail->send() ) {
            echo 'LxMailer Error :: ' . $this->mail->ErrorInfo;
        }
        //else {
        //    echo ">> email sent to: $oneMail";
        //}
    }

    //-------------------------------------------------------------------
    // mode /usr/bin/sendmail
    //-------------------------------------------------------------------
    private function Send4Mail( $arrMail="", $subject="", $content="" )
    {
        // as array allways
        //
        $arrMail = is_array($arrMail)? $arrMail : [ $arrMail ];


        // send 1 or many mails in batch
        //
        foreach( $arrMail as $item ){

            // concat the header mime type
            //
            $header = "MIME-Version: 1.0\r\n"
                . "Content-type: text/html; charset=UTF-8\r\n"
                ////. "To: $item\r\n"
                . "From: $this->sign <$this->from>\r\n"      // Signature <dest>
                . ( (!$this->cc)? "" : "Cc: $this->cc\r\n")  // when CC exists
                . "X-Mailer: PHP/" . phpversion();


            $res = mail( $item, $subject, $content, $header, "-f ".$this->from );
        }

        if( ! $res )
            $this->errMsg = "LxMail: it wasn't sent";
    }


    /*
    //-------------------------------------------------------------------------
    // demo stand alone
    //-------------------------------------------------------------------------
    public function sender()
    {
        //Create a new PHPMailer instance
        $mail = new PHPMailer;

        $mail->isSMTP();
        // Enable SMTP debugging
        // SMTP::DEBUG_OFF = off (for production use)
        // SMTP::DEBUG_CLIENT = client messages
        // SMTP::DEBUG_SERVER = client and server messages

        $mail->SMTPDebug = SMTP::DEBUG_SERVER;
        ///$mail->SMTPDebug = SMTP::DEBUG_OFF;

        $mail->Host = 'mail.coespepuno.pe';
        $mail->Port = 25;
        $mail->SMTPAuth = true;
        $mail->Username = 'informes@coespepuno.pe';
        $mail->Password = 'osucasaire_41';

        $mail->setFrom('informes@coespepuno.pe', 'COESPE CR Puno');
        //$mail->addReplyTo('replyto@example.com', 'First Last');

        // 1 or N to Batch Send;
        $mail->addAddress('rplm.mx@gmail.com');
        $mail->addAddress('drope_mx@hotmail.com');

        $mail->Subject = 'Depurando';
        $mail->msgHTML( "<h1>Hola</h1> Desde la API LxMail depurada" );
        $mail->AltBody = 'This is a plain-text message body';
        //Attach an image file
        //$mail->addAttachment('includes/img/coespe.jpg');

        if (!$mail->send()) {
            echo 'Mailer Error: ' . $mail->ErrorInfo;
        } else {
            echo 'Message sent!';
        }
    }
    */
}