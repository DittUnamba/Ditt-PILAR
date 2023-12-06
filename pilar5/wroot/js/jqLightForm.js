/*************************************************************************
 *  Area de funciones compactas AJAX [ v 0.64.b ] // 01-03-2020
 *
 *  Desarrollado por :
 *     Ramiro Pedro Laura Murillo
 *     Doctor en Ciencias de la Computación
 *
 *************************************************************************/
imgWait = "<center><img width=46 src='/public/img/wait.gif'>";


function LxJQ( dvShow, urlx, idFrm )
{
    $( dvShow ).html( imgWait );
    if( ! idFrm )
        $( dvShow ).load( urlx );
    else
        $( dvShow ).post( urlx, $(idFrm).serialize() );
    return false;
}

//----------------------------------------------------------------------
// generica para los form submit
//----------------------------------------------------------------------
$(document).on('submit','.jqSubmit', function(e) {

    dtaUrlx = $(this).data("target");
    dtaShow = $(this).data("destiny");
    dtaHook = $(this).data("hook");
    dtaForm = $(this).serialize();

    $( dtaShow ).html( imgWait );

    $.ajax({
        type : "POST",
        url  : dtaUrlx,
        data : dtaForm,
        success: function( res ){
            $( dtaShow ).html( res );
            $( dtaShow ).fadeIn();
            if( dtaHook ) window[dtaHook](res);
        }
    });

    e.preventDefault();
});

//----------------------------------------------------------------------
$(document).on('click','.jqSend', function(e) {
    // this de Button
    dtaUrlx = $(this).data("target");
    divShow = $(this).data("destiny");
    dtaHook = $(this).data("hook");
    dtaData = $(this).data("data");
    dtaForm = $(this).data("form"); // object form
    argSend = dtaForm? $(dtaForm).serialize() : dtaData;
    $( divShow ).html( imgWait );

    $.ajax({
        type : "POST",
        url  : dtaUrlx,
        data : argSend,
        success: function( res ){
            $( divShow ).html( res );
            $( divShow ).fadeIn();
            if( dtaHook ) window[dtaHook](res);
        }
    });

    e.preventDefault();
});

//-- EOF