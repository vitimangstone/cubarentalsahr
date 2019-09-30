
<footer class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 15px;">

    <!--<hr class="separador"/>-->
    <div class="col-md-3 col-sm-6 col-xs-12 hidden-xs">

        <h4 style="color: white">
            <?php
            require ("language_config.php");
            echo text_about_footer;
            ?>
        </h4>

        <p class="text-muted">
            <?php
            require ("language_config.php");
            echo text_promocion_footer;
            ?></p>


        <!--        <a class="leer_mas" href="" data-toggle="modal" data-target="#sobre_CPF">
        <?php
        require ("language_config.php");
        echo text_read_footer;
        ?>
                </a>-->

    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 hidden-xs">

        <h4 style="color: white">
            <?php
            require ("language_config.php");
            echo text_benefits_footer;
            ?>
        </h4>
        <ul style="padding-left: 15px;">
            <li class="text-muted">
                <?php
                require ("language_config.php");
                echo text_benefits_rents_footer;
                ?>

            </li>
            <li class="text-muted">
                <?php
                require ("language_config.php");
                echo text_benefits1_rents_footer;
                ?>
            </li>
            <li class="text-muted">
                <?php
                require ("language_config.php");
                echo text_benefits2_rents_footer;
                ?>
            </li>
        </ul>

        <a class="leer_mas" href="" data-toggle="modal" data-target="#beneficios">
            <?php
            require ("language_config.php");
            echo text_read_footer;
            ?>
        </a>

    </div>

    <div class="col-md-3 col-sm-6 col-xs-12 hidden-xs">

        <h4 style="color: white">
            <?php
            require ("language_config.php");
            echo text_visit_footer;
            ?>
        </h4>

        <a href="https://facebook.com/cubarentalsahr" style="text-decoration: none"><img id="facebook" title="facebook" data-toggle="tooltip" data-placement="bottom" class="ico_red_social" style="width: 21%;" src="imagenes/Facebook1.png"></a>
        <a href="https://twitter.com/CubaRentalsAHR" style="text-decoration: none"><img id="twitter" title="twitter" data-toggle="tooltip" data-placement="bottom" class="ico_red_social" style="width: 21%;" src="imagenes/Twitter1.png"></a>
<!--        <a href="#"><img class="ico_red_social" style="width: 21%;" src="imagenes/Github.png"></a>
        <a href="#"><img class="ico_red_social" style="width: 21%;" src="imagenes/RSS.png"></a>-->

        <br><br>

        <p class="text-muted" style="margin-top: -9px;">
            <?php
            require ("language_config.php");
            echo text_visit1_footer;
            ?>
        <p class="text-muted">

    </div>

    <p class="text-muted subtexto_contador_registros visible-xs text-center">
        <?php
        require ("language_config.php");
        echo text_inmuebles_registrados_footer;
        ?>
    </p> 

    <div class="col-md-3 col-sm-6 col-xs-12 text_contador_registros">

        <h4 class="hidden-xs" style="color: white; margin-bottom: -6px;">
            <?php
            require ("language_config.php");
            echo text_inmuebles_registrados_footer;
            ?>
        </h4>       
        <center>
            <span class="text-muted contador_registros text-center">
                <?php
                conexion();
                $cant_registros = mostrar_cant_de_registros();
                echo $cant_registros
                ?>
            </span>
        </center>
        <p class="text-muted subtexto_contador_registros hidden-xs" style="clear: both">
            <?php
            require ("language_config.php");
            echo text_rents_footer;
            ?>
        </p>
    </div>

    <div class = "row visible-xs">
        <div class="cont_link_sobre_nosotros col-xs-9" data-toggle="modal" data-target="#sobre_CPF">
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
    <div class = "row visible-xs">
        <div class="cont_link_sobre_nosotros cont_link_beneficios col-xs-9" style="margin-top: 10px;" data-toggle="modal" data-target="#beneficios" >
            <center>
                <a data-toggle="modal" data-target="#beneficios" class="link_sobre_nosotros link_beneficios">
                    <?php
                    require ("language_config.php");
                    echo text_benefits_footer;
                    ?>
                </a>
            </center>
        </div>
        <div class="col-xs-2 visible-xs" style="padding-left: 0px; margin-top: 5px;">
            <a href="https://twitter.com/CubaRentalsAHR" style="text-decoration: none"><img id="twitter" class="" src="imagenes/Twitter1.png"></a>
        </div>
    </div>

    <div class = "row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <br>
            <p class="text-muted text-center texto_footer">
                <?php
//                require ("language_config.php");
//                echo text_derechos_footer;
                echo 'Cuba Rentals AHR '.  date('Y').' '.text_derechos_footer;
                ?>
            </p>
        </div>
    </div>

    <div class="btn_subir visible-lg"><a href="#body_container"><span class="glyphicon glyphicon-arrow-up"></span></a></div>
</footer>

<!-- Modal About-->
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
                <?php
                require ("language_config.php");
                echo text_promocion_footer;
                ?>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php
                require ("language_config.php");
                echo text_perfil_cerrar;
                ?></button>
            </div>

        </div>
    </div>
</div>


<!-- Modal Benefits-->
<div class="modal fade" id="beneficios" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><?php
                require ("language_config.php");
                echo text_benefits_footer;
                ?></h4>
            </div>
            <div class="modal-body"> 
                <ul style="padding-left: 15px;">
            <li>
                <?php
                require ("language_config.php");
                echo text_benefits_rents_footer;
                ?>

            </li>
            <li>
                <?php
                require ("language_config.php");
                echo text_benefits1_rents_footer;
                ?>   
            </li>
            <li>
                <?php
                require ("language_config.php");
                echo text_benefits2_rents_footer;
                ?>   
            </li> 
             <li>
                <?php
                require ("language_config.php");
                echo text_benefits3_rents_footer;
                ?>   
            </li>  
             <li>
                <?php
                require ("language_config.php");
                echo text_benefits4_rents_footer;
                ?>   
            </li>  
             <li>
                <?php
                require ("language_config.php");
                echo text_benefits5_rents_footer;
                ?>   
            </li>  
             <li>
                <?php
                require ("language_config.php");
                echo text_benefits6_rents_footer;
                ?>   
            </li>  
             <li>
                <?php
                require ("language_config.php");
                echo text_benefits7_rents_footer;
                ?>   
            </li>  
        </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php
                    require ("language_config.php");
                    echo text_perfil_cerrar;
                    ?></button>
            </div>

        </div>
    </div>
</div>