<?php if( !defined('LX_COREDIR') ) exit('LxCore is not present');
/************************************************************************
 *
 *  Module : Lx Mailer at -f only works over cpanel - for smtp phpmailer
 *
 ************************************************************************/


class Email {

    protected  $errMsg;

    protected  $cc   = null;
    protected  $bcc  = null;
    protected  $dest = null;
    protected  $from = "admin@vriunap.pe";
    protected  $sign = "Correo Electrónico";
    protected  $content = null;
    protected  $subject = null;
    //--------------------------------------------------------
    public function __construct()
    {
    }
    //--------------------------------------------------------
    function initialize( $config )
    {
    }
    //--------------------------------------------------------
    function cc( $arg )   { $this->cc  = $arg;  }
    function bcc( $arg )  { $this->bcc = $arg;  }
    function sign( $arg ) { $this->sign = $arg; }

    function subject( $arg ) { $this->subject = $arg; }
    function message( $arg ) { $this->content = $arg; }

    function to( $arg )   { $this->dest = $arg; }
    function from( $arg ) { $this->from = $arg; }
    //--------------------------------------------------------
    function send( $destiny="", $subject="", $content="" )
    {
        // local replace to send fast e-mail
        //
        if( $destiny )  $this->dest    = $destiny;
        if( $subject )  $this->subject = $subject;
        if( $content )  $this->content = $content;

        // concat the header mime type
        //
        $header = "MIME-Version: 1.0\r\n"
                . "Content-type: text/html; charset=utf-8\r\n"
                . "To: $this->dest\r\n"
                . "From: $this->sign <$this->from>\r\n"      // Signature <dest>
                . ( (!$this->cc)? "" : "Cc: $this->cc\r\n")  // when CC exists
                . "X-Mailer: PHP/" . phpversion();

        //
        // when BCC exists we iterate it
        //
        if( is_array($this->bcc) )
        {
            foreach( $this->bcc as $item )
            {
                $res = mail( $item, $this->subject, $this->content, $header, "-f ".$this->from );
            }
        }
        else
            $res = mail( $this->dest, $this->subject, $this->content, $header, "-f ".$this->from );

        if( ! $res )
            $this->errMsg = "LxMail: it wasn't sent";
    }

    //--------------------------------------------------------
    // legacy code from  rpedrolm
    //--------------------------------------------------------
    function sendNative( $dest, $subject, $content )
    {
        $from = "postmaster@myserver.pe";
        $sign = "LxMVC Mailer";
        // protocol: mail
        $headers = "MIME-Version: 1.0\r\n"
                 . "Content-type: text/html; "
                 . "charset=utf-8\r\n"
                 . "To: $dest\r\n"
                 . "From: $sign <$from>\r\n"
                 . "X-Mailer: PHP/" . phpversion();

        return mail( $dest, $subject, $content, $headers, "-f ".$from );
    }
}

?>