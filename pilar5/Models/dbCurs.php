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


class dbCurs extends LxDB {

    public function __construct()
    {
        parent::__construct();
        $this->SetDB( "vriunap_ecursos" );
    }

    public function Get()
    {
        ;
    }
}

