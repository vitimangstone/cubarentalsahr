<?php

session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if (isset($_POST['arrendador1']) && isset($_POST['apellido1']) && isset($_POST['telf_casa1']) && isset($_POST['telf_movil1']) && isset($_POST['correo1'])) {

    $nombre_usuario = $_SESSION['usuario'];
    $nombre_arrendador = $_POST['arrendador1'];
    $apellidos = $_POST['apellido1'];
    $telefono_casa = $_POST['telf_casa1'];
    $telefono_cel = $_POST['telf_movil1'];
    $correo = $_POST['correo1'];

    modificar_cuenta_usuario($nombre_usuario, $nombre_arrendador, $apellidos, $correo, $telefono_casa, $telefono_cel);
}

if (isset($_POST['passActual'])) {
    $passActualText = $_POST['passActual'];
    $passActualBd = mostrar_pass_arrendatario($_SESSION['usuario']);

    if (crypt($passActualText, $passActualBd) == $passActualBd) {
        if (isset($_POST['passNueva']) && isset($_POST['passRepetir'])) {
            $passNueva = $_POST['passNueva'];
            $passRepetir = $_POST['passRepetir'];

            if ($passNueva != "" && $passRepetir != "") {
                if ($passNueva == $passRepetir) {
                    modificar_pass_arrendatario($_SESSION['usuario'], crypt_blowfish_bydinvaders($passNueva, 7));
                }
            }
        }
    }
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
        if (c) {
            $aux = TRUE;
        }
    }
    return $aux;
}

function crypt_blowfish_bydinvaders($password, $digito) {
    $set_salt = './1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    $salt = sprintf('$2a$%02d$', $digito);
    for ($i = 0; $i < 22; $i++) {
        $salt .= $set_salt[mt_rand(0, 22)];
    }
    return crypt($password, $salt);
}
