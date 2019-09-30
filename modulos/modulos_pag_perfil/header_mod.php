
<div class="row" style="margin-bottom: 15px;">
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">

        <div class="contenedor_foto_perfil">
            <?php
            if (isset($_SESSION['usuario']))
                echo '<div class="dropdown cont_opciones_perfil">
                      <button class = "btn cambiar_foto_perfil" data-toggle="dropdown" href="#">
                      <img class="" src = "imagenes/gtk-edit.png">
                      </button>
                      <ul class="dropdown-menu dropdown-menu-right dropdown_perfil" role="menu" aria-labelledby="dropdownMenu1">
                      <li><div class = "contenedor_cargar_perfil">
                      <span class="glyphicon glyphicon-open"></span> ' . text_perfil_cargarImagen . '
                      <input name = "file_perfil" type = "file" class = "file_perfil" size = "1" accept = "image/jpeg" title="">
                      </div></li>
                      </ul>
                      </div>';
            else {
                echo '<div class="cont_opciones_perfil visible-xs">';
                echo '<button class="btn" data-toggle = "modal" data-target = "#reservar">'.text_perfil_reservar.'</button>
                        <a class="btn" style="background-color: indianred" href="cliente.php">'.text_perfil_ir_atras.'</a>';
                echo '</div>';
            }
            $imagen = mostrar_imagen_perfil($_SESSION['id_negocio']);
            echo '<img class="foto_perfil" src="' . $imagen . '">';
            ?>
        </div>

    </div>
    <?php
    $existe_panoramica = existe_panoramica($_SESSION['id_negocio']);
    $info = mostrar_info_negocio($_SESSION['id_negocio']);
    echo '<div id = "contenedor2" class = "col-lg-9 col-md-9 col-sm-9 hidden-xs">';
    if ($existe_panoramica) {
        $panoramica = mostrar_imagen_panoramica($_SESSION['id_negocio']);
        echo '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cont_foto_panoramica">';
        echo '<img class="foto_panoramica" src="' . $panoramica . '" style="width: 100%">';
        echo '</div>';
        if (isset($_SESSION['usuario']))
            echo '<div class="col-lg-12 arrastrador"></div>';
    } else {
        echo '<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12 cont_foto_panoramica"></div>';
    }
//    echo '<h4 class = "nombre_negocio">' . strtoupper($info['nombre']) . '</h4>';
    echo '<div class = "precio_reserva_portada">';
    require ("language_config.php");
    if (isset($_SESSION['usuario'])) {
        echo '<div class="dropdown cont_opciones_panoramica">';
        echo '<button class = "btn cambiar_foto_perfil" data-toggle="dropdown" href="#">';
        echo '<img class = "" src = "imagenes/gtk-edit.png"></button>';
        echo '<ul class = "dropdown-menu dropdown-menu-right dropdown_portada" role = "menu" aria-labelledby = "dropdownMenu1">';
        echo '<li><div class = "contenedor_cargar_portada">';
        echo '<span class="glyphicon glyphicon-open"></span>    ' . text_perfil_cargarImagen . '';
        echo '<input name = "file_panoramica" type = "file" class = "file_panoramica" size = "1" accept = "image/jpeg">';
        echo '</div></li>';
        echo '<li><a class = "eliminar_portada" data-toggle = "modal" data-target = "#eliminar_portada">';
        echo '<span class="glyphicon glyphicon-trash" style="margin: 0px 1px 0px -1px;"></span> ' . text_perfil_eliminarPortada . '</a></li>';
        echo '<li class="disabled"><a class = "guardar">';
        echo '<span class="glyphicon glyphicon-floppy-disk opcion_portada"></span> ' . text_perfil_guardarCambios . '</a></li>';
        echo '</ul></div>';
//        echo '<button class = "galeria_panoramica btn"><span class="glyphicon glyphicon-picture opcion_portada"></span></button>';
    } else {
//        echo '<button class="col-lg-12 col-md-12 col-sm-12 col-xs-12 btn reservar" style = "margin-top:5px;" data-toggle = "modal" data-target = "#reservar">' . text_perfil_reservar . '</button>';
    }
    echo '</div></div>';
    ?>
</div>


