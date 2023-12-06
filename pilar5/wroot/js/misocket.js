
var app = new LxSocketP( "Lx:f9f912a1a112b0" );
app.Start();

app.OnConnected = function(){
    //jlx.unlock();
    //app.Emit( "login", { "fillColor": penColor } );
}

app.OnClosed = function(){
    //jlx.lock( "LxPMVC is Disconnected<br><small>Reload page" );
}


app.On('chart', (res)=>{

    console.log( res.value );
});
