<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 panel-title panel-title-con-opciones">
                    <?php require ("language_config.php"); echo text_ofertas_alquires;?>
                </div>
                <?php
                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="editar_comodidades" class = "btn col-lg-2 col-md-2 col-sm-2 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#services">
                    <img class="" src = "imagenes/gtk-edit.png">
                    </button>';
                }
                ?>
            </div>
        </div>
        <div id="itemContainer7" class="panel-body" style="height: 300px; overflow-y: auto">

        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="services" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_editarComodidades;?></h4>
            </div>
            <form action="control_info_adicional_mod.php" method="post">
                <div class="modal-body">
                    <div id="services_container">

                    </div>
                </div>

                <div class="modal-footer">
                    <!--<button type="button" id="nuevo_prueba">BOTN</button>-->
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_services" data-dismiss="modal" type="button" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
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