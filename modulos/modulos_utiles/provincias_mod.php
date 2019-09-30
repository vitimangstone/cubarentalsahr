<?php

session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();
if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {
    $info = mostrar_info_negocio($_SESSION['id_negocio']);
    $id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
    $id_provincia = mostrar_id_provincias_dado_id_municipio($id_municipio);
    $nombre_provincia = mostrar_nombre_provincia_dado_id_provincia($id_provincia);
}
$provincias = mostrar_provincias();
require ("../../language_config.php");
echo "<option>" . text_cliente_provincia . "</option>";

$aux = 1;

while ($row = mysqli_fetch_array($provincias)) {
    if ($row['nombre_provincia'] == $nombre_provincia) {
        echo "<option value=" . $aux . " selected=\"\">" . $row['nombre_provincia'] . "</option>";
        $aux++;
    } else {
        echo "<option value=" . $aux . ">" . $row['nombre_provincia'] . "</option>";
        $aux++;
    }
}
cerrar_conexion();
?>
