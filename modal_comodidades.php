<!--Pagina Perfil JS-->
<script src="jquery/perfil_mod.js" type="text/javascript"></script>

<?php
require ("./modulos/modulos_pag_login/conexion_mod.php");
session_start();
conexion();
print_r("dsadasdsadasdsadsa");
if(isset($_SESSION['lang'])){
    $lang = $_SESSION['lang'];
}else if(isset($_COOKIE['lang'])){
    $lang = $_COOKIE['lang'];
} else {
    $lang = 'en';
}
$info_adicional = mostrar_descripcion_from_info_adicional($lang);
$info_adicional1 = mostrar_id_info($_SESSION['id_negocio']);
$aux = 1;
while ($row = mysqli_fetch_array($info_adicional)) {
    echo '<div class="row">';
    echo '<span class="col-lg-12" style="margin-bottom: 5px;">';
    echo '<input id="checkInfo' . $aux . '" type = "checkbox" value = "off" name = "checkInfo' . $aux . '">';
    echo '&nbsp;&nbsp;' . $row['descripcion_' . $lang . ''];
    echo '</span>';
    echo '</div>';
    $aux++;
}
$aux = 1;
while ($row = mysqli_fetch_array($info_adicional1)) {
    echo "<script>marcarCheckboxInfoAdicional(" . $row['id_info'] . ")</script>";
}
cerrar_conexion();
?>
