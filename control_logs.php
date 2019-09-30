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

$lines = '';
$logs = mostrar_logs();
while($row = mysql_fetch_row($logs)){
    $lines = $lines."<b>Navegador:</b> ".$row[1]."<br/><b>Ip que se conecta:</b> ".$row[4]."<br/><b>A donde?:</b> ".$row[3]."<br/><br/>";
}
$contactos = mostrar_contactos();
$todosContactenos = '';
while($row = mysqli_fetch_array($contactos)){
    $todosContactenos = $todosContactenos."<b>Nombre:</b> ".$row[1]."<br/><b>Correo:</b> ".$row[2]."<br/><b>Texto:</b> ".$row[3]."<br/><br/>";
}
echo $todosContactenos;
cerrar_conexion();

try {
    $mail = new PHPMailer(true); //Nueva instancia, con las excepciones habilitadas
    $body = '<h2>Logs</h2>
            <h3>Datos de los Clientes</h3>
            <ul style="list-style: none;">
                '.$lines.'
            </ul>
            <ul style="list-style: none;">
                '.$todosContactenos.'
            </ul>';

    $mail->Host = "cubarentalsahr.com"; // SMTP server
    $mail->From = "contact@cubarentalsahr.com"; //Remitente de Correo
    $mail->FromName = "Cuba Rentals AHR"; //Nombre del remitente
    $mail->AddAddress('admin@cubarentalsahr.com');
    $mail->AddAddress('vitimangs@gmail.com');
    $mail->Subject = 'Logs'; //Asunto del correo
    $mail->MsgHTML($body);
    $mail->IsHTML(true); // Enviar como HTML
    $mail->Send(); //Enviar
} catch (phpmailerException $e) {
    echo $e->errorMessage(); //Mensaje de error si se produciera.
}
