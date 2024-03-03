<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" rel="home" href="<?=base_url("pilar")?>" title="Universidad Nacional Micaela Bastidas de Apurímac | Vicerrectorado de Investigación">
                <img class="img-responsive" style="max-width:160px; margin-top: -15px;"
                     src="<?=base_url("vriadds/pilar/imag/logos-u-v-p.png");?>">
            </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a id="1tes" onclick="openNav(this.id)" href="#">Tesista</a></li>
                    <li><a id="2doc" onclick="openNav(this.id)" href="#">Docente</a></li>
                    <li><a id="3coord" onclick="openNav(this.id)"  href="#">Unidad de Investigación</a></li>
                    <li><a href="<?= base_url("pilar/sustentas") ?>">Sustentaciones</a></li>
                </ul>
            </div>
    </div>
</div>

<div class="container info-pilar margin" style="height: 23%">
  <img class="img-responsive logo-pilar3" src="<?=base_url("vriadds/pilar/imag/pilar-n.png");?>">
</div>
<div class="" style="height: 3px; background:rgb(149,0,68)"> </div>


<div class="container">
  <div class="col-md-12 contenido1">
      <!-- begin -->
      <div class="col-md-12 bg-white" style="padding-top: 15px">
          <div class="titulo"> Listado de Sustentaciones </div>
          <table class="table table-striped table-hover">
              <thead>
                  <tr>
                      <th> Nro </th>
                      <th class="col-md-2"> Trámite </th>
                      <th class="col-md-2"> Fecha </th>
                      <th class="col-md-5 hidden-xs"> Título del Informe de Tesis </th>
                      <th class="col-md-2"> E.P. </th>
                      <th class="col-md-2"> Info </th>
                  </tr>
              <?PHP

                // just for counting...
                $table = $this->dbPilar->getSnapView( "vxSustens" );
                $total = $table->num_rows();

                // shortest list
                $table = $this->dbPilar->getSnapView( "vxSustens", null, "ORDER BY Fecha DESC LIMIT 250" );

                foreach( $table->result() as $row ){

                    $btpdf = ($row->Pendiente)?
                             "<button onclick='loadAviso($row->Id)' class='btn btn-info'> Aviso </button>" :
                             "<button onclick='loadAviso($row->Id)' class='btn btn-default'> Aviso </button>" ;
                    $btest = ($row->Pendiente)?
                             "<button class='btn btn-xs btn-success'> Nuevo </button>"     :
                             "<button class='btn btn-xs btn-default'> Realizado </button>" ;
                    $class = ($row->Pendiente)? "warning" : "";

                    if( $row->Activo == 0 )
                        $btpdf = "<button class='btn btn-danger'> Reprogramar </button>";

                    $tram = $this->dbPilar->inProyTram( $row->IdTramite );
                    $nomb = $this->dbPilar->inTesistas( $row->IdTramite );
                    $dets = $this->dbPilar->inLastTramDet( $row->IdTramite );
                    $fech = mlFechaNorm( $row->Fecha );

                    echo "<tr class='$class''>";
                    echo "<td> $total </td>";
                    echo "<td> <b>$row->Codigo</b> <br> $btest </td>";
                    //echo "<td> $fech<br> <small>(E) $tram->Tipo : $tram->Estado</small> </td>";
                    echo "<td> $fech </td>";
                    echo "<td  class='hidden-xs'> <small>$dets->Titulo</small> </td>";
                    echo "<td> <small>$row->Carrera</small> </td>";
                    echo "<td> $btpdf </td>";
                    echo "</tr>";

                    $total--;

                    //if( $total < 800 )
                    //    break;
                }
              ?>
              </thead>
              <tbody>
              </tbody>
          </table>
      </div>

      <div class="col-md-4 col-md-offset-4">
          <button class='btn btn-success btn-block'> >> Ver listado completo &lt;&lt; </button>
          <hr>
      </div>
      <!-- end -->

      <div class="col-md-12 bg-vino footer">
        Universidad Nacional Micaela Bastidas de Apurímac<br>
        Vicerrectorado de Investigación<br>
        Dirección de Innovación y Transferencia Tecnológica<br>
        &copy; Plataforma de Investigación y Desarrollo</a>
      </div>
  </div>
</div>



<!-- MODAL  -->
<div class="modal" role="dialog" id="pdfDlg">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content modal-pilar">
            <div class="modal-header modal-pilar-title">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"> Defensa de Tesis </h4>
            </div>
            <div class="modal-body modal-pilar modal-pilar-content">
                <iframe id="iframe" height=610 width=100% frameborder=0 src=""></iframe>
                <button type="button" class="btn btn-danger" data-dismiss="modal"> Cerrar Aviso </button>
            </div>
            <!--
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"> Cerrar Aviso </button>
            </div>
            -->
        </div>

    </div>
