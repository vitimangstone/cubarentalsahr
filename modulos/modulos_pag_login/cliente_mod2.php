<div class="panel panel-default col-xs-12 visible-xs" style="padding: 0;margin: 0" id="accordion">
    <a data-toggle="collapse" href="#collapsetwo" class="link_movil col-xs-12" id="chevron-mobile" style="padding: 0;padding-top:5px;margin: 0;color: white">
        <p class="texto_link_movil">
            <?php
            require ("language_config.php");
            echo text_why_us;
            ?>

        </p>
        <p class="glyphicon glyphicon-chevron-right visible-xs panel_icono" id="chevron"></p>
    </a>
    <div id="collapsetwo" class="panel-collapse collapse">
        <center>
            <!--                <img id="img_turista" class="img-responsive" src="imagenes/01CiudadHabana/Habana01.jpg">-->
            <div class="list-group" id="short-way-links">
                <!--                    <a href="cliente.php" class="list-group-item short-way">Casas nuevas para internet</a>-->
                <p>
                    <?php
                    require ("language_config.php");
                    echo text_our_mission;
                    ?>
                </p>
            </div>
        </center>
    </div>
</div>

<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 panel_cliente" id="explanation">
    <div class="panel" style="background: #ffffff">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 panel-title panel-title-con-opciones">
                        <span class="col-lg-12 col-sm-12 col-md-12 texto_header_cliente">
                            <?php
                            require ("language_config.php");
                            echo text_why_us;
                            ?>

                        </span>
                </div>
            </div>
        </div>
            <center>
                <div class="list-group" id="short-way-links">
                    <div class="list-group" id="short-way-links">
                        <p style="padding: 15px;font-size: 15px;text-align: justify">
                            <?php
                                require ("language_config.php");
                                echo text_our_mission;
                            ?>
                        </p>
                    </div>
                </div>

            </center>
    </div>
</div>