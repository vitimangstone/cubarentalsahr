<div class = "row hidden">
    <div id="contact_link" class="cont_link_sobre_nosotros col-xs-9" data-toggle="modal" data-target="#sobre_CPF">
        <center>
            <a class="link_sobre_nosotros" data-toggle="modal" data-target="#sobre_CPF">
                <?php
                require ("language_config.php");
                echo text_about_footer;
                ?>
            </a>
        </center>
    </div>
    <div class="col-xs-2 visible-xs" style="padding-left: 0px; margin-top: 5px;">
        <a href="https://facebook.com/cubarentalsahr" style="text-decoration: none"><img id="facebook" class="" src="imagenes/Facebook1.png"></a>
    </div>
</div>
<div class="modal fade" id="sobre_CPF" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                    require ("language_config.php");
                    Echo text_about_footer;
                    ?></h4>
            </div>
            <div class="modal-body">
<!--                <h2>Estamos muy interesados en conocer su opinion de nuestro servicio, la opiniones de nuestros-->
<!--                cliente son nuestra razon de ser</h2>-->
                <h3>Queremos que usted forme parte de nuestro equipo, y se entere de primera mano de nuestras
                mejoras en los servicios. Si esta interesado dejenos una forma de comunicarnos</h3>
                <label for="name_visit">Inserte su nombre</label>
                <input id="name_visit" type="text" class="form-control">
                <label for="email_visit">Inserte su email</label>
                <input id="email_visit" type="text" class="form-control">
<!--                <h4>-->
<!--                    --><?php //echo $_SERVER['REMOTE_ADDR']?>
<!--                </h4>-->
                <div id="loading-checkbox">
                    <input id="checkbox-listed" type="checkbox">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="send_credentials"><?php
                    require ("language_config.php");
                    echo text_perfil_aceptar;
                    ?>
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php
                    require ("language_config.php");
                    echo text_perfil_cerrar;
                    ?>
                </button>
            </div>

        </div>
    </div>
</div>
