<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();
$descripcion = '';
if (isset($_POST['description'])){
    $descripcion = $_POST['description'];
//    print_r($descripcion);die;
    modificar_descripcion($_SESSION['id_negocio'],$descripcion);

}

$datos = mostrar_id_info($_SESSION['id_negocio']);
if (isset($_SESSION['lang'])) {

    $lang1 = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {

    $lang1 = $_COOKIE['lang'];
} else {

    $lang1 = 'en';
}

echo $descripcion;

cerrar_conexion();
?>
