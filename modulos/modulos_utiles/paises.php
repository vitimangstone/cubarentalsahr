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
$paises = mostrar_paises();
require ("../../language_config.php");
echo "<option>".text_perfil_reservarPais."</option>";
while ($row = mysqli_fetch_array($paises)) {
      echo "<option>" . $row['descripcion_' . $lang . ''] . "</option>";
 }

?>