<?php

namespace LxCore;

// Display only errors & warnings without notices
//
ini_set( 'display_errors', 1 );
error_reporting( E_ERROR | E_WARNING | E_PARSE ); //| E_NOTICE );


// initial locator Paths
//
//define( "LX_APPDIR",   $appDir );
define( "LX_COREDIR",   $LxCoreDir );
define( "LX_WEBDIR",    $LxResDir  );
define( "LX_VENDORDIR", $LxCoreDir . "/Thirds" );


//-------------------------------------------------------------------
// Base clase Renders
//-------------------------------------------------------------------
class LxBase{

    public function GetURL_old()
    {
        $url = null;
        if( isset( $_GET["url"] ) )
        {
            $url = $_GET["url"];
            //$url = rtrim($url);
            //$url = filter_var( urldecode($url),FILTER_SANITIZE_URL);
            $url = explode( '/', $url );
        }
        return $url;
    }

    public function GetURL()
    {
        // filter_var( urldecode($url),FILTER_SANITIZE_URL);

        $url = explode( '/', $_SERVER['REQUEST_URI'] );
        $dir = explode( '/', getcwd() );
        $new = null;

        for( $i=0; $i<sizeof($url) ; $i++ ){
            if( $url[$i] == $dir[sizeof($dir) - 1] ){

                for( ; $i<sizeof($url)-1; $i++ )
                    $new[] = $url[$i + 1];

                // fin aqui
                return $new;
            }
        }

        // cuando esta en / solo quitar [0]
        $url = array_slice( $url, 1 );
        return $url;
    }

    public function innView( $viewFile, $arrVars=NULL )
    {
        //echo $viewFile;

        // release & merge variables in here
        //
        if ( !file_exists($viewFile) ) {
            mlError( "Warning", "Template file '$viewFile' is not present." );
            return;
        }
        if ( is_array($arrVars) ) {
            // load in instance each itemArr as new $var
            extract( $arrVars );
        }
        include_once( $viewFile );
    }

    protected function inLoadClass( $classPath, $className )
    {
        if( ! file_exists($classPath) ) {
            mlError( "Error", "Class $className not found." );
            return null;
        }
        include_once($classPath);
        return  (new $className);
        // return  &(new $fileClass);  // por instancia tipo CI
    }

    // Dependencies Injection
    protected function setNewMember( $strAttribute, $mixValue )
    {
        // be carefull with null vars
        if( !$mixValue ) return;

        // add into instance area
        $this->{ $strAttribute } = $mixValue;
        $this->{ strtolower($strAttribute) } = $mixValue;
    }
}



//-------------------------------------------------------------------
// LxController class definitios
//-------------------------------------------------------------------
class LxController extends LxBase{

    //public function LxController()
    function __construct()
    {
        ;
    }

    public function Layout( $mainFile, $fileLayout, $args=null )
    {
        // $this->loadView( "web/webIndex", [
        $this->View( $mainFile, [
            'inLayout' => $fileLayout,
            'inArgs'   => $args
        ] );
    }

    // loadables by levels
    //------------------------------------------------------------
    // 1. Local dir   (Controller, View, Libs)
    // 2. Global dir  (Controller, View, Libs)
    //------------------------------------------------------------
    //
    public function View( $fileBase, $args=null )
    {
        /*
        $path = './' .LX_APPDIR. '/Views/' . $fileBase;
        /// $path = './' .LX_APPDIR. '/views/' . $fileCode;
        $file = $path . ".php";
        */

        $path = './Views/' . $fileBase;
        $file = $path . ".php";
        if( !file_exists($file) ){

            $file = LX_COREDIR . '/Views/' . $fileBase . '.php';
        }

        /* // por ahora no htmls
        //
        if( ! file_exists($file) ){
            $file = LX_COREDIR . '/Views/' . $className . '.php';
            $file = $path . ".html";
        }*/

        //echo $file;

        if( ! file_exists($file) ) {
            //mlShowError( "LXAPP: view $fileCode not defined." );
            mlError( "Warning", "View Template file '$fileBase' is not present." );
            return;
        }

        $this->innView( $file, $args );
    }

    public function KView( $viewFile, $args=null )
    {
        $this->KRender( $viewFile, $args );
    }

    public function KRender( $viewFile, $args=null )
    {
        // B1-66ER  Lx - VRender

        $inmypath = './Views/' . $viewFile . ".php";

        if( ! file_exists($inmypath) ){

            $inmypath = null;
            $rootpath = LX_COREDIR . '/Views/' . $viewFile . '.php';
        }

        $fileTplt = $inmypath? $inmypath : $rootpath;
        $fileRend = './Views/.rend/' . str_replace("/", ".", $viewFile) . '.php';

        // no existe o hay modificaciones en el {{}} --> re-compilar
        //
        if( file_exists($fileRend)==false || filemtime( $fileTplt ) > filemtime( $fileRend ) ){

            $buff = mlKatana( $fileTplt );
            file_put_contents( $fileRend, $buff );
        }

        $this->innView( $fileRend, $args );
    }

    public function Model( $className )
    {
        ///$file = './' .LX_APPDIR. '/Models/' . $className . '.php';

        $file = './Models/' . $className . '.php';
        if( !file_exists($file) ){

            $file = LX_COREDIR . '/Models/' . $className . '.php';
        }

        $clase = $this->inLoadClass( $file, $className );
        $this->setNewMember( $className, $clase );
    }

