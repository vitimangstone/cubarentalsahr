<?php

session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();

$id_provincia = $_POST['id_provincia'];
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {
    $info = mostrar_info_negocio($_SESSION['id_negocio']);
    $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
}
$municipios = mostrar_municipios($id_provincia);
$nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);

require ("../../language_config.php");
echo "<option>" . text_cliente_municipio . "</option>";


while ($row = mysqli_fetch_array($municipios)) {
    if ($row['nombre_municipio'] == $nombre_municipio) {
        echo "<option selected=\"\">" . $row['nombre_municipio'] . "</option>";
    } else {
        echo "<option>" . $row['nombre_municipio'] . "</option>";
    }
}
?>
