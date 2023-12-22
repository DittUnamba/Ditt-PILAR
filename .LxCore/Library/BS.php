<?php
/************************************************************************
 *
 *  Module : Boostrap module addons
 *
 ************************************************************************/


class BS {

    public $cont = 0;

	public function opa()
	{
		return "Boostrap :: 5+";
	}
    /*
    public function AddTable( $style="font-size: 11px" )
    {
        $this->cont = 0;
        echo "<table class='table table-striped table-bordered' style='$style'>";
    }
    */
    public function AddTable( $style="font-size: 12px", $padding="0.35rem" )
    {
        $this->cont = 0;

        echo "<style>
        .table>tbody>tr>td,.table>tbody>tr>th,.table>tfoot>tr>td,.table>tfoot>tr>th,.table>thead>tr>td,.table>thead>tr>th {
            padding: $padding; border-top: 0;
        }</style>";

        echo "<table class='table table-striped table-bordered' style='$style'>";
    }

    public function EndTable()
    {
        echo "</table>";
    }

    public function AddTH( $arrItems, $percWi=[0,0,0,0,0,0,0,0,0,0] )
    {
        echo "<tr>"; $i=0;
        foreach( $arrItems as $item ){
            echo "<th width=$percWi[$i]> $item </th>";
            $i++;
        }
        echo "</tr>";
    }

    public function AddTR( $arrItems )
    {
        $this->cont++;

        echo "<tr>";
        foreach( $arrItems as $item ){

            if( $item == "#" )
                $item = "<center><b>$this->cont</b></center>";

            echo "<td> $item </td>";
        }
        echo "</tr>";
    }

    public function Alert( $msg, $type="info" )
    {
        echo "<div class='alert alert-$type p-2 mb-2'>";
        echo "<center> $msg </center>";
        echo "</div>";
    }

    // Dialog
    public function Message( $msg, $btn="ACEPTAR" )
    {
        echo "<center>";
        echo "<div class='shadow card col-md-6'>";
        echo " <div class='card-body'>";
        echo    $msg;
        echo " </div>";
        echo " <div class='card-footer'>";
        echo "  <a href='' class='btn btn-outline-primary btn-sm'> <i class='fa fa-check'></i> $btn </a>";
        echo " </div>";
        echo "</div>";
        echo "</center>";
    }
}