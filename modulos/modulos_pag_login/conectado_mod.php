<ul class="nav navbar-nav navbar-right">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-user"></span> 
            <?php
            conexion();
            require ("language_config.php");
            $nombre = mostrar_nombre_from_usuario($_SESSION['usuario']);
            echo text_saludo_barra;
            echo ', ';
			echo "<b id=\"barra_usuario\">".$nombre."</b>";
            cerrar_conexion();
            ?> 
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu dropdown-menu-right" >
            <li><a href="" data-toggle = "modal" id="configuracion" data-target = "#configuraciones"><span class="glyphicon glyphicon-cog"></span>  <?php require("language_config.php"); echo text_perfilConfig_Configuraciones?></a></li>
            <li><a href="" data-toggle = "modal" data-target = "#cerrar_sesion_a_inicio"><span class="glyphicon glyphicon-off"></span> <?php require("language_config.php"); echo text_perfilConfig_Salir?></a></li>
        </ul>
    </li>
</ul> 