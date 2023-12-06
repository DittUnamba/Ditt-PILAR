//---------------------------------------------------------------
//
//  Light Ajax 2021 - codename [fuck Query]
//
//  * Developed by: Ramiro Pedro Laura Murillo
//  * Modules:  set, get $, ajax DOM request
//  * Last It:  this.class
//
//---------------------------------------------------------------
// History Log
// -----------
//  * Oct 09, 2017 : added function prop()
//  * Mar 09, 2018 : js parsing exec
//  * Mar 31, 2020 : post & get with 'fetch'
//  * Apr 02, 2020 : menu toggle and modals
//
//---------------------------------------------------------------

// autoexecutable functions
//
(function ($) {
	// do something  $  is an argument
})("fuckQuery v.2.0");

//---------------------------------------------------------------
// our JS+DOM Object : goto
//---------------------------------------------------------------
var wait = "/public/img/wait.gif";
var img2 = "<center><img width=20 src='"+wait+"'>";
var img4 = "<center><img width=40 src='"+wait+"'>";
var img6 = "<img width=60 src='"+wait+"'>";
var img8 = "<img width=80 src='"+wait+"'>";


document.addEventListener("DOMContentLoaded", function(event) {
p = document.createElement("p");
document.body.appendChild( p );
p.innerHTML += '<style type="text/css">\
#ajx-over {\
    margin: 0px 0px;\
    top: 0px;\
    left: 0px;\
    width: 100%;\
    height: 100%;\
    color: #FFFFFF;\
    position: fixed;\
    background: rgba(39, 38, 46, 0.60);\
    z-index: 9999;\
}\
.cntLx {\
    position: absolute;\
    vertical-align: middle;\
    top: 40%;\
    left: 50%;\
    margin-top: -15px;\
    margin-left: -15px;\
}\
</style>';
} );
//---------------------------------------------------------------
// Local functions to miscelanies
//---------------------------------------------------------------
function isJson(str)
{
    try {
        JSON.parse(str);
    } catch (e) {
        return false;
    }
    return true;
}

function parseJS(texto)
{
    var str = texto.split( "<script>" );
    var res = str[0];
    for( var i=1; i<str.length; i++ ) {
        var tmp = str[i].split("</script>", 2 );
        res = res + tmp[1];
        if( tmp[0].length )
            eval( tmp[0] );
    }
	return res;
}

function jsonStr( vars )
{
    // in  = { lastname:'Jose', firstname:'Xavier' }
    // out = lastname=jose...
    arr = JSON.stringify( vars );
    str = arr.split(":").toString();
    str = str.replace( "{", "(" );
    str = str.replace( "}", ")");
    arr = eval( 'Array' + str );
    tmp = "";
    for( i=0; i<arr.length; i+=2 ){
        if( tmp ) tmp += "&";
        tmp += arr[i+0] +"="+ arr[i+1];
    }
    return tmp;
}


//---------------------------------------------------------------------
// our JS+DOM Request
//---------------------------------------------------------------------
function privSendRequest( qryFile, argObj, evOnDone, divDest )
{
    // .fetch new JS
    var ajax = new XMLHttpRequest();

    ajax.open( "POST", qryFile, true ); // async: no wait
    if( argObj != "[object FormData]" )
        ajax.setRequestHeader(
            "Content-Type",
            "application/x-www-form-urlencoded"
    );

    // stringURL or FormData
    ajax.send( argObj );
    ajax.onreadystatechange = function() {
        if ( ajax.readyState == 4 ) {
            if( evOnDone != null )
                evOnDone( (ajax.responseText) );
            if( divDest != null )
                divDest.innerHTML = parseJS( ajax.responseText );
        }
    }
}

