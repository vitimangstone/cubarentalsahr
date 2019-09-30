<?php

session_start();
require("modulos/modulos_pag_login/conexion_mod.php");
conexion();
if (isset($_POST['eliminar'])) {
    $id_eliminar = $_POST['eliminar'];
    $imagen = mostrar_imagen($_POST['eliminar']);
    eliminar_imagen_galeria($id_eliminar);
    unlink($imagen);
} else if (isset($_POST['portada'])) {
    $portada = mostrar_imagen_panoramica($_SESSION['id_negocio']);
    eliminar_imagen_portada($_SESSION['id_negocio']);
    unlink($portada);
}
header("Location: perfil.php");
?>
