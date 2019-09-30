<?php

require("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if(isset($_POST['nombre']) && isset($_POST['correo']) && isset($_POST['mensaje'])){

    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    $mensaje = $_POST['mensaje'];
    $fecha_contactenos = date('d/n/Y,h:i:s A');

    insertar_mensaje_contacto($nombre, $correo, $mensaje,$fecha_contactenos);
}

cerrar_conexion();

