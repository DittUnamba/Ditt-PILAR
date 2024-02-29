// #
// # VRI - Universidad Nacional del Altiplano - Puno 2020
// # Ing. Ramiro Pedro, Ing. Fred Torres, Ing. Julio Tisnado
// #

function jsMdlSorteo(url,num){
	jVRI("#mdlContCord").html(" ");
	$("#cordModal").modal("show");
	jVRI("#mdlContCord").load(url+"/"+num);
    // jVRI("#cntSor").load(url+"/"+num);
}


function jsMdlAccesitario(val,tipo){
    
	jVRI("#mdlContCord").html(" ");
	$("#cordModal").modal("show");
	jVRI("#mdlContCord").load("cordinads/execAccesitario/"+val+"/"+tipo);
}
function updateAccesitario(id){
    var idDocente = document.getElementById("idDocente").value;
    var motivo = document.getElementById("motivo").value;
    if (idDocente === ""|| motivo ==="")
    {
        $('#mensaje_error').text("registre toda la información solicitada");
        // Evita que el formulario se envíe
    }
            
    else{
        dita = new FormData(formAccesitario);    
        jVRI.ajax({
            url  : "cordinads/updateAccesitario/"+id,
            data :  dita,
            type: 'GET',
            dataType: 'json',
            success: function( response )
            {
                var datos = JSON.parse(response);

                $("#mdlAccesitario").html( "<div>" + datos.cod_tramite + "</div><div>" + datos.memo_curricular + "</div><div>" + datos.mensaje_correos + "</div>");
                if(datos.tipo == 1)
                $("#panelCord").load("cordinads/vwProy2018");
                
                else
                $("#panelCord").load("cordinads/borradores");

                ("#btn_guardar").css("display", "none");
            }
        });
    }
    
}

function verificarCorreciones(id){
    var idSeleccionado = $('#idDocente').val(); 

    if(idSeleccionado != ""){
            
        jVRI.ajax({
            url  : 'cordinads/verificarCorreciones/' + id + '/' + idSeleccionado,
            success: function(response) {
                $('#mensaje').html(response);
            },
        });
    }
    else
    {
        $('#mensaje').html('');
    }
}

function popSaveSort(id){
    dita = new FormData(sorT);
   
    jVRI.ajax({
        url  : "cordinads/inDoSorteo/"+id,
        data :  dita,
        success: function( arg )
        {
          $("#sortis").html( arg );
          $("#panelCord").load("cordinads/vwProy2018");
        }
    });
}

function enableSave() {
   if( $("#linC").is(":checked")&& $("#directC").is(":checked")&& $("#cumpleC").is(":checked")&& $("#aceptoC").is(":checked")){
        $("#modal-btn-si").removeAttr('disabled');
    }
        else{
        $("#modal-btn-si").attr("disabled","disabled");
      }
}