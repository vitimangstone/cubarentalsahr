<?php
session_start();
$user = $_SESSION['usuario'];
$pass = $_POST['contra'];

require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();
if (comprobar_acceso_account($user, $pass)) {
    echo true;
} else {
    echo false;
}
cerrar_conexion();

function comprobar_acceso_account($user, $password) {
    $aux = FALSE;
    $query = "select contrasenna from usuario where nombre_usuario = '" . $user . "' and bloqueado = '0'";
    $result = mysql_query($query);
    $num_resultados = mysql_num_rows($result);
    if ($num_resultados > 0) {
        $row = mysqli_fetch_array($result);
        $pass_encrypt = $row["contrasenna"];
        if (crypt($password, $pass_encrypt) == $pass_encrypt) {
            $aux = TRUE;
        }
    }
    return $aux;
}