</div>
<!-- /MODAL  -->

    <!-- Inicio Login Tesista-->
    <div id="Tesistas" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="overlay-content">
            <div class="login-page">
               
                <div class="form">
                    <img class="img-responsive login-logo" src="<?php echo base_url("vriadds/pilar/imag/pilar-tes.png"); ?>">
                    <h4 class="login-title-tes">Área de Tesistas</h4>
                    <div id="pmsg" class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span>
                    </div>
                    <!--Ud., no está registrado.<br><small>Apersonarse a las oficinas del VRI con una copia de su Ficha y/o Bachiller</small>-->
                    <!-- *** -->
                    <form class="register-form" name="frmoti" onsubmit="callSave(); return false">
                        <div id="pdta" style="color: black">

                            <input id="cod" name="cod" type="number" placeholder="Codigo de Matricula" required="" />
                            <input id="dni" name="dni" type="number" placeholder="Número de D.N.I." required="" />
                            <button onclick="callOTI()" class="login-btn-tesista" type="button"> Verificar mis Datos </button>
                        </div>
                        <p class="message">Ya estas Registrado? <a rel="nofollow" onclick="register()" rel="noreferrer">Ingresar</a></p>
                    </form>
                    <!-- *** -->
                    <form class="login-form" name="logtes" onsubmit="callLoginTesSusten(); return false" method="post">

                        <input type="email" name="mail" placeholder="su correo personal" required="" />
                        <input type="password" name="pass" placeholder="contraseña" required="" />
                        <button type="submit" class="login-btn-tesista"> Ingresar </button>
                        <p class="message"><i>Usted es Tesista Nuevo?</i> <a rel="nofollow" onclick="register()" href="javascript:void(0)">Crear una Cuenta Nueva </a></p>
                    </form>
                    <a class="text-center" onclick="closeNav()"><span class="glyphicon glyphicon-remove-circle gi-1x"></span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Finaliza Login Tesista -->
    <!-- Inicio Login Docente-->
    <div id="Docentes" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="overlay-content">
            <div class="login-page">
                <div class="form">
                    <img class="img-responsive login-logo" src="<?php echo base_url("vriadds/pilar/imag/pilar-doc.png"); ?>">
                    <h4 class="login-title-doc">Área de Docente</h4>
                    <div id="qmsg" class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span> </div>
                    <form class="register-form">
                        <!--
                <input type="number" max="999999" placeholder="Codigo de Docente"/>
                <input type="email" placeholder="correo registrado" required=""/>
                <input type="text" placeholder="Numero Celular" required=""/>
                <input type="text" placeholder="Fecha Nacimiento" required=""/>
                <input type="text" placeholder="Direccion" required=""/>
                <input type="password" placeholder="contraseña" required=""/>
                <input type="password" placeholder="repite la contraseña" required=""/>
                <button class="login-btn-tesista">Crear</button>
                -->
                        <p class="message"> El Registro se realiza en Plataforma con una copia de su resolución de contrato. <a href=""> Cerrar </a></p>
                    </form>
                    <form name="logdoc" class="login-form" onsubmit="callLoginDocSusten(); return false" method="post">
                        <input name="mail" type="text" placeholder="su correo personal" required="" />
                        <input name="pass" type="password" placeholder="contraseña" required="" />
                        <button class="login-btn-docente">Ingresar</button>
                        <p class="message"><i>Es su Primera Vez Aqui?</i>
                            <a rel="nofollow" onclick="register()" href="javascript:void(0)"> Crear una Cuenta Nueva </a>
                        </p>
                    </form>
                    <a class="text-center" onclick="closeNav()"><span class="glyphicon glyphicon-remove-circle gi-1x"></span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Finaliza Login Docente -->
    <!-- Inicio Login Coordinador-->
    <div id="Coordinadores" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="overlay-content">
            <div class="login-page">
                <div class="form">
                    <img class="img-responsive login-logo" src="<?php echo base_url("vriadds/pilar/imag/pilar-cord.png"); ?>">
                    <h4 class="login-title-cord">Unidades de investigación</h4>
                    <div id="cmsg" class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span> </div>
                    <form class="register-form">
                        <input type="email" placeholder="correo@unamba.edu.pe" required="" />
                        <input type="password" placeholder="contraseña" required="" />
                        <input type="text" placeholder="email address" required="" />
                        <button class="login-btn-coord">Crear</button>
                        <p class="message">Ya estas Registrado? <a rel="nofollow" onclick="register()" rel="noreferrer">Ingresar</a></p>
                    </form>
                    <form name="logcor" class="login-form" onsubmit="callLoginCorSusten(); return false" method="post">
                        <input name="user" type="text" placeholder="usuario(a)" required="" />
                        <input name="pass" type="password" placeholder="contraseña" required="" />
                        <button class="login-btn-coord">Ingresar</button>
                        <p class="message "><i>Unidad de Investigación Nuevo?</i> <a rel="nofollow" onclick="register()" href="#">Crear una Cuenta Nueva </a></p>
                    </form>
                    <a class="text-center" onclick="closeNav()"><span class="glyphicon glyphicon-remove-circle gi-1x"></span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Finaliza Login Docente -->
