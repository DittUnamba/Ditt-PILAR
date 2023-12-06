/*
 * Lightning-X rMVC new Base Tools - 2021
 *
 * Coded by: Ramiro Pedro Laura Murillo
 */

const waitGf = "/apps/public/img/wait.gif";
const wait30 = "<center><img src='"+waitGf+"' width=32>";
const wait50 = "<center><img src='"+waitGf+"' width=50>";
const wait80 = "<center><img src='"+waitGf+"' width=80>";

const LxById = function( strId ) {

    return document.getElementById( strId );
}

const LxOnEvent = function( ctrl, evnt, hookFn ) {

    ctrl.addEventListener( evnt, hookFn );
}

const LxAlert = function( mode, msg ){

    return `
        <div class="alert alert-${mode}">
            ${msg}
        </div>
    `
}

const LxTime = () => {

    d = new Date();
    h = d.getHours();   h = (h<10)? '0'+h : h;
    m = d.getMinutes(); m = (m<10)? '0'+m : m;
    s = d.getSeconds(); s = (s<10)? '0'+s : s;
    return  h +":"+ m +":"+ s;
}

const SetCookie = function( cname, cvalue, exhours ) {
    var d = new Date();

    d.setTime(d.getTime() + (exhours*60*60*1000));
    var expires = "expires="+ d.toUTCString();

    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

const FreeCookie = function( cname ) {
    SetCookie(cname,"",-1);
}

const GetCookie = function( cname ) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

