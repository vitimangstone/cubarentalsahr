<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 panel-title panel-title-con-opciones">
                    <?php require ("language_config.php"); echo text_perfil_comodidades;?>
                </div>
                <?php
                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="editar_comodidades" class = "btn col-lg-2 col-md-2 col-sm-2 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#comodidades">
                    <img class="" src = "imagenes/gtk-edit.png">
                    </button>';
                }
                ?>    
            </div>
        </div>
        <div id="itemContainer3" class="panel-body" style="height: 300px; overflow-y: auto">

        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="comodidades" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_editarComodidades;?></h4>
            </div>
            <form action="control_info_adicional_mod.php" method="post">
                <div class="modal-body">                
                   <?php 
                   if(isset($_SESSION['lang'])){
                    $lang = $_SESSION['lang'];
                }else if(isset($_COOKIE['lang'])){
                    $lang = $_COOKIE['lang'];
                } else {
                    $lang = 'en';
                }
                $info_adicional = mostrar_descripcion_from_info_adicional($lang);
                $info_adicional1 = mostrar_id_info($_SESSION['id_negocio']);
                $aux = 1;
                while ($row = mysqli_fetch_array($info_adicional)) {
                    echo '<div class="row">';
                    echo '<span class="col-lg-12" style="margin-bottom: 5px;">';
                    echo '<input id="checkInfo' . $aux . '" type = "checkbox" value = "off" name = "checkInfo' . $aux . '">';
                    echo '&nbsp;&nbsp;' . $row['descripcion_' . $lang . ''];
                    echo '</span>';
                    echo '</div>';
                    $aux++;
                }
                $aux = 1;
                while ($row = mysqli_fetch_array($info_adicional1)) {
                    echo "<script>marcarCheckboxInfoAdicional(" . $row['id_info'] . ")</script>";
                }
                   ?>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_comodidades" data-dismiss="modal" type="button" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
                </div>
            </form>
        </div>
    </div>
</div>