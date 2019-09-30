<!DOCTYPE html>
<?php
require ("modulos/modulos_pag_login/conexion_mod.php");
?>

<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=euc-jp">
         
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--        <title>Cuba Rentals Apartments Houses and Rooms</title>-->
        <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">

        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" /> 
        <!--Registro CSS-->
        <link href="CSS/registro.css" rel="stylesheet" type="text/css" /> 

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
        <input id="validarCompleteCampo" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_completeCampo;
        ?>">
        <input id="validarCorreo" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_correo;
        ?>">
        <input id="validarTelefono" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_telefonoFijo;
        ?>">
        <input id="verificandoUsuario" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_verificandoUsuario;
        ?>">
        <input id="verificandoUsuarioExiste" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_verificandoUsuarioExiste;
        ?>">
        <input id="correcto" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_correcto;
        ?>">
        <input id="contrasenasNoCoinciden" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_contrasenasNoCoinciden;
        ?>">
               <?php
               require ("modulos/modulos_pag_login/barra_mod.php");
               ?>
        <div id="body_container" class="container">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                <div class="panel registro">       
                    <div class="panel-heading panel-heading-con-opciones">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 panel-title panel-title-con-opciones">
                                <span class="col-lg-12 col-sm-12 col-md-12 texto_header_cliente">
                                    <?php
                                    require ("language_config.php");
                                    echo text_arrendador_medium;
                                    ?>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form id="registroArrendatario" action="crear_cuenta.php" method="post">
                            <div class="row">
                                <div id="contenedorNombreArrendatario" class="form-group col-md-6 col-sm-12 col-xs-12"  style="margin-bottom: 0; ">
                                    <label id="nombreArrendatarioLabel"for="nombreArrendatario" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                    <input id="nombreArrendatario" type="text" class="form-control input-lg" name="arrendador" maxlength="20" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_nombre;
                                    ?> *">
                                </div>
                                <div id="contenedorApellidosArrendatario" class="form-group col-md-6 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label  id="apellidosArrendatarioLabel" for="apellidosArrendatario" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                    <input  id="apellidosArrendatario" type="text" class="form-control input-lg" name="apellido" maxlength="20" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_apellidos;
                                    ?> *">
                                </div>
                            </div>         

                            <div class="row">
                                <div id="contenedorTelefonoFijo" class="form-group col-md-6 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label id="telefonoFijoLabel" for="telefonoFijo" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                    <input id="telefonoFijo"   maxlength="8"  class="form-control input-lg" type="tel" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_telefono;
                                    ?> *" name="telf_casa">
                                </div>
                                <div id="contenedorTelefonoMovil" class=" form-group col-md-6 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label id="telefonoMovilLabel" for="telefonoMovil" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                    <input id="telefonoMovil" maxlength="10" class="form-control input-lg" type="tel" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_cel;
                                    ?>" name="telf_movil">
                                </div>
                            </div>

                            <div class="row">
                                <div id="contenedorCorreo2" class=" form-group col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label id="correo2Label" for="correo2" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                    <input id="correo2"  class="form-control input-lg" type="email" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_correo_repetir;
                                    ?> *" name="correo">                
                                </div>
                            </div>

                            <div class="row">
                                <div id="contenedorNombre_usuario"class="form-group col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label id="nombre_usuarioLabel" for="nombre_usuario" class="control-label bg-danger border-top-radius-4 sr-only hidden-lg hidden-md"></label>
                                    <input id="nombre_usuario"  class="form-control input-lg" type="text" maxlength="40" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_correo;
                                    ?> *" name="nombre_usuario">                
                                </div>
                            </div>

                            <div class="row">
                                <div id="contenedorContrasena1" class="form-group col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 0;">
                                    <label id="contrasena1Label" for="contrasena1" class="control-label bg-danger border-top-radius-4 sr-only hidden-lg hidden-md"></label>
                                    <input id="contrasena1"  class="form-control input-lg" type="password" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_contraseña;
                                    ?> *" name="pass">
                                </div>
                            </div>

                            <div class="row">
                                <div id="contenedorContrasena2" class="col-md-12 col-sm-12 col-xs-12">
                                    <label id="contrasena2Label" for="contrasena2" class="control-label bg-danger border-top-radius-4 sr-only hidden-lg hidden-md"></label>
                                    <input id="contrasena2"  class="form-control input-lg" type="password" placeholder="<?php
                                    require ("language_config.php");
                                    echo text_arrendador_contraseña_repetir;
                                    ?> *" name="pass2">
                                </div>
                            </div>
                            <center>
                                <p class="texto_requerido text-center" style="color: #666666;">
                    <b>
<!--                        <span class="glyphicon glyphicon-lock"></span>-->
<!--                        --><?php
//                        require ("language_config.php");
//                        echo text_index_completar_campos_requeridos1;
//                        ?>
                    </b>
                </p>
<!---->
                                <button id="btn_registro_mod"  class="btn btn-md btn-lg btn-block" style="margin-top: 5px;" type="submit"><?php
                                    require ("language_config.php");
                                    echo text_boton_registrar;
                                    ?></button>
                            </center>
                        </form>
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
        <!--Login JS-->
        <script src="jquery/login.js" type="text/javascript"></script>
        <!--General-->
        <script src="jquery/general.js" type="text/javascript"></script>
        <!--Validaciones-->
        <script src="jquery/validaciones_login_mod.js" type="text/javascript"></script>
        <!--Opcion de la barra de navegacion activa-->
    </body>
</html>
