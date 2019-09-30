<?php

session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {
    $info = mostrar_info_negocio($_SESSION['id_negocio']);
    $nombre_zona = mostrar_nombre_zona_dado_id_zona($info['id_zona']);
}
$nombre_municipio = $_POST['id_municipio'];
$id_municipio = mostrar_id_municipio($nombre_municipio);
$zonas = mostrar_zona($id_municipio);

require ("../../language_config.php");
echo "<option>" . text_cliente_zona . "</option>";

while ($row = mysqli_fetch_array($zonas)) {
    if ($row['nombre_zona'] == $nombre_zona) {
        echo "<option selected=\"\">" . $row['nombre_zona'] . "</option>";
    } else {
        echo "<option>" . $row['nombre_zona'] . "</option>";
    }
}
?>	


