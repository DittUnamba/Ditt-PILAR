<?php

namespace LxCore;
/************************************************************************
 *
 *  Module : MySQLi driver
 *
 ************************************************************************/


class LxDB {

    protected  $objResult = null;
    protected  $numRows   = 0;
    protected  $dbName    = null;


    public function __construct()
    {
        // echo " + LxDB :: MySQLi";
        // $this->config = & mlLoadConfig();
    }

    public function SetDB( $db, $user="", $pass="", $host="" )
    {
        //global $config;

        //$config["DB_NAME"] = $db;
        //$config["iSERVER"] = $server;
        //$config["DB_USER"] = $user;
        //$config["DB_PASS"] = $pass;

        $this->dbName = $db;
    }

    public function Connect( $server, $db, $user, $pass )
    {
        global $config;

        $config["iDRIVER"] = "mysqli";
        $config["iSERVER"] = $server;
        $config["DB_USER"] = $user;
        $config["DB_PASS"] = $pass;
        $config["DB_NAME"] = $db;
    }

    private function getConnection()
    {
        $config = & mlLoadConfig();

        if( ! $this->dbName )
            $this->dbName = $config["DB_NAME"];  //dbName;

        $server = $config["iSERVER"];  //dbServer;
        $dbName = $this->dbName;
        $dbUser = $config["DB_USER"];  //dbUser;
        $dbPass = $config["DB_PASS"];  //dbPass;

        $mysqli = new \mysqli( $server, $dbUser, $dbPass, $dbName);
        if ($mysqli->connect_errno) {
            echo "LxDBi::Error >> " . $mysqli->connect_errno . " :: " . $mysqli->connect_error;
            return null;
        }

        $mysqli->set_charset('utf8');

        return $mysqli;
    }

    public function result()
    {
        if( !$this->numRows )
            return json_decode( "[]" );

        return $this->objResult;
    }

    public function resultArray()
    {

    }

    public function NumRows()
    {
        return $this->numRows;
    }

    public function RowsCount()
    {
        return $this->numRows;
    }

    public function GetRowi( $idx=0 )
    {
        return $this->objResult[ $idx ];
    }

    public function GetField( $table, $field, $filter="" )
    {
        $conn = $this->getConnection();
        if( !$conn ) return null;

        $query = (!$filter)? "" : "WHERE $filter";
        $stmet = $this->doResult( $conn, "SELECT * FROM $table $query LIMIT 1" );

        $row = $stmet->fetch_assoc();
        return $row[ $field ];
    }

    public function GetRow( $table, $filter="", $filterEx="" )
    {
        $obj = $this->getTable( $table, $filter, $filterEx );
        if( !$obj or !$obj->numRows ) return null;

        return $obj->objResult[0];
    }

    public function GetView( $table, $filter="", $extra="" )
    {
        return $this->getTable($table, $filter, $extra);
    }

    private function doResult( $conn, $query )
    {
        $result = $conn->query( $query );
        if( !$result )
            echo ">> LxDBi Error: ".mysqli_error($conn);

        //$result = mysqli_query($conn, $query ) or
        //    die(">> LxDBi Error: ".mysqli_error($conn) );

        return $result;
    }

    public function Query( $query )
    {
        $conn = $this->getConnection();
        if( !$conn ) return null;

        $result = $this->doResult( $conn, $query );
        if( !$result ) return null;

        $temp  = new LxDB();
        $temp->numRows = 0;
        $temp->objResult = array();

        while ( $row = $result->fetch_object() ) {
            $temp->objResult[] = $row;
            $temp->numRows++;
        }
        $result->close();

        return $temp;
    }

    public function getTable( $table, $filter="", $extra="" )
    {
        // $conn = $this->getConnection();
        // if( !$conn ) return null;

        // vers mar 2020
        if    ( !$filter && !$extra ) $query = "";
        elseif( !$filter && $extra )  $query = "WHERE 1 $extra";
        else                          $query = "WHERE $filter $extra";

        return $this->Query( "SELECT * FROM $table $query" );
    }

    public function Update( $table, $arrArgs, $arrCond )
    {
        $conn = $this->getConnection();
        if( !$conn ) return;

        $args = "";
        $cond = "";
        $vals = array();

        foreach ( $arrArgs as $key => $val ) {
            $args .= (!$args)? "$key='$val'" : ", $key='$val'";
        }

        if( ! $arrCond ){
            return;
        }

        if( ! is_array($arrCond) ) {
            $cond = "$arrCond"; // casting to string
        } else {
            foreach ( $arrCond as $key => $val ) {
                $cond .= (!$cond)? "$key='$val'" : " AND $key='$val'";
            } }

        $this->doResult( $conn, "UPDATE $table SET $args WHERE $cond" );
    }

    public function Delete( $table, $arrCond )
    {
        $conn = $this->getConnection();
        if( !$conn ) return;

        $cond = "";
        if( ! is_array($arrCond) ) {
            $cond = "$arrCond"; // casting to string
        } else {
            foreach ( $arrCond as $key => $val ) {
                $cond .= (!$cond)? "$key='$val'" : " AND $key='$val'";
            } }


        $this->doResult( $conn, "DELETE FROM $table WHERE $cond" );
    }

    public function Insert( $table, $arrArgs )
    {
        $conn = $this->getConnection();
        if( !$conn ) return;

        $keys = "";
        $vals = "";
        foreach ( $arrArgs as $key => $val ) {
            $keys .= (!$keys)? "$key" : ", $key";
            $vals .= (!$vals)? "'$val'" : ", '$val'";
        }

        $this->doResult( $conn, "INSERT INTO $table ( $keys ) VALUES ( $vals );" );

        return $conn->insert_id;
    }
}

?>