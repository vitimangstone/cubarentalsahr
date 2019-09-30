<?php

session_start();
require ("terceros/PHPMailer/class.phpmailer.php");
require ("modulos/modulos_pag_login/conexion_mod.php");
conexion();

if (isset($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {
    $lang = $_COOKIE['lang'];
} else {
    $lang = 'en';
}

$nombre_completo = $_POST['nombre_completo'];
$correo = $_POST['correo'];
$pais = $_POST['pais'];
$id_pais = mostrar_id_pais($pais, $lang);
$fecha_entrada = $_POST['reservation1'];
$fecha_salida = $_POST['reservation2'];
$cant_viajeros = $_POST['cant_viajeros'];
$cant_habitaciones = $_POST['cant_habitaciones'];
$hora_llegada = $_POST['hora_llegada'];
$descripcion_reservacion = $_POST['descripcion_reservacion'];

insertar_reservacion("", $_SESSION['id_negocio'], $nombre_completo, $correo, $id_pais, $fecha_entrada, $fecha_salida, $cant_viajeros, $cant_habitaciones, $hora_llegada, $descripcion_reservacion);
$negocio = mostrar_info_negocio($_SESSION['id_negocio']);
$cuartos = mostrar_cant_cuartos($_SESSION['id_negocio']);
$usuario = mostrar_usuario_from_id($negocio['id_usuario']);
cerrar_conexion();

try {
    $mail = new PHPMailer(true); //Nueva instancia, con las excepciones habilitadas
    $body = '<h2>Nueva Reservaci&oacute;n</h2>
            <h3>Datos del Cliente</h3>
            <ul style="list-style: none;">
            <li><b>Nombre del cliente: </b>' . $nombre_completo . '</li>
            <li><b>Correo: </b>' . $correo . '</li>
            <li><b>Pais: </b>' . $pais . '</li>
            <li><b>Entrada: </b>' . $fecha_entrada . '</li>
            <li><b>Salida: </b>' . $fecha_salida . '</li>
            <li><b>Cantidad de personas: </b>' . $cant_viajeros . '</li>
            <li><b>Cantidad de habitaciones: </b>' . $cant_habitaciones . '</li>
            <li><b>Hora de llegada: </b>' . $hora_llegada . '</li>
            <li><b>Comentarios: </b>' . $descripcion_reservacion . '</li>
            </ul>
            <h3>Datos del Arrendador</h3>
            <ul style="list-style: none;">
            <li><b>Nombre: </b>' . $usuario['nombre_usuario'] . '</li>
            <li><b>Tel&eacute;fono fijo: </b>' . $usuario['telefono_casa'] . '</li>
            <li><b>Tel&eacute;fono movil: </b>' . $usuario['telefono_movil'] . '</li>
            <li><b>Correo: </b>' . $usuario['mail'] . '</li>
            </ul>
            <h3>Datos del Negocio</h3>
            <ul style="list-style: none;">
            <li><b>Nombre: </b>' . $negocio['nombre'] . '</li>
            <li><b>Direcci&oacute;n: </b>' . $negocio['direccion'] . '</li>
            <li><b>Precio: </b>' . $negocio['precio'] . '</li>
            <li><b>Cuartos: </b>' . $cuartos . '</li>
            </ul>';
    $mail->Host = "cubarentalsahr.com"; // SMTP server
    $mail->From = "contact@cubarentalsahr.com"; //Remitente de Correo
    $mail->FromName = "Cuba Rentals AHR"; //Nombre del remitente
    $mail->AddAddress('admin@cubarentalsahr.com');
    $mail->AddAddress('vitimangs@gmail.com');
    $mail->Subject = 'Nueva reserva'; //Asunto del correo
    $mail->MsgHTML($body);
    $mail->IsHTML(true); // Enviar como HTML
    $mail->Send(); //Enviar
} catch (phpmailerException $e) {
    echo $e->errorMessage(); //Mensaje de error si se produciera.
}

header("Location: perfil.php");
?>

