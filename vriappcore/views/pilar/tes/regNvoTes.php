<small><p style="color: black; line-height: 1.23; font-size: 11px">
        <?php
            //echo "$data->apellidos, $data->nombres";
            echo "$data->APPATERNO $data->APMATERNO, $data->NOMBRES";
            echo "<br>( $data->EP )";
        ?>
</p></small>
<input name="mail" type="email" placeholder="Mi Correo personal" required/>
<input name="celu" type="number" placeholder="Número celular" required/>
<input name="dire" type="text" placeholder="Dirección" required/>
<input id="pass1" name="pass1" type="password" placeholder="Contraseña" required/>
<!-- <h6 style="color: gray;text-align: justify;">La contraseña debe tener al menos 8 caracteres y contener al menos una letra mayúscula, una letra minúscula, un número y un carácter especial</h6> -->
<input id="pass2" name="pass2" type="password" placeholder="repite la contraseña" required/>
<button type=submit class="login-btn-tesista"> Registrame </button>
