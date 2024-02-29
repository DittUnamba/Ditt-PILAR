<?php
    $IdCarrera=mlGetGlobalVar("IdCarrera");
    $Carrera=$this->dbRepo->getOneField("dicCarreras","Nombre","Id=$IdCarrera");
    if (!$IdCarrera) {
    	$Carrera="No se ha seleccionado ninguna escuela profesional.";
	}
	$Opciones="";
?>
<h3>Informes de Tesis :: <small><?php  echo $Carrera; ?></small></h3>
<div class="col-md-12">
	<h4>Listado de Informes de Tesis</h4>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th width="5%">#</th>
				<th width="15%" align="center">Código</th>
				<th width="">Fecha</th>
				<th width="" align="center">Estado</th>
				<th width="">Titulo</th>
				<th width="" align="center">Revisiones</th>
				<th width="20%" align="center">Opciones</th>
			</tr>
		</thead>
		<tbody>
		<?php 
			$pyts=$this->dbPilar->getTable("tesTramites","IdCarrera='$IdCarrera' AND  Tipo='2' ORDER BY Estado DESC");
			$i=1; 
			$sess = $this->gensession->GetSessionData(PILAR_CORDIS);
			$tipo = 2;
			foreach($pyts->result() as $row){
				$rowi=$this->dbPilar->getSnapRow("tesTramsDet","IdTramite=$row->Id ORDER BY Iteracion DESC");
				$accesitario = $this->dbPilar->getSnapRow("tesJuCambios","IdTramite='$row->Id' AND IteracionAccesitario>0"); 
				switch ($row->Estado) {
					case 10:
						if($sess->userLevel==3)
							(!$accesitario)? $opt = "  <a href='javascript:void(0)'onclick='jsMdlAccesitario($row->Id,$tipo)'class='btn btn-warning btn-xs'>Accesitario</a>": $opt="<a href='".base_url("pilar/Cordinads/memosGen/$row->Id")."' target=_blank class='btn btn-info btn-xs'>Memo accesitario</a>";
						
						else 
						$opt ="";

						$estado="Presento Documentos";
						break;
					case 11:
						if($sess->userLevel==3)
							(!$accesitario)? $opt = "  <a href='javascript:void(0)'onclick='jsMdlAccesitario($row->Id,$tipo)'class='btn btn-warning btn-xs'>Accesitario</a>": $opt="<a href='".base_url("pilar/Cordinads/memosGen/$row->Id")."' target=_blank class='btn btn-info btn-xs'>Memo accesitario</a>";
						
						else 
						$opt ="";
					
						$estado="Revisión de Formato";
						break;
					case 12:
						$days=mlDiasTranscHoy($row->FechModif);
						$opt1="<a href='javascript:void(0)' onclick=\"jsLoadModalCord($row->Id,'cordinads/vwBorradoresMemos/')\" class='btn btn-info btn-xs'> [$days] Memo</a>";
						// Recibir Ejemplares [Temporalmente Desactivado]
						// $opt2="<a href='javascript:void(0)' onclick=\"jsLoadModalCord($row->Id,'cordinads/vwRecibirEjemplares/')\" class='btn btn-warning btn-xs btn-opt'>Recibir 4 Ejemplares [$days]</a>";
						$opt2="";
						// Solo si ya pasó mas de 10 días recibe Ejemplares
						if ($rowi->vb1==1 AND $rowi->vb2==1 AND $rowi->vb3==1 ) {
								$opt="$opt1 $opt2";
						}else{
							if($days>=11){
								$opt="$opt1 $opt2";
							}
							else{
								$opt="$opt1";
							}
						}
						if($sess->userLevel==3)
							(!$accesitario)? $opt = "  <a href='javascript:void(0)'onclick='jsMdlAccesitario($row->Id,$tipo)'class='btn btn-warning btn-xs'>Accesitario</a>": $opt="<a href='".base_url("pilar/Cordinads/memosGen/$row->Id")."' target=_blank class='btn btn-info btn-xs'>Memo accesitario</a>";
						
						else 
						$opt ="";
					
						$estado="Revisión por Jurados";
						break;
					case 13:
						$opt="<a href='javascript:void(0)' onclick=\"jsLoadModalCord($row->Id,'cordinads/vwBorradoresMemos/')\" class='btn btn-info btn-xs '>Memo</a>";
						$estado="Citación A Reunión Presencial";
						break;
					case 14:
						$opt="";
						$estado="Archivo Final";
						break;
					default:
						$opt="";
						$estado=" Eroor.....! Comunicar!";
						break;
				}
				if($row->Estado>=10){
				echo "<tr>
						<td align='center'>$i</td>
						<td align='center' style='font-size:18px;'><a href='javascript:void(0)' 
						onclick=\"jsLoadModalCord($row->Id,'cordinads/vwInfo/')\">$row->Codigo</a> </td>
						<td align='center'> ",substr($row->FechModif, 0,10)." </td>
						<td align='center'>$estado</td>
						<td style='font-size:10px;' class='title-py'>$rowi->Titulo</td>
						<td align='center'>$rowi->Iteracion[ $rowi->vb1 / $rowi->vb2 / $rowi->vb3 ] </td>
						<td align='center'>
							$opt
						</td>
					  </tr>";
				$i++;
				}
			}  
		?>
		</tbody>
	</table>
</div>