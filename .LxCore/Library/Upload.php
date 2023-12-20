<?php if( !defined('LX_COREDIR') ) exit('LxCore is not present');
/************************************************************************
 *
 *  Module : Lx fast file Upload
 *
 ************************************************************************/


/*
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
}
*/

class Upload {

	protected $file = null;
	protected $error = null;
	public $FileName = null;


    public function __construct()
    {
        //parent::__construct();
    }

	public function Error()
	{
		return $this->error;
	}

	public function setFile( $hFile )
	{
		$this->file = $hFile;
	}

	public function getFile()
	{
		return $_FILES[ $this->file ];
	}

	public function Atached( )
	{
		if( $_FILES[ $this->file ]["size"] > 0 )
			return true;

		return false;
	}

    public function Exec( $config=null )
    {
        if( !$config ) {
            echo "Arguments are missing";
            return;
        }

        $ctrlName = $config['ctrlname'];
        $tempName = $_FILES[$ctrlName]["tmp_name"];

        // 1. extension types allowed
        $this->setFile( $_FILES[$ctrlName]["name"] );

        $ext = pathinfo( $_FILES[$ctrlName]["name"], PATHINFO_EXTENSION );
        $exts = explode( "|", $config['allowed'] );

        if( ! in_array( $ext, $exts ) ){
            echo "This kind of files aren't allowed";
            return;
        }

        // 2. upload and rename if requires
        if( $config["newname"] )
            $fullDest = $config["pathdest"] ."/". $config['newname'];
        else
            $fullDest = $config["pathdest"] ."/". $_FILES[$ctrlName]["name"];

		// 3. move to destiny folder
		if ( is_uploaded_file($tempName) ) {
			copy( $tempName, $fullDest );
			return true;
		}

        return false;
    }
}
