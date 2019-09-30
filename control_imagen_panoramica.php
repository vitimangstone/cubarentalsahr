<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

$src = $_POST['imagen'];
$tipo = $_POST['type'];
$x = $_POST['x'];
$y = $_POST['y'];
$w = $_POST['w'];
$h = $_POST['h'];

$img_origen = imagecreatefromjpeg($src);
$img_destino = ImageCreateTrueColor($w, $h);

imagecopyresampled($img_destino, $img_origen, 0, 0, $x, $y, $w, $h, $w, $h);
unlink("negocios_imagenes/" . $_SESSION['id_negocio'] . "/portada.jpeg");
imagejpeg($img_destino, "negocios_imagenes/" . $_SESSION['id_negocio'] . "/portada.jpeg");

if (!existe_panoramica($_SESSION['id_negocio'])) {
    insertar_imagen("", "negocios_imagenes/" . $_SESSION['id_negocio'] . "/portada.jpeg", "image/jpeg", $_SESSION['id_negocio'], "panoramica");
}
cerrar_conexion();
?>
