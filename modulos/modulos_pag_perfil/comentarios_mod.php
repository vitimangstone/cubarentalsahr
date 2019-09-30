<div class="panel">
    <div class="panel-heading panel-heading-con-opciones">
        <div class="row">
            <div class="col-lg-11 col-md-10 col-sm-11 col-xs-12 panel-title panel-title-con-opciones">
                <?php require ("language_config.php"); echo text_perfil_comentarios;?>
            </div>            
            <?php
            if (!isset($_SESSION['usuario'])) {
                echo '<button class="btn col-lg-1 col-md-1 col-sm-1 col-xs-12 panel-opcion add_imagen_galeria" data-toggle = "modal" data-target = "#comentar">
                    <img class="" src = "imagenes/comentarios.png">
                    </button>';
            }
            ?>           
        </div>
    </div>
    <div id="itemContainer1" class="panel-body" style="border-radius: 0px;">		
    </div> 
    <div class="panel-footer">
        <div id="holder" class="holder1"></div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="comentar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">   <?php require ("language_config.php"); echo text_perfil_escribeComentario;?></h4>
            </div>

            <div class="modal-body">
                <div id="contenedornombre_comentario" class="form-group" style="margin: 0">
                        <label id="nombre_comentarioLabel" for="nombre_comentario" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                        <input id="nombre_comentario" class="form-control" type="text" placeholder="<?php require ("language_config.php"); echo text_perfil_nombreComentario;?>" name="nombre_comentario"> 
                </div>
                
                <div id="contenedordescripcion_comentario" class="form-group" style="margin: 0">
                    <label id="descripcion_comentarioLabel" for="descripcion_comentario" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                    <textarea id="descripcion_comentario" class="form-control" maxlength="250" placeholder="<?php require ("language_config.php"); echo text_perfil_redacteComentario;?>" name="descripcion_comentario" style="height: 100px;" required=""></textarea>
                </div>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                <button id="boton_comentarios" type="button" data-dismiss="modal" class="btn"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
            </div>

        </div>
    </div>
</div>