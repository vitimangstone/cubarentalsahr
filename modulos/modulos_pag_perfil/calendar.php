<div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">

                <?php
                require ("language_config.php");
                echo '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 panel-title panel-title-con-opciones">
                    '.calendario.'
                </div>';

                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="editar_comodidades" class = "btn col-lg-2 col-md-2 col-sm-2 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#comodidades">
                    <img class="" src = "imagenes/gtk-edit.png">
                    </button>';
                }
                ?>
            </div>
        </div>
        <div>
            <div id="page-body">
                <!-- [PERIOD SELECTOR] -->
                <div id="cal-date">
                    <select id="cal-mth"></select>
                    <select id="cal-yr"></select>
                    <input id="cal-next" type="button" value="NEXT" class="pull-right"/>
                    <input id="cal-prev" type="button" value="PREV" class="pull-right"/>
                </div>
                <?php 
                    echo '<input type="text" style="display: none" id="negocio_activo" value="'.$_SESSION['id_negocio'].'"/>' 
                ?>
                
                <!-- [CALENDAR] -->
                <div id="cal-container"></div>

                <!-- [EVENT] -->
                <div id="cal-event"></div>

                <div class="save-section">
                    <button class="btn btn-danger" id="save-calendar-button"><?php echo text_perfil_guardarCambios?></button>            
                </div>
            </div>
        </div>
<!--        <div id="itemContainer7" class="panel-body" style="height: 300px; overflow-y: auto">-->
<!---->
<!--        </div>-->
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="calendar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_editarComodidades;?></h4>
            </div>
            <form action="control_info_adicional_mod.php" method="post">
                <div class="modal-body">
                    <div id="calendar_contenedor">

                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_calendar" data-dismiss="modal" type="button" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
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