<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="panel">
        <div class="panel-heading">
           <h1 class="panel-title"><?php require ("language_config.php");echo text_inf_adicional;?></h1>
        </div>
        <div class="panel-body" style="height: 350px; overflow-y: auto">
            <?Php
            conexion();
            if (isset($_SESSION['lang'])) {

                $lang = $_SESSION['lang'];

            } else if (isset($_COOKIE['lang'])) {

                $lang = $_COOKIE['lang'];

            } else {

                $lang = 'en';
            }
            $aux = 1;
            $info_adicional = mostrar_info_adicional1($lang);

            while ($row1 = mysqli_fetch_array($info_adicional)) {
                echo '<div class = "checkbox">
                <label>
                <input type = "checkbox" value = "off" name="checkInfo'.$aux.'">
                ' . $row1['descripcion_'.$lang.''] . '
                </label>
                </div>';                
                $aux++;
            }
            ?>
        </div>
    </div>
</div>