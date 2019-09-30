
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 panel_cliente">
    <div class="panel-heading">
        <h3 class="panel-title">
            <?php
            require("language_config.php");
            echo text_publicaciones;
            ?>
        </h3>
    </div>
    <div class="panel-body" style="padding-right: 0px;">
        <?php
        cerrar_conexion();
        $conn = conexion_wordpress();
        $negocios = mostrar_posts($conn);
        while ($row = mysqli_fetch_array($negocios)){
//                    echo $row['post_title'].'</br>';
//                    echo $row['guid'].'</br>';
            $image = mostrar_img_post($conn,$row['ID']);
            echo '<a href="'.$row["guid"].'"><div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                             <img src="'.$image.'" class="img-rounded img-responsive foto_publicacion" />
                             <h2>'.$row["post_title"].'</h2>
                          </div></a>';
        }
        cerrar_wordpress_conn($conn);
        ?>
    </div>
</div>