//---------------------------------------------------------------
// our JS+DOM Object
//---------------------------------------------------------------
function mlObjectDOM( ctrl ) {

    this.control = ctrl;
    //---------------------------------------------
    this.val = function ( arg ) {

        if( arg!=null ) this.control.value = arg;
        else {
            if( this.control == null )
                return 0;

            return this.control.value;
        }
    };

    this.html = function( arg ) {

        this.control.innerHTML = arg;
    };

    this.focus = function(){

        this.control.focus();
    };

    this.change = function( argfunc ){

        this.control.addEventListener('change', argfunc, false);
    };

    this.toggle = function(){

        let ctrl = this.control;

        console.log( ctrl.clientHeight );
        // class"slideFx show" style="height: px"

        if (!ctrl.classList.contains('show')) {
            ctrl.classList.add('show');
            ctrl.classList.add("slideLx");
            ctrl.style.height = 'auto';

            let height = ctrl.clientHeight + "px";

            ctrl.style.height = '0px';
            if( height == "0px" ) height = "50px";

            setTimeout( ()=>{ctrl.style.height = height;} , 0);

        } else {
            ctrl.style.height = '0px';
            ctrl.addEventListener('transitionend', function () {
                ctrl.classList.remove('show');
            }, {once:true} );
        }
    };

    this.fade = function(){

        if( this.control.classList.contains("show") )
            this.control.classList.remove("show");
        else{
            this.control.classList.add("show");
            this.control.classList.add("fadeLx");
            // this.control.className += ""
        }
    };

    this.addClass = function( cls ){
        this.control.classList.add( cls );
    }

    this.remClass = function( cls ){
        this.control.classList.remove( cls );
    }

    this.on = function( sEvent, hookFunc ){

        this.control.addEventListener( sEvent, hookFunc, false);
    };

    this.show = function(){
        this.control.style = "display: block;";
        setTimeout( ()=>{this.control.classList.add("show");}, 20 );
    };

    this.hide = function(){
        // this.control.classList.contains("fade")
        this.control.classList.remove("show");
        setTimeout( ()=>{this.control.style = "display: none;";}, 200 );
    };

    this.prop = function ( prop, val ) {
        //document.getElementById("myBtn").disabled = true;
        if( val )
            this.control.setAttribute(prop, val);
        else
            this.control.removeAttribute( prop );
    };

    this.class = function( style, mode ) {
        //this.control.style = arg;
        if( mode )
            this.control.classList.add( style );
        else
            this.control.classList.remove( style );
    };

    this.data = function( dtaVar ){

        var name = "data-" + dtaVar; ///.toLowerCase();
        return  this.control.getAttribute(name);
    };

    this.prepend = function( strHtml ){
        this.control.innerHTML = strHtml + this.control.innerHTML;
    }

    this.append = function( strHtml ){
        this.control.innerHTML += strHtml;
    }

    this.load = function( url, arg, func ){

        // arguments r: url, arg, no-event, div
        privSendRequest( url, arg, func, this.control );
    };

    this.Modal = function( opts ){
        // es interno ("").modal();
        // class="fade In" style="display: block"
    };
};
//---------------------------------------------------------------
var mlLightAjax = function( strId ) {
	// this.params = params; {a:0}
	//
	// instead of: document.getElementById(idStr)

    return ( new mlObjectDOM(document.querySelector(strId)) );
};
//---------------------------------------------------------------
mlLightAjax.ajax = function( params ) {

    privSendRequest(
            params.url,
            //params.type,  ::no used
            params.data,
            params.success,
            null
    );
};
//---------------------------------------------------------------
mlLightAjax.post = function( url, data, hook ) {

    // post default
    privSendRequest(
            url,
            data,
            hook
    );
}
//---------------------------------------------------------------
mlLightAjax.get = function( url, hook ) {

    // "file.asp/var=0&etc=..."
    //
    fetch( url, {method: "GET", mode: 'cors'} )
    .then( function(response) {
        return response.text();
    })
    .then( function(data) {
        if( hook != null )
            hook( parseJS(data) );
    })
    .catch( function(err) {
        console.error(err);
    });
};

//---------------------------------------------------------------
// en JQ puede ir donde sea y almacena el Hook de clase en RAM
// en Lx necesita repasar on .class para que el evento dispare
//---------------------------------------------------------------
mlLightAjax.on = function( onEvent, className, hook ){

    var ctrl = document.querySelectorAll(className); // ".class"

    ctrl.forEach( ( item ) => {
        // procesar una sola vez
        if( item.className.indexOf("lxF") == -1 ){

            console.log( "ajax.on: " + className );
            item.className += " lxF";
            item.addEventListener( onEvent, hook );
        }
    });

    /*
    var x = document.getElementsByClassName( className );
    console.log( x.length );
    for(var i = 0; i < x.length; i++ ){
        x[i].addEventListener( onEvent, hook );
    }
    */
};

//---------------------------------------------------------------
// document.onload = () => { }
//
// stay activated in <navbar>
// jlx("#navbarLx").toggle()
//
//---------------------------------------------------------------
mlLightAjax.lock = function( args )
{
    var ctrl = document.createElement("div")
    ctrl.id = "ajx-over";
    //ctrl.className = "some";
    if( ! args ){
        ctrl.innerHTML = "<div class='cntLx'>"+img8+"</div>";
    } else {
        ctrl.innerHTML = "<div class='cntTx'>"+args+"</div>";
    }

    document.body.prepend( ctrl );
}
//---------------------------------------------------------------
mlLightAjax.unlock = function()
{
    var ctrl = document.getElementById('ajx-over');
    document.body.removeChild( ctrl );
}

