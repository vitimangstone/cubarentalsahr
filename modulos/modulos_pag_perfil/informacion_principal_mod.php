<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-12 panel-title panel-title-con-opciones">
                    <?php
                    require ("language_config.php");
                    echo text_inf_principal;
                    ?>
                </div>
                <?php
                if (isset($_SESSION['usuario'])) {
                    echo
                    '<button id="editar_boton" class = "btn col-lg-2 col-md-2 col-sm-1 col-xs-12 panel-opcion" data-toggle = "modal" data-target = "#informacion_principal">
                        <img class="" src = "imagenes/gtk-edit.png">
                        </button>';
                }
                ?>
            </div>
        </div>
        <div id="itemContainer4" class="panel-body" style="height: 300px;">
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="informacion_principal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"> <?php require ("language_config.php"); echo text_perfil_editarInfPrincipal;?></h4>
            </div>
            <form action="control_rento_mod.php" method="post">
                <div class="modal-body">
                    <?php
                    if (isset($_SESSION['lang'])) {

                        $lang = $_SESSION['lang'];

                    } else if (isset($_COOKIE['lang'])) {

                        $lang = $_COOKIE['lang'];

                    } else {

                        $lang = 'en';
                    }
                    $info = mostrar_info_negocio($_SESSION['id_negocio']);
                    $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
                    $nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
                    $id_provincia = mostrar_id_provincias_dado_id_municipio($id_municipio);
                    $nombre_provincia = mostrar_nombre_provincia_dado_id_provincia($id_provincia);
                    $nombre_zona = mostrar_nombre_zona_dado_id_zona($info['id_zona']);
                    $municipios = mostrar_municipios($id_provincia);
                    //$nombre_tipo_renta = mostrar_nombre_tipo_dado_id_tipo_renta($info['id_tipo_renta'], $lang);
                    $zonas = mostrar_zona($id_municipio);
                    echo '<input maxlength="25" id="nombre_negocio" type="text" name="nombre_negocio" class="form-control" placeholder="'.text_nombre_negocio_cuenta.'" required="" value="' . $info['nombre'] . '">';
                    ?>

                    <SELECT id="tipo_renta" class="form-control" name="tipo_renta">

                    </SELECT>

                    <SELECT id="provincia" class="form-control" name="provincia">

                    </SELECT>

                    <SELECT id="municipio" class="form-control" name="municipio">

                    </SELECT>

                    <SELECT id="zona" class="form-control" name="zona">

                    </SELECT>

                    <?php

                    echo '<textarea id="direccion" name="direccion" class="form-control" required="" placeholder = "'.text_direccion_cuenta.'">' . $info['direccion'] . '</textarea>';
                    echo '<input maxlength="4" id="precio" type="number" class="form-control" placeholder="'.text_cliente_precio.' CUC/'.text_cliente_noche.'" name="precio" required="" value=' . $info['precio'] . '>';
                    ?>
                    <span class="help-block">
                        <?php require ("language_config.php"); echo text_perfil_tengaEnCuenta;?>
                    </span>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_cerrar;?></button>
                    <button id="guardar_cambios" data-dismiss="modal" type="button" class="btn"><?php require ("language_config.php"); echo text_perfil_guardarCambios;?></button>
                </div>
            </form>
        </div>
    </div>
</div>
