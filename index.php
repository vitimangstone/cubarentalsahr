<?php
session_start();
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {
    header("Location: perfil.php");
}

require ("modulos/modulos_pag_login/conexion_mod.php");
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuba Rentals AHR</title>
    <meta name="description" content="Find a room with your needs searching in cuba beaches, old havana, havana center
    from $30 per night, the cuban history waiting for your discovery">
    <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">
    <!--Bootstrab CSS-->
    <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!--Base CSS-->
    <link href="CSS/Base.css" rel="stylesheet" type="text/css" />
    <!--Pagina login CSS-->
    <link href="CSS/estilos_pag_login.css" rel="stylesheet" type="text/css" />
    <link href="CSS/estilos_pag_cliente.css" rel="stylesheet" type="text/css" />
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
<div id="body_container" class="container-fluid">
    <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
        <?php
        require ("modulos/modulos_pag_login/barra_mod.php");
        require ("modulos/modulos_pag_login/header_mod.php");
        echo '<div class="row contenedor_cliente_registro">';
        require ("modulos/modulos_pag_login/contact_modal.php");
        require ("modulos/modulos_pag_login/cliente_mod3.php");
        require ("modulos/modulos_pag_login/cliente_mod2.php");
        require ("modulos/modulos_pag_login/cliente_mod1.php");
        require ("modulos/modulos_pag_login/cliente_mod.php");

        echo '<div class="col-xs-12" style="text-align: center;color:#b81900"><h4>'.text_travel_good_choice.'</h4></div>';
        require ("modulos/modulos_pag_login/casas_recomendadas.php");
        require ("modulos/modulos_pag_login/cliente_mod4.php");
        echo '</div>';
        ?>
    </nav>

</div>
<div class="container-fluid">
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
<script type="text/javascript">
    $('#bar_menu_inicio').addClass('active');
</script>
<!--Para cargar el modulo del contacto-->
<script src="jquery/contact_script.js" type="text/javascript"></script>
</body>
</html>
