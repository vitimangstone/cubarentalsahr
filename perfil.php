<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
require ('language_config.php');
conexion();
$nombre_municipio = '';
$zona = '';
$info = '';
if(!isset($_GET['usuario'])){
    if(isset($_GET['var'])){
        $_SESSION['var']=$_GET['var'];
        $info = mostrar_info_negocio($_GET['var']);
        $zona = mostrar_nombre_zona_dado_id_zona($info['id_zona']);
        $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
        $nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
    }
    if(isset($_SESSION['var'])){
        $info = mostrar_info_negocio($_SESSION['var']);
        $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
        $nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
    }
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb18030">
         
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php if(!isset($_SESSION['usuario'])){
           echo '<title>Cuba Rentals AHR | '.$nombre_municipio. ' | '.  $info["nombre"].'</title>';
        }?>
        <meta name="description" content="<?php echo text_from.' '.$info['nombre'].' '.text_area.' '. $nombre_municipio
        .' '.text_complete?>
        <link href="imagenes/favicon_rentacuba.png" rel="shortcut icon" type="image/png">

        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />  
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" /> 
        <!--JPages CSS-->
        <link href="CSS/jPages.css" rel="stylesheet" type="text/css" />
        <!--Bootstrap-DatePicker CSS-->
        <link href="CSS/datepicker.css" rel="stylesheet" type="text/css"/>
        <!--Timepicker CSS-->
        <link href="CSS/bootstrap-timepicker.css" rel="stylesheet">
        <!--Pagina de perfil CSS-->
        <link href="CSS/estilos_pag_perfil.css" rel="stylesheet" type="text/css" />  
        <!--Jcrop CSS-->
        <link href="CSS/jquery.Jcrop.min.css" rel="stylesheet" type="text/css" />

        <link href="CSS/calendar.css" rel="stylesheet" type="text/css" />

        <!--Jquery JS-->
        <script src="jquery/jquery-2.0.0.min.js" type="text/javascript"></script>
        <!--Jcrop JS-->
        <script src="jquery/jquery.Jcrop.min.js" type="text/javascript"></script>
        <!--Bootstrab JS-->
        <script src="bootstrap-3.1.1/js/bootstrap.js" type="text/javascript"></script>      
        <!--JPages JS-->
        <script src="jquery/jPages.js" type="text/javascript"></script> 
        <!--Bootstrap-DatePicker JS-->
        <script src="jquery/bootstrap-datepicker.js"></script>
        <!--Timepicker JS-->
        <script src="jquery/bootstrap-timepicker.js"></script>
        <!--Pagina Perfil JS-->
        <script src="jquery/perfil_mod.js" type="text/javascript"></script>        
        <!--General--> 
        <script src="jquery/general.js" type="text/javascript"></script>
        <!--Validaciones del panel de configuración de los arrendatarios-->
        <script src="jquery/validaciones_panel_configuraciones.js" type="text/javascript"></script>
        <!--Validaciones Pagina Perfil-->
        <script src="jquery/validacion_perfil_mod.js" type="text/javascript"></script>
        <!--Login JS-->
        <script src="jquery/login.js" type="text/javascript"></script>

        

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
<!--        <div style="background-color: white;width: 100%;height: 55px" id="sending-request" >-->
<!--            <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">-->
<!--                <span class="sr-only">80% Complete (danger)</span>-->
<!--            </div>-->
<!--        </div>-->



        <input id="validarCompleteCampo" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_completeCampo;
        ?>">
        <input id="validarCorreo" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_correo;
        ?>">
        <input id="verificandoUsuario" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_verificandoUsuario;
        ?>">
        <input id="validarPrecio" type="hidden" value= "<?php
        require ("language_config.php");
        echo text_validar_precio;
        ?>">
        <input id="language" type="hidden" value= "<?php
        require ("language_config.php");
        echo language;
        ?>">
        <div id="body_container" class="container-fluid">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                <?php
                $negocioId = $_SESSION['id_negocio'];
                echo '<input id="sesion" type="hidden" value= "'.$negocioId.'">';
                require ("language_config.php");
                require ("modulos/modulos_pag_login/barra_mod.php");

                if (!isset($_SESSION['usuario'])) {                   
                    if (isset($_GET['var'])) {
                        $id = $_GET['var'];
                        if (comprobar_id_negocio($id)) {
                            modificar_visitas($id);
                            $_SESSION['id_negocio'] = $id;
                        } else {
                            header("Location:rentals");
                        }

                    } else {
                        header("Location:rentals");
                    }
                    echo '<h1 class="perfil-title">'.$nombre_municipio.' - ' .$info['nombre'].'</h1><br/>';
                    $id = $_SESSION['var'];
                }
                else{
                    $utc = date('U');
                    $anio = date('Y');
                    $mes = date('m');
                    $dia = date('d');
                    $hora = date('h');
                    $minuto = date('i');
                    $segundo = date('s');
                    $usuariolog = mostrar_id_usuario_from_usuario($_SESSION['usuario']);
                    insertar_logs($utc,$anio,$mes,$dia,$hora,$minuto,$segundo,$usuariolog);

                    $nombre = mostrar_nombre_arrendatario($_SESSION['usuario']);
                    echo '<h1 class="perfil-title">Bienvenido a su perfil, '.$nombre.'</h1>';
                }

                require ("modulos/modulos_pag_perfil/header_mod.php");

                echo '<div class = "row">';
                require ("modulos/modulos_pag_perfil/informacion_principal_mod.php");
                require ("modulos/modulos_pag_perfil/caracteristicas_mod.php");
                require ("modulos/modulos_pag_perfil/comodidades_mod.php");
                require ("modulos/modulos_pag_perfil/calendar.php");
                require ("modulos/modulos_pag_perfil/rental_description_mod.php");

//                require ("modulos/modulos_pag_perfil/calendar.php");
                require ("modulos/modulos_pag_perfil/rental_services.php");
                echo '</div>';
                if (!isset($_SESSION['usuario'])) {
                    $preview_page = ir_pag_anterior($id);
                    $next_page = ir_pag_superior($id);

                    echo '<div class="hidden-xs" style="text-align: center;margin-bottom: 5px">';
                    if($preview_page){
                        echo '<a type="button" href="'.$preview_page.'"> <span class="glyphicon glyphicon-chevron-left switch-pages"></span></a>';
                    }
                    echo'<input type="button" value="'. text_perfil_reservar .'" class="btn btn-danger btn-lg" data-toggle = "modal" data-target = "#reservar">
                        <a class="btn btn-lg" style="background-color: indianred" href="preview-search">'.text_perfil_ir_atras.'</a>';
                    if($next_page){
                        echo '<a type="button" href="'.$next_page.'"> <span class="glyphicon glyphicon-chevron-right switch-pages"></span></a>';
                    }
                    echo '</div>';


                }

                require ("modulos/modulos_pag_perfil/galeria_imagenes_mod.php");
                if (!isset($_SESSION['usuario'])) {
                    require ("modulos/modulos_pag_perfil/near_rentals.php");
                }
                require ("modulos/modulos_pag_perfil/comentarios_mod.php");
                ?>
            </nav>

        </div>
<!--        <div class="btn_subir visible-lg"><a href="#body_container"><span class="glyphicon glyphicon-arrow-up"></span></a></div>-->


<div class="sending" id="sending-request">
    <div id="progress-bar-div">
        <h3 style="text-align: center">Enviando Solicitud ...</h3>
        <div class="progress">
            <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                <span class="sr-only">80% Complete (danger)</span>
            </div>
        </div>
    </div>
    <div id="reservacion_enviada" class="alert alert-success" role="alert" style="display: none">
        <?php
        require ("language_config.php");
        echo text_perfil_envio_de_reservacion;
        ?>
    </div>
</div>
<script src="jquery/calendar.js" type="text/javascript"></script>
    </body>
    <?php
    require ("modulos/modulos_pag_login/footer_mod.php");
    cerrar_conexion();
    ?>
</html>

