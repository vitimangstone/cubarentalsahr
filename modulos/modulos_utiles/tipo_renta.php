<?php

session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();

if (isset($_SESSION['lang'])) {

    $lang = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {

    $lang = $_COOKIE['lang'];
} else {

    $lang = 'en';
}
$tipos_rentas = mostrar_tipos_renta();
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio']))
    $info = mostrar_info_negocio($_SESSION['id_negocio']);
require ("../../language_config.php");
echo "<option>" . text_cliente_seleccioneRenta . "</option>";
while ($row = mysqli_fetch_array($tipos_rentas)) {
    if ($row['id_tipo_renta'] == $info['id_tipo_renta']) {
        echo $lang;
        echo "<option selected = \"\">" . $row['nombre_tipo_' . $lang . ''] . "</option>";
    } else {
        echo "<option>" . $row['nombre_tipo_' . $lang . ''] . "</option>";
    }
}
?>