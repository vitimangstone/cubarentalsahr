<ul class="visible-xs nav navbar-nav navbar-right">
    <li>
        <a href="login.php">
            <span class = "glyphicon glyphicon-lock"></span>
            <?php
            require ("language_config.php");
            echo text_pregunta_barra;
            ?>
        </a>
    </li>
    <li>
        &nbsp;
    <span style="color: #ffffff" class="texto_navbar">
        <?php
        require('language_config.php');
        echo text_boton_register_question
        ?>
        <a href="registro.php">Registrate</a>
    </span>
    </li>
</ul>



<form class="navbar-form navbar-right hidden-xs" role="form" action="control_de_acceso.php" method="post">
    <span class=" hidden-sm texto_navbar" style="color: white"><?php require ("language_config.php"); echo text_pregunta_barra;?></span>
<!--    <div class="form-group">-->
<!--        <input id="nombre_usuario_navbar" placeholder="--><?php //require ("language_config.php"); echo text_input1_barra;?><!-- *" class="form-control input-sm" style="margin-top: 0px;" type="text" name="usuario">-->
<!--    </div>-->
<!--    <div class="form-group">-->
<!--        <input id="contrasenna" placeholder="--><?php //require ("language_config.php"); echo text_input2_barra;?><!-- *" class="form-control input-sm" style="margin-top: 0px;" type="password" name="contra">-->
<!--    </div>-->
    <button id="boton_log_navbar" type="button" class="btn btn-success btn-sm"><?php require ("language_config.php"); echo text_boton_barra;?></button>
    &nbsp;
    <span style="color: #ffffff" class="texto_navbar hidden-sm">
        <?php
            require('language_config.php');
            echo text_boton_register_question
        ?>
    </span> <a href="registro.php" style="font-size: 18px">Registrate</a>
</form>

