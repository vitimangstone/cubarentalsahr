
<div id="galeria_imagenes" class="panel">
    <div class="panel-heading panel-heading-con-opciones">
        <div class="row">
            <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 panel-title panel-title-con-opciones">
                <?php require ("language_config.php"); echo text_perfil_galeria_imagenes;?>
            </div>            
            <?php
            if (isset($_SESSION['usuario'])) {
                echo
                '<div class="contenedor_file col-lg-1 col-md-1 col-sm-1 col-xs-12">
                    <div class="row"> 
                    <div class="contenedor_file col-lg-8 col-md-8 col-sm-12 col-xs-12 pull-right">
                    <input class = "file_extra" type="file" name="fotos_extras[]" size="1" accept="image/*" multiple="">
                    <div class="row"> 
                        <button class = "col-lg-12 col-md-12 col-sm-12 col-xs-12 btn panel-opcion add_img">
                        <img src = "imagenes/add.png">
                        </button>       
                    </div>                                                          
                 </div></div></div>';
            }
            ?>   

        </div>
    </div>
    <div id="itemContainer" class="panel-body"
        <!--Cargar imagenes-->  
    </div>
    <div class="panel-footer" style="display: none">
        <div id="holder" class="holder"></div>
    </div>

    <div class="modal fade" id="eliminar_imagen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_eliminarImg;?></h4>
                </div>
                <div class="modal-body">
                    <h4><?php require ("language_config.php"); echo text_perfil_eliminarImg;?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="btn_eliminar_imagen" type="button" data-dismiss="modal" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_aceptar;?></button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="imposible_eliminar_imagen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_aviso;?></h4>
                </div>
                <div class="modal-body">
                    <h4><?php require ("language_config.php"); echo text_perfil_eliminarMenos4Img;?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_aceptar;?></button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="imposible_add_imagen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_aviso;?></h4>
                </div>
                <div class="modal-body">
                    <h4><?php require ("language_config.php"); echo text_perfil_agregarMas12Img;?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_aceptar;?></button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="imagen_muy_grande" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_aviso;?></h4>
                </div>
                <div class="modal-body">
                    <h4><?php require ("language_config.php"); echo text_perfil_avisoDescripcion;?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_aceptar;?></button>
                </div>
            </div>
        </div>
    </div>

    <input id="eliminarDescp" type="hidden" value= "<?php require ("language_config.php"); echo text_perfil_eliminarImagen;?>">
    <input id="eliminarTitle" type="hidden" value= "<?php require ("language_config.php"); echo text_perfil_eliminarImg;?>">
</div>

