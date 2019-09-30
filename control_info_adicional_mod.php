<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if (isset($_POST['checkInfo1']) && isset($_POST['checkInfo2']) && isset($_POST['checkInfo3']) && isset($_POST['checkInfo4']) && isset($_POST['checkInfo5']) && isset($_POST['checkInfo6']) && isset($_POST['checkInfo7']) && isset($_POST['checkInfo8']) && isset($_POST['checkInfo9']) && isset($_POST['checkInfo10']) && isset($_POST['checkInfo11']) && isset($_POST['checkInfo12']) && isset($_POST['checkInfo13']) && isset($_POST['checkInfo14']) && isset($_POST['checkInfo15'])) {

    $checkInfo1 = $_POST['checkInfo1'];
    $checkInfo2 = $_POST['checkInfo2'];
    $checkInfo3 = $_POST['checkInfo3'];
    $checkInfo4 = $_POST['checkInfo4'];
    $checkInfo5 = $_POST['checkInfo5'];
    $checkInfo6 = $_POST['checkInfo6'];
    $checkInfo7 = $_POST['checkInfo7'];
    $checkInfo8 = $_POST['checkInfo8'];
    $checkInfo9 = $_POST['checkInfo9'];
    $checkInfo10 = $_POST['checkInfo10'];
    $checkInfo11 = $_POST['checkInfo11'];
    $checkInfo12 = $_POST['checkInfo12'];
    $checkInfo13 = $_POST['checkInfo13'];
    $checkInfo14 = $_POST['checkInfo14'];
    $checkInfo15 = $_POST['checkInfo15'];

    eliminar_negocio_info_adicional($_SESSION['id_negocio']);

    if ($checkInfo1 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 1);
    }
    if ($checkInfo2 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 2);
    }
    if ($checkInfo3 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 3);
    }
    if ($checkInfo4 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 4);
    }
    if ($checkInfo5 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 5);
    }
    if ($checkInfo6 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 6);
    }
    if ($checkInfo7 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 7);
    }
    if ($checkInfo8 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 8);
    }
    if ($checkInfo9 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 9);
    }
    if ($checkInfo10 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 10);
    }
    if ($checkInfo11 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 11);
    }
    if ($checkInfo12 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 12);
    }
    if ($checkInfo13 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 13);
    }
    if ($checkInfo14 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 14);
    }
    if ($checkInfo15 == 'on') {
        insertar_negocio_info_adicional($_SESSION['id_negocio'], 15);
    }
}
print_r("dsadasd");
$datos = mostrar_id_info($_SESSION['id_negocio']);
if (isset($_SESSION['lang'])) {

    $lang1 = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {

    $lang1 = $_COOKIE['lang'];
} else {

    $lang1 = 'en';
}

while ($row = mysqli_fetch_array($datos)) {
    $info = $row["id_info"];
    $descripcion = mostrar_info_adicional($lang1, $info);
    echo '<div id="comodidad' . $info . '">' . $descripcion . '</div>';
}

cerrar_conexion();
?>
