<?php
/************************************************************************
 *
 *  Lightning-X - PMVC Framework  (2020)
 *
 *  Developer : Ramiro Pedro Laura Murillo
 *              Doctor in Computer Science
 *              Master Degree in Informatics
 *              Universidad Nacional del Altiplano - Puno
 *
 *  Module : Demo DB base, can be made as inheritance mode
 *
 ************************************************************************/

use LxCore\LxDB;
use LxCore\LxModel;
use LxCore\LxTable;


class dbConc extends LxDB {

    public function __construct()
    {
        parent::__construct();
        // $this->SetDB( "new_db" );
    }

    public function GetSis( $sis=null )
    {
        if( ! $sis )
            return $this->GetRow("gSistemas", "Activo=1");

        return $this->GetRow("gSistemas", "Id=$sis");
    }

    public function GetConfig( $IdSis=1 )
    {
        // convocatoria actual del sistema indicado
        //
        return $this->GetRow( "gConvocas", "IdSis = $IdSis", "ORDER BY Id DESC" );
    }

    public function Alumno( $IdProy )
    {
        if( !$IdProy ) return "";

        $alm = $this->GetRow( "posInscritos", "IdProy = $IdProy" );
        return "$alm->Apellidos $alm->Nombres";
    }

    public function CriterByProy( $IdProy )
    {
        $proy = $this->GetRow( "posProyecs", "Id = $IdProy" );
        $sist = $this->GetSis( $proy->IdSis );
        return $this->GetTable( "posCriterios", "TipoCriter=$sist->TipoCriter" );
    }
}

class ModelConvocs extends LxModel
{
    protected $table = 'gConvocas';
}


/*
CREATE VIEW vxRSumUnids AS
SELECT U.Id, U.Estado, U.IMEI, U.Placa, U.Asientos,
       U.Anio, U.Chofer, SUM(C.Valor) AS Suma
  FROM rbUnidades AS U,
       rbCobros   AS C
 WHERE U.IMEI = C.IMEI

CREATE VIEW vxRSumUnidsDia AS
SELECT U.Id, U.Estado, U.IMEI, U.Placa,
       DATE(C.Fecha) As FechaDia, SUM(C.Valor) AS GanDia
  FROM rbUnidades AS U,
       rbCobros   AS C
 WHERE U.IMEI = C.IMEI
 GROUP BY DATE(C.Fecha)
*/