<?php

echo '<script> $("div.holder1").jPages({
        containerID: "itemContainer1",
        first: "\u25c4◄",
        last: "\u25ba►",
        next: "\u25ba",
        previous: "\u25c4",
        perPage: 10,
        midRange: 6
        });</script>';

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

$fecha_comentario = date('d/n/Y		h:i:s A');

if (isset($_POST['nombre_comentario']) && isset($_POST['descripcion_comentario']) && isset($fecha_comentario)) {

    $nombre_comentario = $_POST['nombre_comentario'];
    $descripcion_comentario = $_POST['descripcion_comentario'];
    insertar_comentario("", $_SESSION['id_negocio'], $nombre_comentario, $descripcion_comentario, $fecha_comentario);
}
$cant = mostrar_cant_comentarios($_SESSION['id_negocio']);
if ($cant > 0) {
    $comentarios = mostrar_info_comentario($_SESSION['id_negocio']);
    require ("./language_config.php");
    while ($row = mysqli_fetch_array($comentarios)) {
        echo '<div class = "col-lg-12 contenedor_comentario">';
        echo '<div class = "row">';
        echo '<div class = "col-lg-9 col-md-9 col-sm-9 col-xs-12">';
        echo '<b>' . $row['nombre_comentario'] . ' ' . text_perfil_dice . ':</b>';
        echo '</div>';
        echo '<div class = "col-lg-3 col-md-3 col-sm-3 col-xs-12">';
        echo '<span class = "badge fecha_comentario">' . $row['fecha_comentario'] . '</span>';
        echo '</div>';
        echo '<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12" style="overflow-x: hidden; width:98%;">';
        echo '<p style="margin-top:5px;">' . $row['descripcion_comentario'] . '</p>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
    }
} else {
    echo '<h4>';
    
    echo '</h4>';
}

cerrar_conexion();
?>