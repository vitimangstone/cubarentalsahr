<?php
$arrendador = $_POST['arrendador'];
$apellido = $_POST['apellido'];
$nombre_usuario = $_POST['nombre_usuario'];
$telf_casa = $_POST['telf_casa'];

if (isset($_POST['telf_movil'])) {
    $telf_movil = $_POST['telf_movil'];
}
if (isset($_POST['correo'])) {
    $correo = $_POST['correo'];
}

$contrasenna = $_POST['pass'];

if (!isset($arrendador) ||
        !isset($apellido) ||
        !isset($nombre_usuario) ||
        !isset($telf_casa) ||
        !isset($contrasenna)) {
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuba Rentals AHR</title>
        <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">

        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" />
        <!--Jcrop CSS-->
        <link href="CSS/jquery.Jcrop.min.css" rel="stylesheet" type="text/css" />
        <!--Pagina Crear_Cuenta CSS-->
        <link href="CSS/estilos_pag_crear_cuenta.css" rel="stylesheet" type="text/css" />

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
        <input id="validarSeleccioneElemento" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_completeCampo;
        ?>">
        <input id="validarSeleccioneFoto" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_seleccioneFoto;
        ?>">
        <input id="validarSeleccioneTipoRenta" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_cliente_seleccioneRenta;
        ?>">
        <input id="validarSeleccioneProvincia" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_cliente_provincia;
        ?>">
        <input id="validarSeleccioneMunicipio" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_cliente_municipio;
        ?>">
        <input id="validarSeleccioneZona" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_cliente_zona;
        ?>">
        <input id="validarCantidadCuartos" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_cantidadCuartos;
        ?>">
        <input id="validarPrecio" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_precio;
        ?>">
        <input id="validarCantidadFotos" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_cantidadFotos;
        ?>">
               <?php
               require ("modulos/modulos_pag_login/conexion_mod.php");
               conexion();
               session_start();
               require ("modulos/modulos_pag_login/barra_mod.php");
               ?>
        <div id="body_container" class="container">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                <form  id="crear_perfil" method="post" action="control_crear_perfil.php" enctype="multipart/form-data"> 
                    <?php
                    echo '<div class="row">';
                    require ("modulos/modulos_pag_crear_cuenta/header_mod.php");
                    echo '</div>';
                    echo '<div class="row">';
                    require("modulos/modulos_pag_crear_cuenta/informacion_principal_mod.php");
                    require("modulos/modulos_pag_crear_cuenta/informacion_adicional_mod.php");
                    require("modulos/modulos_pag_crear_cuenta/fotos_extras_mod.php");
                    echo '</div>';
                    require("modulos/modulos_pag_crear_cuenta/footer_mod.php");

                    echo '<input type="hidden" name="arrendador" value= "' . $arrendador . '">
                    <input type="hidden" name="apellido" value= "' . $apellido . '">                  
                    <input type="hidden" name="nombre_usuario" value= "' . $nombre_usuario . '">
                    <input type="hidden" name="telf_casa" value= "' . $telf_casa . '">';

                    if (isset($_POST['telf_movil'])) {
                        echo '<input type = "hidden" name = "telf_movil" value = "' . $telf_movil . '">';
                    }
                    if (isset($_POST['correo'])) {
                        echo '<input type="hidden" name="correo" value= "' . $correo . '">';
                    }

                    echo '<input type="hidden" name="pass" value= "' . $contrasenna . '">';
                    ?> 
                </form>
            </nav> 
            <?php
            require ("modulos/modulos_pag_login/footer_mod.php");
            ?>           
        </div>   

        <!--Jquery JS-->
        <script src="jquery/jquery-2.0.0.min.js" type="text/javascript"></script> 
        <!--Bootstrab JS-->
        <script src="bootstrap-3.1.1/js/bootstrap.js" type="text/javascript"></script>
        <!--Jcrop JS-->
        <script src="jquery/jquery.Jcrop.min.js" type="text/javascript"></script>
        <!--Pagina Crear_Cuenta JS-->
        <script src="jquery/crear_perfil_mod.js" type="text/javascript"></script>
        <!--Validaciones-->
        <script src="jquery/validaciones_crear_perfil_mod.js" type="text/javascript"></script>
        <!--General-->
        <script src="jquery/general.js" type="text/javascript"></script>
    </body>    
</html>
