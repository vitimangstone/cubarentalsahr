<a href="rentals" class="col-xs-12 visible-xs link_movil">
    <p class="texto_link_movil">
        <?php
        require ("language_config.php");
        echo text_promocion_medium;
        ?>
    </p>
    <p class="glyphicon glyphicon-chevron-right visible-xs panel_icono"></p>
</a>

<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 panel_cliente" id="review-all">
    <div class="panel">
            <div class="panel-heading panel-heading-con-opciones">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 panel-title panel-title-con-opciones">
                        <span class="col-lg-12 col-sm-12 col-md-12 texto_header_cliente">
                            <?php
                            require ("language_config.php");
                            echo text_promocion_medium;
                            ?>
                        </span>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="background: url(imagenes/colchon.jpg) no-repeat;height: 340px;background-size: cover;background-position: center">
            <center>
<!--                <img id="img_turista" class="img-responsive" src="imagenes/01CiudadHabana/Habana01.jpg">-->

                <a id="cliente_acces" href="rentals" class="btn" style="font-style: italic;color: red;margin-left: -125px;background-color: transparent">
                    <?php
                    require ("language_config.php");
                    echo text_turista_button;
                    ?>                    
                </a>
            </center>
        </div>
    </div>    
</div>