
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 contenedor_foto_perfil">
    <label id="perfilLabel" style="margin-top: 8px; border-radius: 1px" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
    <img id="foto_perfil" class="perfil">
    <div class="cont_opciones_perfil">
        <button class = "btn cambiar_foto_perfil">
            <img class="" src = "imagenes/add.png">
        </button>
        <input id="afile" name = "archivo" type = "file" class = "file" size = "1" accept = "image/jpeg">
    </div>
</div>

<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12 cont_msg">
    <div class="alert alert-info info1">
        <b>
            <?php
            require ("language_config.php");
            echo text_atencion;
            ?>
        </b><br>
        <?php
        require ("language_config.php");
        echo text_atencion1;
        ?> 
        <br><?php
        require ("language_config.php");
        echo text_atencion2;
        ?> 
        <br><?php
        require ("language_config.php");
        echo text_atencion3;
        ?> 
        <br><?php
        require ("language_config.php");
        echo text_atencion4;
        ?> 
    </div>
    <a id="alert_Jcrop" class="alert_Jcrop hidden-xs" href="" data-toggle = "modal" data-target = "#recortar_imagen">
        <div class="alert alert-info info2"><b><?php require ("language_config.php"); echo text_atencion;?> </b><?php require ("language_config.php"); echo text_crear_cuenta_pulse_aqui;?></div>
    </a>
</div>

<div class="modal fade" id="recortar_imagen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg visor_recortar_imagen_perfil">
        <div class="modal-content" style="background-color: transparent; box-shadow:none; border:none;">
            <div class="modal-body"></div>  
            <center>
                <input type="hidden" id="x" name="x" />
                <input type="hidden" id="y" name="y"/>
                <input type="hidden" id="w" name="w"/>
                <input type="hidden" id="h" name="h" />
                <span class = "glyphicon glyphicon-remove btn_galeria" data-dismiss = "modal"><span class="btn_galeria_cancelar"><?php require ("language_config.php"); echo text_perfil_cerrar;?></span></span>
                <span class = "glyphicon glyphicon-ok btn_galeria recortar" data-dismiss = "modal"><span class="btn_galeria_aceptar"><?php require ("language_config.php"); echo text_perfil_aceptar;?></span></span>
            </center>
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

<div class="modal fade" id="mal_formato" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog"><div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php require ("language_config.php"); echo text_perfil_arhivoNoValido;?></h4>
            </div>
            <div class="modal-body"><h4><?php require ("language_config.php"); echo text_perfil_arhivoNoValidoDescp;?></h4></div>
            <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" data-dismiss="modal"><?php require ("language_config.php"); echo text_perfil_aceptar;?> </button>
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




