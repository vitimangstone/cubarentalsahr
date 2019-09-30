<?php
session_start();
require("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if (isset($_POST['imagen']) && isset($_POST['num'])) {
    $imagen = $_POST['imagen'];
    $num = $_POST['num'];
    $img_origen = imagecreatefromjpeg($imagen);   
    imagejpeg($img_origen, "negocios_imagenes/" . $_SESSION['id_negocio'] . "/galeria" . $num . ".jpeg");
    
    insertar_imagen("", "negocios_imagenes/" . $_SESSION['id_negocio'] . "/galeria" . $num . ".jpeg", "image/jpeg", $_SESSION['id_negocio'], "galeria");
} else {
    echo '<script> $("div.holder").jPages({
        containerID: "itemContainer",
        first: "\u25c4◄",
        last: "\u25ba►",
        next: "\u25ba",
        previous: "\u25c4",
        perPage: 12,
        midRange: 6
        });</script>';
}
$negocioId = $_SESSION['id_negocio'];
$datos = mostrar_imagenes($negocioId);
$aux = 2;
while ($row = mysqli_fetch_array($datos)) {
    echo '<div class="contenedor_imagenes" name="' . $row['id_imagen'] . '">';
    if (isset($_SESSION['usuario'])) {
        echo '<div class="contenedor_opciones_imagen">                
                <button name="' . $row['id_imagen'] . '" class = "btn eliminar"><span class="glyphicon glyphicon-trash"></span></button>
              </div>';
    }
    echo '<img title="' . $row['imagen'] . '" name="' . $row['id_imagen'] . '" class="imagen2" src="' . $row['imagen'] . '">
          </div>';

    $aux++;
}

cerrar_conexion();
?>

<div class="modal fade" id="visor_imagenes" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="background-color: transparent; box-shadow:none; border:none;">                
            <div class="modal-header" style="background-color: transparent; border:none; margin-bottom: 5px;">
                <span class = "glyphicon glyphicon-remove btn_galeria" style="position: absolute;right: 0px;z-index: 10;" data-dismiss = "modal"></span>                              
            </div>                
            <div class="modal-body"> 
                <center>
                    <?php
                    conexion();
                    $aux = 1;
                    $datos = mostrar_imagenes($_SESSION['id_negocio']);
                    while ($row = mysqli_fetch_array($datos)) {
                        echo '<img id="' . $row['id_imagen'] . '" name="' . $aux . '" class="imagen_mini img-circle" src="' . $row['imagen'] . '">&nbsp;';

                        $aux++;
                    }
                    cerrar_conexion();
                    ?>
                </center>
                <br>
                <center>
                    <span id="imagen_anterior" class = "glyphicon glyphicon-chevron-left btn_galeria"></span>
                    <?php echo '<span id="imagen_siguiente" class = "glyphicon glyphicon-chevron-right btn_galeria" name="' . $aux . '"></span>'; ?>
                </center>
            </div>                
        </div>
    </div>
</div>

<script>
    var max_image = $('.imagen_mini').length;
    var current = 0;

    $('.eliminar').click(function() {
        var id = $(this).attr('name');
        if ($('.contenedor_imagenes').length > 4) {
            eliminar_imagen(id);
        } else {
            $('#imposible_eliminar_imagen').modal();
        }
    });

    $('.file_extra').hover(function() {
        $('.add_img').css("background-color", "#97110e");
        $('.add_img').css("border-color", "#97110e");
    }, function() {
        $('.add_img').css("background-color", "#760300");
        $('.add_img').css("border-color", "#760300");
    })

    $('.imagen2').click(function() {
        if ($('.imagen_visor').length > 0)
            $('.imagen_visor').remove();
        var id_imagen = $(this).attr("title");
        $('#visor_imagenes .modal-body').prepend('<center><img class="imagen_visor img-responsive" src="' + id_imagen + '"></center>');
        $('.imagen_mini').removeClass("imagen_mini_activa");        
        $('#' + $(this).attr("name") + '').addClass("imagen_mini_activa");
        current = $('.imagen_mini_activa').attr("name");
        $('#visor_imagenes').modal();
    });

    $('#imagen_anterior').click(function() {
        $('.imagen_visor').remove();
        if (current > 1)
            current--;
        else
            current = max_image;
        $('.imagen_mini').removeClass("imagen_mini_activa");
        $('.imagen_mini[name=' + current + ']').addClass("imagen_mini_activa");
        var src = $('.imagen_mini[name=' + current + ']').attr("src");
        $('#visor_imagenes .modal-body').prepend('<center><img class="imagen_visor img-responsive" src="' + src + '"></center>');
    });

    $('#imagen_siguiente').click(function() {
        $('.imagen_visor').remove();
        if (current < max_image)
            current++;
        else
            current = 1;
        $('.imagen_mini').removeClass("imagen_mini_activa");
        $('.imagen_mini[name=' + current + ']').addClass("imagen_mini_activa");
        var src = $('.imagen_mini[name=' + current + ']').attr("src");
        $('#visor_imagenes .modal-body').prepend('<center><img class="imagen_visor img-responsive" src="' + src + '"></center>');
    });


        $('.imagen_mini').click(function() {
            current = $(this).attr("name");
            $('.imagen_visor').remove();
            $('.imagen_mini').removeClass("imagen_mini_activa");
            $(this).addClass("imagen_mini_activa");
            var src = $(this).attr("src");
            $('#visor_imagenes .modal-body').prepend('<center><img class="imagen_visor img-responsive" src="' + src + '"></center>');
        });
        i++;
    

</script>