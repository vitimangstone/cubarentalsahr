<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 panel-title panel-title-con-opciones">
                    <?php require ("language_config.php"); echo text_perfil_caracteristicas;?>
                </div>
                <?php
                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="btn_caracteristicas" class = "btn col-lg-2 col-md-2 col-sm-2 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#caracteristicas">
                    <img class="" src = "imagenes/gtk-edit.png">
                    </button>';
                }
                ?>    
            </div>
        </div>
        <div id="itemContainer5" class="panel-body" style="height: 300px;overflow-y: auto">

        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="caracteristicas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_editarCaracteristicas;?></h4>
            </div>
            <form action="control_caracteristicas_mod.php" method="post">
                <div id="scroll1" class="modal-body">
                    <?php
                    $caracteristicas = mostrar_caracteristicas($lang);
                    $aux = 1;
                    $cant_caract = mostrar_id_carcteristica($_SESSION['id_negocio']);
                    if (isset($_SESSION['lang'])) {

                        $lang = $_SESSION['lang'];

                    } else if (isset($_COOKIE['lang'])) {

                        $lang = $_COOKIE['lang'];

                    } else {

                        $lang = 'en';
                    }

                    while ($row = mysqli_fetch_array($caracteristicas)) {
                        echo '<div class="row">';
                        echo '<span class="col-lg-8 " style="margin-top:10px;">' . $row['descripcion_' . $lang . ''] . '</span>';
                        echo '<div class="col-lg-4">';
                        echo '<input id="cant' . $aux . '" class="form-control input-sm" name = "cant' . $aux . '" type = "number" value=0>';
                        echo '</div></div>';
                        $aux++;
                    }
                    $aux = 1;
                    while ($row = mysqli_fetch_array($cant_caract)) {
                        echo '<script>agregarValueInput(' . $row['id_caracter'] . ',' . $row['cantidad'] . ')</script>';
                    }
                    ?>
                </div>
                <div class="modal-footer">
                    <button id="cerrar_caracteristicas" type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_caracteristicas" data-dismiss="modal" type="button" class="btn btn-primary"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
                </div>
            </form>
        </div>
    </div>
</div>