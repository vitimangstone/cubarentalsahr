<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();
$id_negocio = $_SESSION['id_negocio'];

if (isset($_POST['nombre_negocio']) && isset($_POST['direccion']) && isset($_POST['zona']) && isset($_POST['tipo_renta']) && isset($_POST['precio'])) {

    if(isset($_SESSION['lang'])){
        $lang = $_SESSION['lang'];
    }else if(isset($_COOKIE['lang'])){
        $lang = $_COOKIE['lang'];
    } else {
        $lang = 'en';
    }
    $nombre_negocio = $_POST['nombre_negocio'];
    $dir = $_POST['direccion'];
    $nombre_zona = $_POST['zona'];
    switch ($nombre_zona) {
        case "Víbora Park": $nombre_zona = "V&iacute;bora Park"; break;
        case "Güinera": $nombre_zona = "G&uuml;inera"; break;
        case "Eléctrico": $nombre_zona = "El&eacute;ctrico"; break;
        case "Párraga": $nombre_zona = "P&aacute;rraga"; break;
        case "Abel Santmaría": $nombre_zona = "Abel Santmar&iacute;a"; break;
        case "Aldabó": $nombre_zona = "Aldab&oacute;"; break;
        case "Colón": $nombre_zona = "Col&oacute;n"; break;
        case "Las Cañas": $nombre_zona = "Las Ca&ntilde;as"; break;
        case "Santa María del Rosario": $nombre_zona = "Santa Mar&iacute;a del Rosario"; break;
        case "Víbora": $nombre_zona = "V&iacute;bora"; break;
        case "Santos Suárez": $nombre_zona = "Santos Su&aacute;rez"; break;
        case "Luyanó;": $nombre_zona = "Luyan&oacute;"; break;
        case "Chibás": $nombre_zona = "Chib&aacute;s"; break;
        case "Cojímar": $nombre_zona = "Coj&iacute;mar"; break;
        case "Barrios del casco histórico": $nombre_zona = "Barrios del casco hist&oacute;rico"; break;
        case "San Agustín": $nombre_zona = "San Agust&iacute;n"; break;
        case "Belén": $nombre_zona = "Bel&eacute;n"; break;
        case "Cubanacán": $nombre_zona = "Cubanac&aacute;n"; break;
        case "Príncipe": $nombre_zona = "Pr&iacute;ncipe"; break;
        case "Alturas de Luyanó": $nombre_zona = "Alturas de Luyan&oacute;"; break;
        case "La Rosalía": $nombre_zona = "La Rosal&iacute;a"; break;
    }
    $id_zona = mostrar_id_zona($nombre_zona);
    $tipo_renta = $_POST['tipo_renta'];
    $id_tipo_renta = mostrar_id_tipos_renta($tipo_renta, $lang);
    $precio = $_POST['precio'];
    modificar_negocio_rento($id_negocio, $nombre_negocio, $dir, $id_zona, $id_tipo_renta, $precio);
}

require ("language_config.php");
if (isset($_SESSION['lang'])) {

    $lang = $_SESSION['lang'];

} else if (isset($_COOKIE['lang'])) {

    $lang = $_COOKIE['lang'];

} else {
    $lang = 'en';
}
$info = mostrar_info_negocio($_SESSION['id_negocio']);
$id_municipio = mostrar_id_municipio_dado_id_zona($info['id_zona']);
$nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
$id_provincia = mostrar_id_provincias_dado_id_municipio($id_municipio);
$nombre_provincia = mostrar_nombre_provincia_dado_id_provincia($id_provincia);
$nombre_zona = mostrar_nombre_zona_dado_id_zona($info['id_zona']);
$nombre_tipo_renta = mostrar_nombre_tipo_dado_id_tipo_renta($info['id_tipo_renta'], $lang);
if(isset($_SESSION['usuario'])){
    echo '<h5><b>' .  strtoupper($info['nombre']) . '</b></h5>';
}

echo '<b>' . text_tipo_renta . ':</b> ' . $nombre_tipo_renta . '<br>';
echo '<b>' . text_provincia . ':</b> ' . $nombre_provincia . '<br>';
echo '<b>' . text_municipio . ':</b> ' . $nombre_municipio . '<br>';
echo '<b>' . text_zona . ':</b> ' . $nombre_zona . '<br>';
echo '<b>' . text_precio . ':</b> ' . $info['precio'] . ' CUC / '.text_cliente_noche.'<br>';
echo "<b>Id web:</b> " . $info['id_negocio'] . '<br><br>';

//$estadisticas = mostrar_estadisticas($_SESSION['id_negocio']);
$cant_reservaciones = mostrar_cant_reservas($_SESSION['id_negocio']);
$total_comentarios = mostrar_cant_comentarios($_SESSION['id_negocio']);

echo "<input id=\"nombre1\" type=\"hidden\" value='" . $info['nombre'] . "'/>";
echo "<input id=\"direccion1\" type=\"hidden\" value='" . $info['direccion'] . "'/>";
echo "<input id=\"precio1\" type=\"hidden\" value='" . $info['precio'] . "'/>";

//echo '<b>' . text_puntos . ':</b>';
//echo "<span class = \"badge\" style = \"float:right\">" . $info['posicion'] . "</span><br>";
echo '<br><div><b>' . text_visitas . ':</b><span class = "badge pull-right">' . $info['visitas'] . '</span></div>';
echo '<div><b>'.text_perfil_reservaciones.':</b> <span class = "badge pull-right">' . $cant_reservaciones . '</span></div>';
echo '<div><b>'.text_perfil_comentarios.':</b> <span class = "badge pull-right">' . $total_comentarios . '</span></div>';

cerrar_conexion();
//header("Location: perfil.php");
?>
