<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
require ('language_config.php');
conexion();
$nombre_municipio = '';
$zona = '';
$info = '';

?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb18030">
         
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php if(!isset($_SESSION['usuario'])){
           echo '<title>'.qanda_text_title. '</title>';
        }?>
        <meta name="description" content="<?php echo qanda_text_description?>
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
        <script src="jquery/qanda.js" type="text/javascript"></script>

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


<!--        <input id="validarCompleteCampo" type="hidden" value= "--><?php
//        require ("language_config.php");
//        echo text_validar_completeCampo;
//        ?><!--">-->
<!--        <input id="validarCorreo" type="hidden" value= "--><?php
//        require ("language_config.php");
//        echo text_validar_correo;
//        ?><!--">-->
<!--        <input id="verificandoUsuario" type="hidden" value= "--><?php
//        require ("language_config.php");
//        echo text_validar_verificandoUsuario;
//        ?><!--">-->
<!--        <input id="validarPrecio" type="hidden" value= "--><?php
//        require ("language_config.php");
//        echo text_validar_precio;
//        ?><!--">-->
<!--        <input id="language" type="hidden" value= "--><?php
//        require ("language_config.php");
//        echo language;
//        ?><!--">-->
        <div id="body_container" class="container-fluid">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">


                <?php
                require ("language_config.php");
                require ("modulos/modulos_pag_login/barra_mod.php");

                echo '<div class="panel " style="background: white">';
                echo '<h1 class="panel-heading" style="color: white">'.
                    qanda_text_title;
                echo '</h1>';
                echo '<div class="panel-heading " style="background: white">';

                echo '</div>';
                echo '<div class="panel-body">';
                echo '<h2>'.
                    qanda_what_it_is;
                echo '</h2>';
                echo '<div class="jumbotron"><h3>'.
                    qanda_first_question;
                echo '</h3>';
                echo '<h4>'.
                qanda_first_question_answer;
                echo '</h4></div>';
                echo '<div class="jumbotron"><h3>'.
                qanda_second_question;
                echo '</h3>';
                echo '<h4>'.
                qanda_second_question_answer;
                echo '</h4></div>';
                echo '<div class="jumbotron"><h3>'.
                qanda_third_question;
                echo '</h3>';
                echo '<h4>'.
                qanda_third_question_answer;
                echo '</h4></div> <br/>';

                echo '<h2>'.
                    qanda_your_questions;
                echo '</h2>';

                echo '<div id="qanda_container"></div>';


                echo '
       
';

                echo '</div>';
                echo '</div>';
//                if (!isset($_SESSION['usuario'])) {
//                    $preview_page = ir_pag_anterior($id);
//                    $next_page = ir_pag_superior($id);
//
//                    echo '<div class="hidden-xs" style="text-align: center;margin-bottom: 5px">';
//                    if($preview_page){
//                        echo '<a type="button" href="'.$preview_page.'"> <span class="glyphicon glyphicon-chevron-left switch-pages"></span></a>';
//                    }
//                    echo'<input type="button" value="'. text_perfil_reservar .'" class="btn btn-danger btn-lg" data-toggle = "modal" data-target = "#reservar">
//                        <a class="btn btn-lg" style="background-color: indianred" href="preview-search">'.text_perfil_ir_atras.'</a>';
//                    if($next_page){
//                        echo '<a type="button" href="'.$next_page.'"> <span class="glyphicon glyphicon-chevron-right switch-pages"></span></a>';
//                    }
//                    echo '</div>';
//
//
//                }
//
//                require ("modulos/modulos_pag_perfil/galeria_imagenes_mod.php");
//
//                require ("modulos/modulos_pag_perfil/near_rentals.php");
//                require ("modulos/modulos_pag_perfil/comentarios_mod.php");
                ?>
            </nav>

        </div>
<!--        <div class="btn_subir visible-lg"><a href="#body_container"><span class="glyphicon glyphicon-arrow-up"></span></a></div>-->


<!--<div class="sending" id="sending-request">-->
<!--    <div id="progress-bar-div">-->
<!--        <h3 style="text-align: center">Enviando Solicitud ...</h3>-->
<!--        <div class="progress">-->
<!--            <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">-->
<!--                <span class="sr-only">80% Complete (danger)</span>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div id="reservacion_enviada" class="alert alert-success" role="alert" style="display: none">-->
<!--        --><?php
//        require ("language_config.php");
//        echo text_perfil_envio_de_reservacion;
//        ?>
<!--    </div>-->
<!--</div>-->
    </body>
    <?php
    require ("modulos/modulos_pag_login/footer_mod.php");
    cerrar_conexion();
    ?>
</html>

