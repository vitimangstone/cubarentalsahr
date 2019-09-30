
<div id="header" class="panel col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
    <div class="panel-heading">
        <h1 class="panel-title">
            <?php
            require("language_config.php");
            echo text_otros_alquileres_cerca.$zona;
            ?>
        </h1>
    </div>
    <div class="panel-body" style="padding-right: 0px;">
        <?php
        $negocios = mostrar_negocios_en_zona($zona);

//        print_r($negocios);die;
        while ($row = mysqli_fetch_array($negocios)) {
            if($row['id_negocio'] != $id){
                $imagen = mostrar_imagen_perfil($row['id_negocio']);
                $info = mostrar_info_negocio($row['id_negocio']);
                $nombre_tipo_renta = mostrar_nombre_tipo_dado_id_tipo_renta($info['id_tipo_renta'], $lang);
                $cant_cuartos = mostrar_cant_cuartos($info['id_negocio']);
                $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
                $id_provincia = mostrar_id_provincias_dado_id_municipio($id_municipio);
                $nombre_provincia = mostrar_nombre_provincia_dado_id_provincia($id_provincia);
                $nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
                $nombre_zona = mostrar_nombre_zona_dado_id_zona($info['id_zona']);
                $real_name = $row['nombre'];
                $generated_name = str_replace(" ","",$real_name);
                $generated_name = str_replace("ó","o",$generated_name);
                $generated_name = str_replace("ñ","n",$generated_name);
                echo '<div class="contenedor_imagenes1" style="margin-right: 11px;">';
                echo "<a style = 'color:white;' href = '".$generated_name."'>";
                echo "<div class='selector_negocio'><div style='height:55px;'>
                    <h4 class='text-center'>" . $info['nombre'] . "</h4></div>";
                echo '<div>';
                if ($cant_cuartos > 1)
                    echo '<p class="text-center" style="margin-bottom:0px;">' . $cant_cuartos . ' ' . text_habitaciones . '</p>';
                else
                    echo '<p class="text-center" style="margin-bottom:0px;">' . $cant_cuartos . ' ' . text_habitacion . '</p>';
//            echo '<span>' . $nombre_provincia . '</span><br>';
//            echo '<span>' . $nombre_municipio . '</span><br>';
                echo '<p class="text-center" style="margin-bottom:0px;">' . $nombre_zona . '</p>';
                echo '<p class="text-center">' . $info['precio'] . 'CUC/' . text_cliente_noche . '</p>';
                echo "</div></div>";
                echo '<img class = "foto_perfil1" src = "' . $imagen . '">';
                echo "</a>";
                echo '</div>';
            }

        }
        ?>
    </div>
</div>
