<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container col-lg-12 col-md-12 col-sm-12 col-xs-12 container-nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">
                <img src="imagenes/favicon_rentacuba.png" style="width: 35px;">
            </a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li id="bar_menu_inicio">
                    <?php
                    if (isset($_SESSION['usuario']))
                        echo '<a href = "" data-toggle = "modal" data-target = "#cerrar_sesion_a_inicio"><span class = "glyphicon glyphicon-home"></span>';
                    else
                        echo '<a href = "index.php"><span class = "glyphicon glyphicon-home"></span>';
                    echo '&nbsp;';
                    require ("language_config.php");
                    echo text_op1_barra;

                    echo '</a>';
                    ?>
                </li>
                <li id="bar_menu_negocios">
                    <?php
                    if (isset($_SESSION['usuario']))
                        echo '<a href = "" data-toggle = "modal" data-target = "#cerrar_sesion_a_negocios"><span class = "glyphicon glyphicon-th-large"></span>';
                    else
                        echo '<a href = "rentals"><span class = "glyphicon glyphicon-th-large"></span>';
                    echo '&nbsp;';
                    require ("language_config.php");
                    echo text_op2_barra;
                    echo '</a>';
                    ?>
                </li>
                <li id="bar_menu_qanda">
                    <?php
                    if (isset($_SESSION['usuario']))
                        echo '<a href = "" data-toggle = "modal" data-target = "#cerrar_sesion_a_negocios"><span class = "glyphicon glyphicon-th-large"></span>';
                    else
                        echo '<a href = "qanda.php"><span class = "glyphicon glyphicon-th-large"></span>';
                    echo '&nbsp;';
                    require ("language_config.php");
                    echo qanda_text_menu;
                    echo '</a>';
                    ?>
                </li>
                <li id="bar_menu_contactenos">
                    <a href = "" data-toggle = "modal" data-target = "#contactenos"><span class = "glyphicon glyphicon-envelope"></span> <?php
                        require ("language_config.php");
                        echo text_op4_barra;
                        ?></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-globe"></span>
                        <?php
                        require ("language_config.php");
                        echo text_op3_barra;
                        ?> <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-left" >
                        <?php
                        if (isset($_GET['lang']))
                            $languaje = $_GET['lang'];
                        else if (isset($_SESSION['lang']))
                            $languaje = $_SESSION['lang'];
                        else if (isset($_COOKIE['lang']))
                            $languaje = $_COOKIE['lang'];

                        if ($languaje == 'en') {
                            echo '<li><a id="change-language-en" style="padding-left:15px;" href="?lang=en"><span class="glyphicon glyphicon-ok"></span> English</a></li>
                                  <li><a id="change-language-es" style="padding-left:33px;" href="?lang=es">Espa&ntilde;ol</a></li>';
                        } else if ($languaje == 'es') {
                            echo '<li><a id="change-language-en" style="padding-left:33px;" href="?lang=en">English</a></li>
                                  <li><a id="change-language-es" style="padding-left:15px;" href="?lang=es"><span class="glyphicon glyphicon-ok"></span> Espa&ntilde;ol</a></li>';
                        }
                        ?>
                    </ul>
                </li>
            </ul>   
            <?php
            if (isset($_SESSION['usuario'])) {
                require("conectado_mod.php");
            } else {
                require("inicio_de_sesion_mod.php");
            }
            ?>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="cerrar_sesion_a_negocios" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require("language_config.php");
                    echo text_perfilConfig_CerrarSesion
                    ?></h4>
            </div>
            <div class="modal-body">
                <h4><?php
                    require("language_config.php");
                    echo text_perfilConfig_CerrarSesionDescp
                    ?></h4>
            </div>
            <div class="modal-footer">
                <form action="control_cerrar_sesion.php" method="post">
                    <input type="hidden" name="redirect" value="cliente">    
                    <button class="btn btn-default" data-dismiss="modal"><?php
                        require("language_config.php");
                        echo text_perfil_cerrar
                        ?></button>
                    <button type="submit" class="btn btn-primary"><?php
                        require("language_config.php");
                        echo text_perfil_aceptar
                        ?></button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="contactenos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require("language_config.php");
                    echo text_op4_barra
                    ?></h4>
            </div>
            <div class="modal-body">
                <div id="contenedor_nombre_contactenos" class="form-group" style="margin-bottom: 0; ">
                    <label id="nombre_contactanosLabel" for="nombre_contactenos" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <input id="nombre_contactenos" type="text" name="nombre_contactenos" class="form-control" placeholder="<?php
                    require("language_config.php");
                    echo text_perfil_nombreComentario
                    ?>">
                </div>
                <div id="contenedor_correo_contactenos" class="form-group" style="margin-bottom: 0; ">
                    <label id="correo_contactenosLabel" for="correo_contactenos" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <input id="correo_contactenos" type="email" name="correo_contactenos" class="form-control" placeholder="<?php
                    require("language_config.php");
                    echo text_arrendador_correo_repetir
                    ?>">
                </div>
                <div id="contenedor_mensaje_contactenos" class="form-group" style="margin-bottom: 0; ">
                    <label id="mensaje_contactanosLabel" for="mensaje_contactenos" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <textarea id="mensaje_contactenos" rows="10" name="mensaje_contactenos" class="form-control" placeholder="<?php
                    require("language_config.php");
                    echo text_contactenos_mensaje
                    ?>"></textarea>
                </div>
                <br>
                <div style="margin-bottom: -15px;"><?php
                    require("language_config.php");
                    echo text_contactenos_contactarA
                    ?>: <b>contact@cubarentalsahr.com</b>, <b>vitimangs@gmail.com</b></div>
            </div>
            <div class="modal-footer">
                <button id="cerrar_mensaje_contacto" type="button" class="btn" data-dismiss="modal"><?php
                    require("language_config.php");
                    echo text_perfil_cerrar
                    ?></button>
                <button id="btn_enviar_contactenos" type="button" class="btn"><?php
                    require("language_config.php");
                    echo text_perfil_aceptar
                    ?></button>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="cerrar_sesion_a_inicio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require("language_config.php");
                    echo text_perfilConfig_CerrarSesion
                    ?></h4>
            </div>
            <div class="modal-body">
                <h4><?php
                    require("language_config.php");
                    echo text_perfilConfig_CerrarSesionDescp
                    ?></h4>
            </div>
            <div class="modal-footer">
                <form action="control_cerrar_sesion.php" method="post">
                    <input type="hidden" name="redirect" value="index">  
                    <button class="btn btn-default" data-dismiss="modal"><?php
                        require("language_config.php");
                        echo text_perfil_cerrar
                        ?></button>
                    <button type="submit" class="btn btn-primary"><?php
                        require("language_config.php");
                        echo text_perfil_aceptar
                        ?></button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="configuraciones" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><?php
                    require("language_config.php");
                    echo text_perfilConfig_EditarCuenta
                    ?></h4>
            </div>
            <div class="modal-body">
                <?php
                conexion();
                if (isset($_SESSION['usuario'])) {
                    $nombre_arrendatario = mostrar_nombre_arrendatario($_SESSION['usuario']);
                    $apellidos = mostrar_apellidos_arrendatario($_SESSION ['usuario']);
                    $telefono_casa = mostrar_telefono_casa_arrendatario($_SESSION['usuario']);
                    $celular = mostrar_celular_arrendatario($_SESSION['usuario']);
                    $correo = mostrar_correo_arrendatario($_SESSION['usuario']);
                    $pass = mostrar_pass_arrendatario($_SESSION ['usuario']);
                    echo "<input id=\"nombreArrend\" type=\"hidden\" value='" . $nombre_arrendatario . "'/>";
                    echo "<input id=\"apellidosArrend\" type=\"hidden\" value='" . $apellidos . "'/>";
                    echo "<input id=\"telefonoArrend\" type=\"hidden\" value='" . $telefono_casa . "'/>";
                    echo "<input id=\"celularArrend\" type=\"hidden\" value='" . $celular . "'/>";
                    echo "<input id=\"correoArrend\" type=\"hidden\" value='" . $correo . "'/>";
                    echo "<input id=\"passArrend\" type=\"hidden\" value='" . $pass . "'/>";
                }
                ?>                 

                <div class="row">

                    <div id="contenedorNombreArrendatario1" class="col-md-6 col-sm-6 col-xs-12">
                        <label id="nombreArrendatarioLabel1" for="nombreArrendatario1" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <?php echo '<input id="nombreArrendatario1" type="text" name="arrendador1" class="form-control" placeholder="' . text_arrendador_nombre . '">'; ?>
                    </div>

                    <div id="contenedorApellidosArrendatario1" class="col-md-6 col-sm-6 col-xs-12">
                        <label id="apellidosArrendatarioLabel1" for="apellidosArrendatario1" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <?php echo '<input id="apellidosArrendatario1"  type="text" class="form-control" name="apellido1" placeholder="' . text_arrendador_apellidos . '">'; ?>
                    </div>
                </div>

                <div class="row">

                    <div id="contenedorTelefonoFijo1" class="col-md-6 col-sm-6 col-xs-12">
                        <label id="telefonoFijoArrendatarioLabel1" for="telefonoFijoArrendatario1" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <?php echo '<input id="telefonoFijo1" maxlength="7"  class="form-control" type="tel" placeholder="' . text_arrendador_telefono . '" name="telf_casa1">'; ?>
                    </div>

                    <div id="contenedorTelefonoMovil1" class="col-md-6 col-sm-6 col-xs-12">
                        <?php echo '<input id="telefonoMovil1" maxlength="10" class="form-control" type="tel" placeholder="' . text_arrendador_cel . '" name="telf_movil1">'; ?>
                    </div>
                </div>

                <div class="row">
                    <div id="contenedorCorreo3" class="col-md-12 col-sm-12 col-xs-12">
                        <label id="correoLabel3" for="correo3" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <?php echo '<input id="correo3" class="form-control" type="email" placeholder="' . text_arrendador_correo_repetir . '" name="correo1">'; ?>
                    </div>
                </div>  

                <div id="cambiar_contrasena">
                    <a id="flechaDerecha" class="false" style="color: #333333;"><?php
                        require("language_config.php");
                        echo text_perfilConfig_cambiarContrasenna
                        ?></a>
                </div>
                <div id="contenedor_contrasenaActual">
                    <label id="contrasenaActualLabel" for="contrasenaActual" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <input type="password" id="contrasenaActual" class="form-control" style="" placeholder="<?php echo text_perfilConfig_ContrasennaActual; ?>" name="contrasenaActual">
                </div>
                <div id="contenedorContrasenaNueva" >
                    <label id="contrasenaNuevaLabel" for="contrasenaNueva" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <input type="password" id="contrasenaNueva" class="form-control" placeholder="<?php echo text_perfilConfig_ContrasennaNueva; ?>" name="contrasenaNueva">
                </div>
                <div id="contenedorContrasenaRepetir" >
                    <label id="contrasenaRepetirLabel" for="contrasenaRepetir" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <input type="password" id="contrasenaRepetir" class="form-control" style="margin-bottom:15px;" placeholder="<?php echo text_perfilConfig_ContrasennaRepetir; ?>" name="contrasenaRepetir">
                </div>
            </div>
            <div class="modal-footer">
                <button id="cerrar_configuracion" type="button" class="btn" data-dismiss="modal"><?php
                    require("language_config.php");
                    echo text_perfil_cerrar
                    ?></button>
                <button id="aceptar_configuracion" type="button" data-dismiss="modal" class="btn"><?php
                    require("language_config.php");
                    echo text_perfil_guardarCambios
                    ?></button>
            </div>
        </div>
    </div>
</div>