    // look into CORE after that in App
    public function Library( $className )
    {
        /*
        $file = './' .LX_COREDIR. '/' . $className . '.php';
        if( ! file_exists($file) )
            $file = './' .LX_APPDIR. '/Library/' . $className . '.php';
        */

        $file = './Library/' . $className . '.php';
        if( !file_exists($file) ){

            $file = LX_COREDIR . '/Library/' . $className . '.php';
        }

        $clase = $this->inLoadClass( $file, $className );
        $this->setNewMember( $className, $clase );
    }
};





//-------------------------------------------------------------------
// LxApp for PMVC Framework
//-------------------------------------------------------------------
class LxApp extends LxBase {

    protected $appController = "Web";
    protected $appMethod     = "Index";
    protected $appArgs       = [];

    protected $spaBaseFile   = "";


    private function doRouting()
    {
        // args from .htaccess = index.php/$i
        $url = $this->GetURL();

        // short routes from user
        $route = mlLoadRoutes();

        // any time just one CALL
        //
        if( $route )
        foreach( $route as $itm=>$val ){
            // echo "<br> * " . $itm ." = ". $val ;
            if( ("/".$url[0]) == $itm ){

                unset( $url[0] );
                $nov = explode( '/', $val );
                $url = array_merge($nov, $url);
            }
        }
        return $url;
    }

    //
    // do... do call... do call if... do... do call do call if...
    //
    private function doCall( $controller, $method, $arrArgs=array(), $folder=null )
    {
        // parse path & file based on controller's name
        //

        //$path = './' .LX_APPDIR. '/Controllers/';

        //----------
        // 1. local
        //----------
        $path = './Controllers/';
        $file = $path . $controller . ".php";

        // exceptional cases only
        if( $folder )
            $file = $path . "$folder/$controller" . ".php";

        if( !file_exists($file) ){

            //-----------
            // 2. Global
            //-----------
            $path = LX_COREDIR . '/Controllers/';
            $file = $path . $controller . ".php";

            // exceptional cases only
            if( $folder )
                $file = $path . "$folder/$controller" . ".php";

            // search before process
            if( !file_exists($file) ){

                //echo "NO EXISTE Controller";
                mlError( "Error", "Controller '$controller' is not present." );
                return;
            }
        }


        // load the class and methods to find
        require_once( $file );
        $tmpClass = new $controller;

        // method exists?
        if( ! method_exists($controller, $method) ){

            mlError( "Error", "Method '$method' is not defined." );
            return;
        }

        // finally load method and args
        call_user_func_array(
            [ $tmpClass, $method ], $arrArgs
        );
    }


    // sub aplicaciones acoplables
    //
    public function Run()
    {
        global $LxSubApp;
        global $config;

        $this->appController = $config["Start"];

        // routing and modify path
        $url = $this->doRouting();
        
        /*
        echo "Arg: ";
        print_r( $url );
        echo "<hr>";
        */

        // is DIR verification pre load event
        //
        $folder = null;

        // Local dir sub dirs
        if( is_dir( "./Controllers/".$url[0] ) ){

            $folder = $url[0];
            array_shift( $url );

        // global dir
        } else if( is_dir( LX_COREDIR."/Controllers/".$url[0] ) ){

            $folder = $url[0];
            array_shift( $url );
        }


        // verify controller's name
        //-------------------------------------------------------

        if( $url != null )
            $this->appController = ucwords($url[0]);

            // verify method's name
        if( isset($url[1]) && $url[1]!=null )
            $this->appMethod = ucwords( $url[1] );

        // leave the used block and clear
        unset( $url[0] );
        unset( $url[1] );


        // sanitize Anti XSS/Inject
        $arg = [];
        foreach( $url as $str ){
            $res = mlSanitize($str);
            $arg[] = $res;
        }

        $this->appArgs = array_values( $arg );

        // finally call all SET
        $this->doCall( $this->appController, $this->appMethod, $this->appArgs, $folder );
    }

    /*
     * Extra functions
     */
    public function RunMVC()
    {
        ;
    }

    public function RunSPA()
    {
        $url = $this->doRouting();

        if( $url[0] == null ){

            if( $this->spaBaseFile )
                include( $this->spaBaseFile );
            else
                echo '<div id="App"><small>Renderizando...</small></div>'
                   . '<script src="'.Asset('js/Index.js').'?t='.time().'" type=module></script>'
                   . '<script src="'.Asset('js/LxSpa.b.js').'"></script>'
                   ;

        } else {

            $this->Run();
        }
    }

    public function Template( $file )
    {
        $this->spaBaseFile = "Views/" . $file . ".php";
        //if( !file_exists($file) ){
        //}
    }

    /*
    // borrable
    public function Load( $className )
    {
        global $LxCoreDir;
        // modo 1 /
        //;

        // modo 2 /myapp/
        $classPath = "$LxCoreDir/Library/" . $className . ".php";
        echo ">>[classpath: $classPath]<br>";
        include_once($classPath);

        //return $classPath;
        return  (new $className);
    }*/
}


//---------------------------------------------------------------
//
// Agregar router list
//
//---------------------------------------------------------------

class LxRoutes{


    public function Add( $abrev, $resolve ) // $urlAlias )
    {
        global $routes;
        //return $routes[ $urlAlias ];

        $routes[ $abrev ] = $resolve;
    }
}


///use LxCore\LxRoutes;

$router = new LxRoutes();

if( isset($LxSubApp) == true )
{
    if( file_exists("./Config/Routes.php") )
        include( "./Config/Routes.php" ); // local DIR config
}
else
{
    // Global DIR config
    include( "$LxCoreDir/Config/Routes.php" );
}

//- EOF