//---------------------------------------------------------------
Lx = function ( dvShow, urlx, args ){

    jlx.lock();
    // jlx( dvShow ).html( img6 );
    jlx( dvShow ).load( urlx, args );
    setTimeout( ()=>{ jlx.unlock() } , 550 );
    return false;
}

Lz = function ( dvShow, urlx, args ){
    jlx( dvShow ).html( img2 );
    jlx( dvShow ).load( urlx, args );
    return false;
}

/*
function LxJQ( dvShow, urlx, args )
{
    $( dvShow ).html( img6 );
    $( dvShow ).load( urlx, args );
}
*/

/*
function setStyleList( objDest, styleList ){
	for( var itStyle in styleList ){
		objDest.style[itStyle] = styleList[itStyle];
	}
}
setStyleList( vwTitle, {
    'border-radius': '3px',
    'margin-bottom': '10px',
    'background': '#444444',
    'padding'   : '7px',
    'color'     : 'white',
    'width'     : '626px'
} );
*/
//---------------------------------------------------------------
// local definition over our Compatible fuckQuery
//---------------------------------------------------------------
// $ = mlLightAjax;   // same as JQ but no


jlx = mlLightAjax;    // stable object


//- EOF


//---------------------------------------------------------------
//
//  Light Ajax : plugins integrated by timer
//
//  * Developed by: Ramiro Pedro Laura Murillo
//  * Modules:  set jlxSubmit & jlxClick & navBar.Toggle
//              << it executes when loads all html classes >>
//
//---------------------------------------------------------------


// Modal execution's
//
function jlxModal( idFrm, args )
{
	// boostrap5
	( new bootstrap.Modal( idFrm, args) ).show();

	/*
    // desparecer en body
    document.body.className = "overflow-hidden";

    ctrl =  document.createElement("div")
    ctrl.id              = "dvModal";
    ctrl.className       = "modal-backdrop fade";
    ctrl.style.opacity   = "0.60";
    //ctrl.style.overflowY = "scroll"; // En Modal
    document.body.appendChild( ctrl );

    jlx( idFrm ).show();
	*/
}

/*
function jlxClose( idFrm )
{
    jlx( idFrm ).hide();

    var ctrl = document.getElementById("dvModal");
    document.body.removeChild( ctrl );

    // restaurar en body
    document.body.className = "overflow-auto";
}
*/


// 1. se declara la clase en form o button
// 2. debe pasarse evento on submit o click para hacer efecto
// 3. disfrutar

function lxRasterHooks()
{
    //-----------------------------------------------------------
    // Plugins derivados para LxJS : al pie del html ojo.
    //-----------------------------------------------------------
    jlx.on( "submit", ".jlxSubmit", function(e){

        e.preventDefault();

        dtaShow = this.getAttribute("data-destiny");
        dtaUrlx = this.getAttribute("data-target");
        dtaHook = this.getAttribute("data-hook");
        dtaLock = this.getAttribute("data-lock");
        dtaForm = new FormData(this);

        if(dtaLock) jlx.lock();
        else jlx( dtaShow ).html( img4 );

        jlx.ajax({
            // POST always
            url  : dtaUrlx,
            data : dtaForm,
            success: function( res ){
                if(dtaLock) jlx.unlock();

                jlx( dtaShow ).html( res );
                parseJS( res ); // extra
                jlx( dtaShow ).show();
                if( dtaHook ) window[dtaHook](res);
            }
        });

        e.preventDefault();
    } );


    jlx.on( "click", ".jlxSend", function(e){

        dtaShow = this.getAttribute("data-destiny");
        dtaUrlx = this.getAttribute("data-target");
        dtaHook = this.getAttribute("data-hook");
        dtaForm = this.getAttribute("data-form");
        dtaArgs = this.getAttribute("data-args");

        // convertir a objeto HTML
        dtaForm = document.getElementById(dtaForm);

        dtaForm = (dtaForm)? new FormData(dtaForm) : null;
        dtaUrlx = (dtaArgs)? (dtaUrlx+"/"+dtaArgs) : dtaUrlx;


        jlx.lock();

        jlx.ajax({
            // POST always
            url  : dtaUrlx,
            data : dtaForm,
            success: function( res ){
                jlx.unlock();
                jlx( dtaShow ).html( res );
                parseJS( res ); // extra
                if( dtaHook ) window[dtaHook](res);
            }
        });

        e.preventDefault();
    } );

}

// en modo normal
// otro dentro de los load
//
lxRasterHooks();

// auto raster de class events
setInterval( lxRasterHooks, 1000 );
