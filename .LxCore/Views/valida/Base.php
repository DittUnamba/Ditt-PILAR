<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="VRI 2022">
        <meta name="author" content="">

        <!--<link rel="manifest" href="manifest.json">-->
        <link href="x.png" rel="icon" sizes="32x32">
        <meta name="msapplication-TileColor" content="#ee0056">
        <meta name="msapplication-TileImage" content="x.png">
        <meta name="theme-color" content="#ee0056">

        <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://vriunap.pe/absmain/cdn/LxAjax.a.js"></script>

        <!--
        <link href="public/css/local.css" rel="stylesheet">
        <!-- vanilla JS searchable select
        <link href="https://unpkg.com/mobius1-selectr@latest/dist/selectr.min.css" rel="stylesheet" type="text/css">
        <script src="https://unpkg.com/mobius1-selectr@latest/dist/selectr.min.js" type="text/javascript"></script>
        <!-- js/jqLightForm.js -->
        <title> MIDaS <?=date("Y")?> </title>
    </head>

<body>

<style>
    * {
        font-family: "Titillium Web";
    }
    body {
        margin-top: 0px;
        background-color: #f7f7ff;
        /* background: url("https://upload.wikimedia.org/wikipedia/commons/8/86/Portal_UNAP.jpg"); */
        background: url(https://vriunap.pe/conciencia/wroot/img/thepage04.png) center;
    }

    .subRed{
        border-bottom: 4px solid red;
        padding-bottom: 0px;
    }

    .shineRed {
        animation: BrilloAnimation 2s linear infinite;
        background: #BB0715 url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
        border: 0px;
        height: 40px;
    }
    .shineRed:hover{
        background: #990715 url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
    }

    .shineGreen {
        animation: BrilloAnimation 2s linear infinite;
        background: #075915 url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
        border: 0px;
        height: 40px;
    }
    .shineGreen:hover{
        background: #077915 url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
    }

    .shineOrange{
        animation: BrilloAnimation 2s linear infinite;
        background: #FF5F0F url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
        border: 0px;
        height: 40px;
    }
    .shineOrange:hover{
        background: #d15619 url(https://vriunap.pe:8080/public/ctivitae/img/brillo.png) no-repeat;
    }

    @-webkit-keyframes BrilloAnimation {
        0% {
            background-position-x: -300px;
        }

        to {
            background-position-x: 300px;
        }
    }

    @keyframes BrilloAnimation {
        0% {
            background-position-x: -300px;
        }

        to {
            background-position-x: 300px;
        }
    }

    .nav-link{
        width: 100px;
        text-align: center;
        font-weight: bold;
        color: rgb(125,125,125) !important;
        border-bottom: 4px solid rgba(255,0,86,0);
    }
    .nav-link:hover {
        border-bottom: 4px solid rgba(255,0,86,1);
        color: rgb(10,10,10)  !important;
    }
</style>


    <?php if( isset($inLayout) ): ?>
        <!-- inicio: cuerpo para Layout -->
        <div class="container">
            <?= $this->View( $inLayout, $inArgs ); ?>
        </div>
        <!-- fin: cuerpo para Layout -->
    <?php else: ?>
        <!-- --- -->
    <?php endif; ?>

    </body>
</html>

