<?php

session_start();
$usuario = $_POST['usuario'];
$contra = $_POST['contra'];

require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if (comprobar_acceso_account($usuario, $contra)) {
    $_SESSION['usuario'] = $usuario;
    $id_user = mostrar_id_usuario_from_usuario($usuario);
    $id_negocio = mostrar_id_negocio_from_negocio($id_user);
    $_SESSION['id_negocio'] = $id_negocio;
    echo true;
} else {
    echo false;
}
cerrar_conexion();

function comprobar_acceso_account($user, $password) {
    $aux = FALSE;
    $query = "select contrasenna from usuario where nombre_usuario = '" . $user . "' and bloqueado = '0'";
    $result = mysqli_query(conexion(),$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0) {
        $row = mysqli_fetch_array($result);
        $pass_encrypt = $row["contrasenna"];
        if ($password == $pass_encrypt) {
            $aux = TRUE;
        }
    }
    return $aux;
}
