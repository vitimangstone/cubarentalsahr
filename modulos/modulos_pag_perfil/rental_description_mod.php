<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 panel-title panel-title-con-opciones">
                    <?php require ("language_config.php"); echo text_descripcion_total;?>
                </div>
                <?php
                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="editar_description" class = "btn col-lg-2 col-md-2 col-sm-2 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#description-modal">
                    <img class="" src = "imagenes/gtk-edit.png">
                    </button>';
                }
                ?>
            </div>
        </div>
        <div id="itemContainer6" class="panel-body" style="height: 300px; overflow-y: auto">
            <?php
            $imagen = mostrar_imagen_perfil($_SESSION['id_negocio']);
            $description = mostrar_description_por_id($_SESSION['id_negocio']);
            echo '<img style="height: 100px;width: 100px;float: left;margin:0 10px 10px 0" src="' . $imagen . '">';
            echo '<p id="description-by-user"> '.$description.'</p>';
            ?>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="description-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_editarDescripcion;?></h4>
            </div>
            <form action="control_description_mod.php" method="post">
                <div class="modal-body">
                    <textarea class="form-control" rows="4" id="description-text"></textarea>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_description" data-dismiss="modal" type="button" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php
/**
 * Created by PhpStorm.
 * User: VitimanGS
 * Date: 13/11/2016
 * Time: 4:59
 */ 