<div class="modal fade" id="reservar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require ("language_config.php");
                    echo text_perfil_reservarDescp;
                    ?></h4>
            </div>
            <form id="form_reservacion" method="post">
                <div class="modal-body">

                    <div id="contenedorNombreApellidos" class="form-group" style="margin: 0">
                        <label id="nombreApellidosLabel" for="nombreApellidos" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <input id="nombreApellidos" class="form-control" type="text" placeholder="<?php
                        require ("language_config.php");
                        echo text_perfil_reservarNombApellidos;
                        ?> * " name="nombre_completo" >    
                    </div>
                    <div id="contenedorCorreo" class="form-group" style="margin: 0">
                        <label id="correoLabel"for="correo" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <input id="correo" class="form-control" placeholder="<?php
                        require ("language_config.php");
                        echo text_arrendador_correo_repetir;
                        ?> *" name="correo" >
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorCantPersonas" class="form-group" style="margin: 0">
                                <label id="cantPersonasLabel"for="cantPersonas" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <input id="cantPersonas" class="form-control" type="number" placeholder="<?php
                                require ("language_config.php");
                                echo text_perfil_reservarCantpersonas;
                                ?> *" name="cant_viajeros" > 
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorCantHabitaciones" class="form-group" style="margin: 0">
                                <label id="cantHabitacionesLabel"for="cantHabitaciones" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <input id="cantHabitaciones"class="form-control" type="number" placeholder="<?php
                                require ("language_config.php");
                                echo text_perfil_reservarCantHab;
                                ?>  *" name="cant_habitaciones" >
                            </div>
                        </div>                               
                    </div>

                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorReservationtime1" class="form-group" style="margin: 0">
                                <label id="reservationtime1Label" for="reservationtime1" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <input type="text" name="reservation1" id="reservationtime1" class="form-control"  placeholder="<?php
                                require ("language_config.php");
                                echo text_perfil_reservarFechaEntrada;
                                ?>*"/>                    
                            </div>

                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorReservationtime2" class="bootstrap-timepicker form-group" style="margin: 0">
                                <label id="reservationtime2Label" for="reservationtime2" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <input id="reservationtime2" name="reservation2" type="text" class="form-control" placeholder="<?php
                                require ("language_config.php");
                                echo text_perfil_reservarFechaSalida;
                                ?>  *">                            
                            </div>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorPais" class="form-group" style="margin: 0">
                                <label id="paisLabel"for="pais" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <select id="pais" class="form-control"name="pais" >
                                    <option><?php
                                        require ("language_config.php");
                                        echo text_perfil_reservarPais;
                                        ?></option>
                                </select>
                            </div>      
                        </div>

                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="contenedorTimepicker" class="bootstrap-timepicker form-group " style="margin: 0">
                                <label id="timepickerLabel"for="timepicker" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                                <input id="timepicker" name="hora_llegada" type="text" class="form-control" placeholder="<?php
                                require ("language_config.php");
                                echo text_perfil_reservarHoraLlegada;
                                ?> *">                            
                            </div>
                        </div>                        
                    </div>

                    <textarea id="descripcion_reservacion" name="descripcion_reservacion" class="form-control" placeholder="<?php
                    require ("language_config.php");
                    echo text_perfil_escribeComentario;
                    ?> *" style="margin-top:5px"></textarea>
                </div>
                <div class="modal-footer">
                    <button id="cancelar_reservacion" type="button" class="btn" data-dismiss="modal"><?php
                        require ("language_config.php");
                        echo text_perfil_cerrar;
                        ?></button>
                    <button id="guardar_reservacion"  type="button" class="btn" data-dismiss="modal"><?php
                        require ("language_config.php");
                        echo text_perfil_reservacion;
                        ?></button>
                </div>
            </form>   
        </div>
    </div>
</div>


<div class="modal fade" id="eliminar_portada" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog"><div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require ("language_config.php");
                    echo text_perfil_eliminarPortada;
                    ?></h4>
            </div>
            <div class="modal-body"><h4><?php
                    require ("language_config.php");
                    echo text_perfil_eliminarPortadaDescp;
                    ?></h4></div>
            <div class="modal-footer">
                <form action="control_eliminar_imagen.php" method="post">
                    <input type="hidden" name="portada"/>
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php
                        require ("language_config.php");
                        echo text_perfil_cerrar;
                        ?></button>
                    <button type="submit" class="btn btn-primary"><?php
                        require ("language_config.php");
                        echo text_perfil_aceptar;
                        ?></button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="mal_formato" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog"><div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require ("language_config.php");
                    echo text_perfil_arhivoNoValido;
                    ?></h4>
            </div>
            <div class="modal-body"><h4><?php
                    require ("language_config.php");
                    echo text_perfil_arhivoNoValidoDescp;
                    ?></h4></div>
            <div class="modal-footer">
                <form action="control_eliminar_imagen.php" method="post">
                    <input type="hidden" name="portada"/>
                    <button class="btn btn-primary" data-dismiss="modal" data-dismiss="modal"><?php
                        require ("language_config.php");
                        echo text_perfil_aceptar;
                        ?></button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_recortar_foto_perfil" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="background-color: transparent; box-shadow:none; border:none;">                
            <!--            <div class="modal-header" style="background-color: transparent; border:none; margin-bottom: 5px;">
                            <span class = "glyphicon glyphicon-remove btn_galeria pull-right" data-dismiss = "modal"></span>                              
                        </div>                -->
            <div class="modal-body">              
                <!--<img class="imagen_recortar_perfil" src="">--> 
            </div>
            <center>
                <form action="control_imagen_perfil.php" method="post">
                    <input type="hidden" id="x" name="x" />
                    <input type="hidden" id="y" name="y"/>
                    <input type="hidden" id="w" name="w"/>
                    <input type="hidden" id="h" name="h" />
                    <input type="hidden" id="src" name="src"/>
                    <span class = "glyphicon glyphicon-remove btn_galeria" data-dismiss = "modal"><span class="btn_galeria_cancelar"><?php
                            require ("language_config.php");
                            echo text_perfil_cerrar;
                            ?></span></span>
                    <button class="btn_galeria_recortar" type="submit"><span class = "glyphicon glyphicon-floppy-disk btn_galeria recortar"></span><span class="btn_galeria_aceptar"><?php
                            require ("language_config.php");
                            echo text_perfil_guardarCambios;
                            ?></span></button>
                </form>
            </center>
        </div>
    </div>
</div>

<div class="modal fade" id="imagen_muy_grande" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require ("language_config.php");
                    echo text_perfil_aviso;
                    ?></h4>
            </div>
            <div class="modal-body">
                <h4><?php
                    require ("language_config.php");
                    echo text_perfil_avisoDescripcion;
                    ?></h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php
                    require ("language_config.php");
                    echo text_perfil_aceptar;
                    ?></button>
            </div>
        </div>
    </div>
</div>




