<?php
require ("modulos/modulos_pag_login/conexion_mod.php");
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=euc-jp">
         
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Log in in Cuba Rentals AHR</title>
        <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">
        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" /> 
        <!--Login CSS-->
        <link href="CSS/login.css" rel="stylesheet" type="text/css" /> 

        <NOSCRIPT>
        <META HTTP-EQUIV="Refresh" CONTENT="0;URL=nojavascript.php">
        </NOSCRIPT>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55884282-1', 'auto');
  ga('send', 'pageview');

</script>
    </head>
    <body>
        <input id="error" type="hidden" value= "<?php
        if (isset($_GET['error'])) {
            echo $_GET['error'];
        } else {
            echo '0';
        }
        ?>">
        <input id="validarCompleteCampo" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_completeCampo;
        ?>">
        <input id="verificandoUsuario" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_verificandoUsuario;
        ?>">
        <input id="verificandoUsuarioExiste" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_obtenerCredenciales;
        ?>">
        <input id="correcto" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_correcto;
        ?>">
               <?php
               require ("modulos/modulos_pag_login/barra_mod.php");
               ?>
        <div id="body_container" class="container">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                <div class="panel login">       
                    <div class="panel-heading panel-heading-con-opciones">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 panel-title panel-title-con-opciones">
                                <span class="col-lg-12 col-sm-12 col-md-12 texto_header_cliente">
                                    <?php
                                    require ("language_config.php");
                                    echo text_pregunta_barra;
                                    ?>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="login_error" class="alert alert-danger"><?php
                            require("language_config.php");
                            echo text_index_errorUsuarioPass
                            ?></div>
                        <div id="contenedor_nombre_modal">
                            <label id="nombre_modalLabel" for="nombre_modal" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                            <input id="nombre_modal" class="form-control input-lg" type="text" placeholder="<?php
                            require("language_config.php");
                            echo text_arrendador_correo
                            ?> *" name="nomb">
                        </div>
                        <div id="contenedor_contrasena_modal" >
                            <label id="contrasena_modalLabel" for="contrasena_modal" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                            <input id="contrasena_modal" class="form-control input-lg"  type="password" placeholder="<?php
                            require("language_config.php");
                            echo text_arrendador_contraseña
                            ?> *" name="pass1">
                        </div>
                        <br>
                        <a id="solicitar_credenciales" style="color: #333333; cursor: pointer;"><?php
                            require("language_config.php");
                            echo text_index_olvidoCrdenciales
                            ?></a><br>
                        <div id="credenciales_solicitud" class="input-group false" style="margin-bottom: 30px;">

                            <label id="credenciales_usuarioLabel" for="credenciales_usuario" class="control-label bg-danger border-top-radius-4 sr-only hidden-lg hidden-md"></label>
                            <input id="credenciales_usuario" type="text" class="form-control input-lg" placeholder="<?php
                            require("language_config.php");
                            echo text_index_correoErrorUsuarioPass
                            ?> *">
                            <span class="input-group-btn">
                                <button id="credenciales_btn" class="btn btn-lg" type="button" style="margin-top: 5px;"><?php
                                    require("language_config.php");
                                    echo text_perfil_aceptar
                                    ?></button>
                            </span>
                        </div>

                        <a href="registro.php" style="color: #333333;"><?php
                            require("language_config.php");
                            echo text_index_noEstasRegistrado
                            ?></a>

                        <button id="btn_registro_mod" class="btn btn-md btn-lg btn-block" style="margin-top: 5px;" type="submit"><?php
                            require ("language_config.php");
                            echo text_boton_barra;
                            ?>
                        </button>

                    </div>
                </div>
            </nav>
            <?php
            require ("modulos/modulos_pag_login/footer_mod.php");
            ?>
        </div>

        <!--Jquery JS-->
        <script src="jquery/jquery-2.0.0.min.js" type="text/javascript"></script> 
        <!--Bootstrab JS-->
        <script src="bootstrap-3.1.1/js/bootstrap.js" type="text/javascript"></script>
        <!--General-->
        <script src="jquery/general.js" type="text/javascript"></script>
        <!--Validaciones-->
        <script src = "jquery/validaciones_login_mod.js" type = "text/javascript"></script>
        <!--Login JS-->
        <script src="jquery/login.js" type="text/javascript"></script>

    </body>
</html>
