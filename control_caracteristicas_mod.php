<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
require ("language_config.php");
conexion();

if (isset($_POST['cant1']) && isset($_POST['cant2']) && isset($_POST['cant3']) && isset($_POST['cant4']) && isset($_POST['cant5']) && isset($_POST['cant6']) && isset($_POST['cant7']) && isset($_POST['cant8']) && isset($_POST['cant9']) && isset($_POST['cant10']) && isset($_POST['cant11']) && isset($_POST['cant12']) && isset($_POST['cant13']) && isset($_POST['cant14']) && isset($_POST['cant15']) && isset($_POST['cant16']) && isset($_POST['cant17']) && isset($_POST['cant18']) && isset($_POST['cant19']) && isset($_POST['cant20']) && isset($_POST['cant21']) && isset($_POST['cant22']) && isset($_POST['cant23']) && isset($_POST['cant24'])) {

    $cant1 = $_POST['cant1'];
    $cant2 = $_POST['cant2'];
    $cant3 = $_POST['cant3'];
    $cant4 = $_POST['cant4'];
    $cant5 = $_POST['cant5'];
    $cant6 = $_POST['cant6'];
    $cant7 = $_POST['cant7'];
    $cant8 = $_POST['cant8'];
    $cant9 = $_POST['cant9'];
    $cant10 = $_POST['cant10'];
    $cant11 = $_POST['cant11'];
    $cant12 = $_POST['cant12'];
    $cant13 = $_POST['cant13'];
    $cant14 = $_POST['cant14'];
    $cant15 = $_POST['cant15'];
    $cant16 = $_POST['cant16'];
    $cant17 = $_POST['cant17'];
    $cant18 = $_POST['cant18'];
    $cant19 = $_POST['cant19'];
    $cant20 = $_POST['cant20'];
    $cant21 = $_POST['cant21'];
    $cant22 = $_POST['cant22'];
    $cant23 = $_POST['cant23'];
    $cant24 = $_POST['cant24'];

    eliminar_negocio_caracteristica($_SESSION['id_negocio']);

    if ($cant1 > 0) {

        insertar_negocio_caracteristica($_SESSION['id_negocio'], 1, $cant1);
    }

    if ($cant2 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 2, $cant2);
    }
    if ($cant3 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 3, $cant3);
    }
    if ($cant4 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 4, $cant4);
    }
    if ($cant5 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 5, $cant5);
    }
    if ($cant6 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 6, $cant6);
    }
    if ($cant7 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 7, $cant7);
    }
    if ($cant8 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 8, $cant8);
    }
    if ($cant9 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 9, $cant9);
    }
    if ($cant10 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 10, $cant10);
    }
    if ($cant11 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 11, $cant11);
    }
    if ($cant12 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 12, $cant12);
    }
    if ($cant13 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 13, $cant13);
    }
    if ($cant14 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 14, $cant14);
    }
    if ($cant15 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 15, $cant15);
    }
    if ($cant16 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 16, $cant16);
    }
    if ($cant17 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 17, $cant17);
    }
    if ($cant18 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 18, $cant18);
    }
    if ($cant19 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 19, $cant19);
    }
    if ($cant20 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 20, $cant20);
    }
    if ($cant21 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 21, $cant21);
    }
    if ($cant22 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 22, $cant22);
    }
    if ($cant23 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 23, $cant23);
    }
    if ($cant24 > 0) {
        insertar_negocio_caracteristica($_SESSION['id_negocio'], 24, $cant24);
    }
}

$datos = mostrar_id_carcteristica($_SESSION['id_negocio']);
if (isset($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {
    $lang = $_COOKIE['lang'];
} else {
    $lang = 'en';
}
$aux = 1;
while ($row = mysqli_fetch_array($datos)) {
    $info = $row["id_caracter"];
    $cantidad = $row["cantidad"];
    $descripcion = mostrar_descripcion_caracteristica_idioma($lang, $info);
    echo $descripcion . " <span id='cantidad" . $info . "' value=" . $cantidad . " class = \"badge\" style = \"float:right\">" . $cantidad . '</span><br>';
    $aux++;
}
cerrar_conexion();
?>
