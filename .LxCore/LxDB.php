<?php

namespace LxCore;
/************************************************************************
*  Lightning XR - 2022
*  Dockable design 4S
*
*  Designed by: Ramiro Pedro Laura Murillo
*               Doctor in Computer Science
*               Master Degree in Informatics
*               Universidad Nacional del Altiplano
*
*  Module : LxDB
*  Native : php7.2+
*
************************************************************************/


// MySQLi
//
if( $config["iDRIVER"] == "mysqli" )
{
    include_once( "drvmysql.php" );
}
else  // ::PDO
{
    include_once( "drvpdo.php" );
}
// endif


// LxModels will be defined here... any over DB engine selected
//
class LxModel extends LxDB
{
    protected $table;

    protected $res;
    protected $row;
    protected $ind;

    public $Filter = "";
    public $EOF    = false;


    public function result()
    {
        // overwrite the original
        if( $this->res == null )
            $this->First();

        return $this->res;
    }

    public function First()
    {
        $this->ind = 0;

        // echo "<br> $this->table, $this->Filter <br>";

        $tbl = $this->getTable( $this->table, $this->Filter );
        $this->res = $tbl->result();
    }

    public function Next()
    {
        $this->ind++;

        if( $this->ind >= count($this->res)  ){
            $this->EOF = true;
        }
    }

    public function Row()
    {
        if( $this->res == null )
            $this->First();

        return $this->row = $this->res[ $this->ind ];
    }
}

class LxTable extends LxModel
{
    public function __construct( $tableName="" )
    {
        parent::__construct();
        $this->table = $tableName;
    }
}

?>