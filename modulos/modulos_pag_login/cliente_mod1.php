<div class="panel panel-default col-xs-12 visible-xs" style="padding: 0;margin: 0" id="accordion">
    <a data-toggle="collapse" href="#collapseone" class="link_movil col-xs-12" id="chevron-mobile" style="padding: 0;padding-top:5px;margin: 0;color: white">
        <p class="texto_link_movil">
            <?php
            require ("language_config.php");
            echo text_promocion_medium1;
            ?>
        </p>
        <p class="glyphicon glyphicon-chevron-right visible-xs panel_icono" id="chevron"></p>
    </a>
    <div id="collapseone" class="panel-collapse collapse">
        <center>
            <!--                <img id="img_turista" class="img-responsive" src="imagenes/01CiudadHabana/Habana01.jpg">-->
            <div class="list-group" id="short-way-links">
                <!--                    <a href="cliente.php" class="list-group-item short-way">Casas nuevas para internet</a>-->
                <a style="margin-top: 75px" href="old-havana-rentals" class="list-group-item short-way" id="old-havana-houses">
                    <?php
                    require("language_config.php");
                    echo text_filter_havana
                    ?>
                </a>
                <a href="havana-center-rentals" class="list-group-item short-way" id="havana-center-houses">
                    <?php
                    require("language_config.php");
                    echo text_filter_havana_center
                    ?>
                </a>
                <a href="beach-rentals" class="list-group-item short-way" id="beach-houses">
                    <?php
                    require("language_config.php");
                    echo text_filter_beaches
                    ?>
                </a>
                <a href="vedado-rentals" class="list-group-item short-way" id="vedado-houses">
                    <?php
                    require("language_config.php");
                    echo text_filter_vedado
                    ?>
                </a>
                <a href="playa-rentals" class="list-group-item short-way" id="miramar-houses">
                    <?php
                    require("language_config.php");
                    echo text_filter_playa
                    ?>
                </a>
            </div>

            <!--                <a id="cliente_acces" href="cliente.php" class="btn" >-->
            <!--                    --><?php
            //                    require ("language_config.php");
            //                    echo text_turista_button;
            //                    ?>
            <!--                </a>-->
        </center>
    </div>
</div>

<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 panel_cliente" id="short-links">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 panel-title panel-title-con-opciones">
                        <span class="col-lg-12 col-sm-12 col-md-12 texto_header_cliente">
                            <?php
                            require ("language_config.php");
                            echo text_promocion_medium1;
                            ?>
                        </span>
                </div>
            </div>
        </div>
<!--        <div class="panel-body" style="background: url(imagenes/colchon.jpg) no-repeat;height: 340px;background-size: cover;background-position: center">-->
            <center>
                <!--                <img id="img_turista" class="img-responsive" src="imagenes/01CiudadHabana/Habana01.jpg">-->
                <div class="list-group" id="short-way-links">
<!--                    <a href="cliente.php" class="list-group-item short-way">Casas nuevas para internet</a>-->
                    <a style="margin-top: 20px" href="old-havana-rentals" class="list-group-item short-way" id="old-havana-houses">
                        <?php
                            require("language_config.php");
                            echo text_filter_havana
                        ?>
                    </a>
                    <a href="havana-center-rentals" class="list-group-item short-way" id="havana-center-houses">
                        <?php
                        require("language_config.php");
                        echo text_filter_havana_center
                        ?>
                    </a>
                    <a href="beach-rentals" class="list-group-item short-way" id="beach-houses">
                        <?php
                        require("language_config.php");
                        echo text_filter_beaches
                        ?>
                    </a>
                    <a href="vedado-rentals" class="list-group-item short-way" id="vedado-houses">
                        <?php
                        require("language_config.php");
                        echo text_filter_vedado
                        ?>
                    </a>
                    <a href="playa-rentals" class="list-group-item short-way" id="miramar-houses">
                        <?php
                        require("language_config.php");
                        echo text_filter_playa
                        ?>
                    </a>
                </div>

<!--                <a id="cliente_acces" href="cliente.php" class="btn" >-->
<!--                    --><?php
//                    require ("language_config.php");
//                    echo text_turista_button;
//                    ?>
<!--                </a>-->
            </center>
<!--        </div>-->
    </div>
</div>