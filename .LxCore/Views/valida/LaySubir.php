    <div class="row pt-4">
        <div class="col-md-12">
            <H1 class="text-center">
                <b style="border-bottom: 4px solid red; padding-bottom: 0px">FirmaPDF</b> Validador
            </H1>
            <br>
            <h5 class="text-center"> Con soporte nativo basado en OpenSSL </h5>
            <br>
        </div>
    </div>


    <div class="row">
    </div>

    <div class="row">
        <div class="offset-md-2 col-md-8">
            <div class="card shadow-lg" style="backdrop-filter: blur(4px); background: #FFFDFF44">
                <img class="card-img-top" src="/vriadds/web20/img/cursos.jpg" height=0 style="opacity: 1.0">
                <div class="card-body p-5" id="canv">
                    <h5 class="card-title" style="font-size: 1.2rem; color: #bb3322">
                    </h5>

                    <legend class="text-center" style="color: #555"> Seleccione un archivo <b>PDF</b> para validar </legend>
                    <br><br><br>

                    <?php if( true ): ?>
                    <div class="offset-md-2 col-md-8">
                    <form class="jlxSubmit" data-destiny="#canv" data-target="Validador/Validar" data-lock=true>
                        <fieldset>
                            <div class="mb-3">
                                <!--<label for="formFile" class="form-label"> Archivo </label>-->
                                <input class="form-control" type="file" name="arch" accept="application/pdf" required>
                            </div>
                            <div class="mb-3">
                                <!-- <label for="disabledTextInput" class="form-label"> Correo registrado </label> -->
                                <input type="email" name="mail" class="form-control" placeholder="Correo electrónico">
                            </div>

                            <div class="mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="mycheck">
                                    <label class="form-check-label" for="mycheck">
                                        <small>Estoy de acuerdo con el uso de mis datos</small>
                                    </label>
                                </div>
                            </div>
                            <center>
                                <button type="submit" class="btn btn-primary shineRed">
                                    <i class="fa fa-upload fa-fw"></i> Verificar mi PDF
                                </button>
                            </center>
                        </fieldset>
                    </form>
                    </div>
                    <?php else: ?>
                        Proceso concluido
                    <?php endif; ?>

                    <br><br>
                    <p class="card-text" style="font-size: 0.9rem" align="justify">
                    </p>
                </div>
                <div class="card-footer">
                    Desarrollado en Puno-Perú
                </div>
            </div>

            <div class="bd-example">

            </div>
        </div>
    </div>
