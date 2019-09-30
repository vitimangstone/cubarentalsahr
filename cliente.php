<?php
session_start();
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {
    header("Location: perfil.php");
}


require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();
?>
<html>
    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuba Rentals AHR - Rentals</title>
        <meta name="description" content="Vacations in Cuba are fantastic so you need a comfortable place to rest, look here
        and find a rental room with all your spectations">
        <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">
        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" /> 
        <!--Cliente CSS-->
        <link href="CSS/estilos_pag_cliente.css" rel="stylesheet" type="text/css" />  
        <!--JPages CSS-->
        <link href="CSS/jPages.css" rel="stylesheet" type="text/css" />

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

        <div id="body_container" class="container-fluid">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">  
                <?php
                if(isset($_GET['municipio'])){
                    echo '<input hidden="hidden" value="'.$_GET['municipio'].'" id="municipio-init">';

                }
                if(isset($_GET['busqueda-ant'])){
                    echo '<input  hidden="hidden" value="'.$_GET['busqueda-ant'].'" id="busqueda-ant">';
                }
                if(isset($_GET['lugares'])){
                    echo '<input  hidden="hidden" value="'.$_GET['lugares'].'" id="rentals-by-places" class="selected_buttons">';
                }
//                require ("modulos/modulos_pag_cliente/casas_populares_mod.php");
                echo '<div class="row">';
                echo '<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">';
                require ("modulos/modulos_pag_cliente/paginado_mod.php");
                echo '</div>';
                echo '<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">';
                require ("modulos/modulos_pag_cliente/buscador_mod.php");

//                require ("modulos/modulos_pag_cliente/pluing_facebook_mod.php");
//                require ("modulos/modulos_pag_cliente/anuncios_publicidad_mod.php");
                echo '</div>';
                echo '</div>';
                ?>
            </nav>
        </div>




        <!--Jquery JS-->
        <script src="jquery/jquery-2.0.0.min.js" type="text/javascript"></script> 
        <!--Bootstrab JS--> 
        <script src="bootstrap-3.1.1/js/bootstrap.js" type="text/javascript"></script>
        <!--Jpages JS-->
        <script src="jquery/jPages.js" type="text/javascript"></script> 
        <!--Cliente JS--> 
        <script src="jquery/cliente.js" type="text/javascript"></script>
        <!--General--> 
        <script src="jquery/general.js" type="text/javascript"></script>
        <!--Validaciones-->
        <script src="jquery/validaciones_login_mod.js" type="text/javascript"></script>
        <script type="text/javascript">
            $('#bar_menu_negocios').addClass('active');
        </script>
    </body>
    <?php
    require ("modulos/modulos_pag_login/barra_mod.php");
    require ("modulos/modulos_pag_login/footer_mod.php");
    ?>
</html>


