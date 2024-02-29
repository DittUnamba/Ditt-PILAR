<?php 
$sess = $this->gensession->GetSessionData(PILAR_CORDIS);
	
 ?>
<!-- Modal content-->
<div class="modal-content">

	<?php

	?>
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<center><h3 class="modal-title">Cambiar jurado Evaluador por Accesitario</h3></center>
	</div>
	<div class="modal-body" id='mdlAccesitario'>
		<h5><b>Señor Director,</b> recuerde que toda modificación es bajo su responsabilidad, y con la debida documentación del caso, tomar en cuenta que la prioridad para la cambiar de jurado es para los docentes que no se encuentren habilidatos.</h5>
		<form class="form-horizontal" method="post" id="formAccesitario" name="formAccesitario" >
		
		<fieldset>
			<div class="form-group">
				<div class="col-md-12">
					<h4 class="modal-title">Accesitario: <?php  echo $accesitario->DatosNom ;?></h4>
				</div>
			</div>	
			<input class="form-control" id="tipo" name="tipo" value="<?php  echo $tipo ;?>" style="display: none;"></input>

			<div class="form-group">
				<label class="col-md-3 control-label" >Remplaza a: </label>  
				<div class="col-md-7">
				<select id="idDocente" name="idDocente" class="form-control" onchange="verificarCorreciones(<?php echo $idTram;?>)" required>
					<option value="">Seleccionar docente</option> 
					<?php foreach($doc as $do): ?>
						<?php
							$color = ($do->Activo < 5) ? 'color: red;' : ''; // Establecer el color del texto en rojo si no cumple la condición
							$texto= ($do->Activo < 5) ? ' (NO HABILITADO)' : ' (HABILITADO)'; // Establecer el color del texto en rojo si no cumple la condición
						?>
						<option value="<?php echo $do->Id; ?>"><?php echo $do->DatosNom, $texto; ?></option>
					<?php endforeach; ?> 
				</select>
				</div>
			</div> 
			<div class="form-group">
				<div class="col-md-3"></div>
					<div class="col-md-7" id="mensaje" style="color:orange"></div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="textarea">Motivo</label>
				<div class="col-md-8">                     
					<input class="form-control" id="motivo" name="motivo" placeholder="Justificación del cambio del jurado con el accesitario" required></input>
					<span class="help-block">Ejem. El docente se encuentra con año sabático.</span>  
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-3"></div>
					<div class="col-md-7" id="mensaje_error" style="color:red"></div>
			</div>
			<!-- Button -->
		</fieldset>
		</form>
	</div>
	<div class="modal-footer">
		<div class="form-group">
			<div class="col-md-2">
				<button type="button" id="btn_guardar" class="btn btn-success" onclick="updateAccesitario(<?php echo $idTram;?>)"> <span class="glyphicon glyphicon-send"></span> Guardar</button>
			</div>
			<div class="col-md-8">
			</div>

		</div>
		
	</div>
</div>
<!-- //Modal content-->	