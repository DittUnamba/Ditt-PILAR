// #
// # VRI - Universidad Nacional del Altiplano - Puno 2020
// # Ing. Ramiro Pedro, Ing. Fred Torres, Ing. Julio Tisnado
// #

function lodPanel(id,ctrl)
{
	jVRI("#"+id).html("<b>Cargando...</b>");
	jVRI("#"+id).load(ctrl);
}

function lodPanelFrm( id, urlx, sndfrm )
{
    jVRI('#'+id).html( "Cargando..." );
    jVRI('#'+id).load( urlx, new FormData(sndfrm) );
    return false;
}

function feedDiv(lin)
{
	jVRI("#tlin").html( "..." );
	jVRI.ajax({
		url : "docentes/saveLin/"+lin,
        dataType: 'json',
		success : function (response) {
            
			var datos = JSON.parse(response);
            if (datos.msj_error == 'true') {
                
                // Si no hay errores, agregar la fila a la tabla
                var $tableBody = $('#tblLinea tbody');
                $tableBody.append(datos.fila);
            }
            else
            {
                $('#mensaje_error').text(datos.msj_error);
            }
		}
	});
}
function deleteLin(idLin){
    jVRI.ajax({
		url : "docentes/deleteLin/"+idLin,
        dataType: 'json',
		success : function (response) {
            var datos = JSON.parse(response);
            console.log('#'+datos.idLin,datos.msj);
            if (datos.msj == 'true') {
                $('#'+datos.idLin).remove();
            }
            else{
                $('#mensaje_error').text('ocurrio un error en el servidor, vuela a intentarlo');
            }

		}
	});

}

function loadCorrs( ulink, idt )
{
	// screen.height :: desktop size
	alt = window.innerHeight - 120;

	jVRI("#vwCorrs").html("VRI: Indexando correcciones...");
	jVRI("#vwCorrs").load( ulink +"/"+ idt +"/"+ alt );
	$('#dlgCorrs').modal( {backdrop: 'static', keyboard: false} );
}

function grabCorrs()
{
	jVRI("#lisCorr").html( "Indexando..." );
	jVRI("#lisCorr").load( "docentes/corrGraba", new FormData(frmkrs) );
    jVRI("#korec").val("");
}

function closeDlg(url)
{
	$('#dlgCorrs').modal("hide");
	lodPanel( 'panelView', url );
}

function grabEvent( type, level )
{
	jVRI("#lisPan").html("<b>Procesando...</b>");
	jVRI.ajax({
		url : ("docentes/grabEvent/"+type+"/"+level),
		success : function(arg)
		{
			jVRI("#lisPan").html( arg );
		}
	});
}


function contarwords() {

    $("#resumen").on('keyup', function() {
        var words = this.value.match(/\S+/g).length;
        if (words > 150) {

            var trimmed = $(this).val().split(/\s+/, 150).join(" ");
            // Add a space at the end to keep new typing making new words
            $(this).val(trimmed + " ");
        }
        else {
            $('#display_count').text(words);
            $('#word_left').text(150-words);
        }
    });
}

function grabaLaspau()
{
    $("#plock").show();

    jVRI.ajax({
        url : "docentes/execPostulaLaspau/",
        data : new FormData(form3mt),
        success : function( arg )
        {
            $("#plock").hide();
            $('#plops').html(arg);
        }
    });
}
// EOF
