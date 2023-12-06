<?php

namespace LxCore;
/************************************************************************
 *
 *  Module : PDO driver
 *
 ************************************************************************/


class LxDB {

    protected  $objResult = null;
    protected  $numRows   = 0;


    public function __construct()
    {
        // $this->config = & mlLoadConfig();
    }

    public function Connect( $server, $db, $user, $pass )
    {
        global $config;

        $config["iDRIVER"] = "PDO";
        $config["iSERVER"] = $server;
        $config["DB_NAME"] = $db;
        $config["DB_USER"] = $user;
        $config["DB_PASS"] = $pass;
    }

    private function getConnection()
    {
        $config = & mlLoadConfig();

        $server = $config["iSERVER"];  //dbServer;
        $dbName = $config["DB_NAME"];  //dbName;
        $dbUser = $config["DB_USER"];  //dbUser;
        $dbPass = $config["DB_PASS"];  //dbPass;

        try{
            $pdoCon = new \PDO(
                "mysql:host=$server;dbname=$dbName;port=3306",
                $dbUser, $dbPass
            );

            //
            // activamos UTF8 : usar sin conversion PHP
            //
            $pdoCon->exec("SET CHARACTER SET utf8");

        } catch(PDOException $e){
            echo  "<b>LightningX-DB : </b>" . $e->getMessage();
            return null;
        }

        return $pdoCon;
    }

    public function result()
    {
        if( !$this->numRows )
            return json_decode( "[]" );

        return $this->objResult;
    }

    public function numRows()
    {
        return $this->numRows;
    }

    public function getRow( $idx=0 )
    {
        return $this->objResult[ $idx ];
    }

    public function doResult( $conn, $query )
    {
        $conn->setAttribute( \PDO::ATTR_EMULATE_PREPARES,false);
        $stmet = $conn->prepare( $query );

        if ( $stmet == null ) {
            $err = $conn->errorInfo();
            echo ">> LxDB Error (".$err[0].":".$err[1].") : ".$err[2];
            return null;
        }

        $stmet->execute();

        return $stmet;
    }

    public function getOneField( $table, $field, $filter="" )
    {
        $conn = $this->getConnection();
        if( !$conn ) return null;

        $query = (!$filter)? "" : "WHERE $filter";
        $stmet = $this->doResult( $conn, "SELECT * FROM $table $query LIMIT 1" );

        $row = $stmet->fetch( \PDO::FETCH_ASSOC );
        return $row[ $field ];
    }

    public function getSnapRow( $table, $filter="", $filterEx="" )
    {
        $obj = $this->getTable( $table, $filter, $filterEx );
        if( !$obj or !$obj->numRows ) return null;

        return $obj->objResult[0];
    }

    public function getSnapView( $table, $filter="", $extra="" )
    {
        return $this->getTable($table, $filter, $extra);
    }

    public function getTable( $table, $filter="", $extra="" )
    {
        $conn = $this->getConnection();
        if( !$conn ) return null;


        // vers mar 2020
        if    ( !$filter && !$extra ) $query = "";
        elseif( !$filter && $extra )  $query = "WHERE 1 $extra";
        else                          $query = "WHERE $filter $extra";

        return $this->Query( "SELECT * FROM $table $query" );
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

        //while ( $row = $result->fetch_object() ) {
        while ( $row = $result->fetch( \PDO::FETCH_OBJ ) ) {
            $temp->objResult[] = $row;
            $temp->numRows++;
        }

        // $conn->close();
        return $temp;
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
        return $conn->lastInsertId();
    }
}

?>