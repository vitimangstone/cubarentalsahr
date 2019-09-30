<?php

session_start();
require ("terceros/PHPMailer/class.phpmailer.php");
require("modulos/modulos_pag_login/conexion_mod.php");
conexion();

//informacion principal
$nombre = $_POST['nombre_negocio'];
$direccion = $_POST['direccion'];
$tipo_casa = $_POST['tipo_casa'];
$zona = $_POST['zona'];
$dormitorios = $_POST['dormitorios'];
$precio = $_POST['precio'];

//informacion adicional
$check1 = $_POST['checkInfo1'];
$check2 = $_POST['checkInfo2'];
$check3 = $_POST['checkInfo3'];
$check4 = $_POST['checkInfo4'];
$check5 = $_POST['checkInfo5'];
$check6 = $_POST['checkInfo6'];
$check7 = $_POST['checkInfo7'];
$check8 = $_POST['checkInfo8'];
$check9 = $_POST['checkInfo9'];
$check10 = $_POST['checkInfo10'];
$check11 = $_POST['checkInfo11'];
$check12 = $_POST['checkInfo12'];
$check13 = $_POST['checkInfo13'];
$check14 = $_POST['checkInfo14'];
$check15 = $_POST['checkInfo15'];

//Insertando usuario
$arrendador = $_POST['arrendador'];
$apellido = $_POST['apellido'];
$nombre_usuario = $_POST['nombre_usuario'];
$correo = $_POST['correo'];
$telf_casa = $_POST['telf_casa'];

if (isset($_POST['telf_movil']) || isset($_POST['correo'])) {
    $telf_movil = $_POST['telf_movil'];
    $correo = $_POST['correo'];
} else {
    $telf_movil = "";
    $correo = "";
}
$pass = $_POST['pass'] ;//crypt_blowfish_bydinvaders($_POST['pass'], 7);

insertar_usuario("", $nombre_usuario, $arrendador, $apellido, $correo, $telf_casa, $telf_movil, $pass, FALSE);

//Insertando el negocio
//eliminar las tildes y las ñ antes de realizar consulta a la BD
switch ($zona) {
    case "Víbora Park": $zona = "V&iacute;bora Park";
        break;
    case "Güinera": $zona = "G&uuml;inera";
        break;
    case "Eléctrico": $zona = "El&eacute;ctrico";
        break;
    case "Párraga": $zona = "P&aacute;rraga";
        break;
    case "Abel Santmaría": $zona = "Abel Santmar&iacute;a";
        break;
    case "Aldabó": $zona = "Aldab&oacute;";
        break;
    case "Colón": $zona = "Col&oacute;n";
        break;
    case "Las Cañas": $zona = "Las Ca&ntilde;as";
        break;
    case "Santa María del Rosario": $zona = "Santa Mar&iacute;a del Rosario";
        break;
    case "Víbora": $zona = "V&iacute;bora";
        break;
    case "Santos Suárez": $zona = "Santos Su&aacute;rez";
        break;
    case "Luyanó;": $zona = "Luyan&oacute;";
        break;
    case "Chibás": $zona = "Chib&aacute;s";
        break;
    case "Cojímar": $zona = "Coj&iacute;mar";
        break;
    case "Barrios del casco histórico": $zona = "Barrios del casco hist&oacute;rico";
        break;
    case "San Agustín": $zona = "San Agust&iacute;n";
        break;
    case "Belén": $zona = "Bel&eacute;n";
        break;
    case "Cubanacán": $zona = "Cubanac&aacute;n";
        break;
    case "Príncipe": $zona = "Pr&iacute;ncipe";
        break;
    case "Alturas de Luyanó": $zona = "Alturas de Luyan&oacute;";
        break;
    case "La Rosalía": $zona = "La Rosal&iacute;a";
        break;
}

$id = mostrar_id_usuario_from_usuario($nombre_usuario);
$id_zona = mostrar_id_zona($zona);
if (isset($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
} else if (isset($_COOKIE['lang'])) {
    $lang = $_COOKIE['lang'];
} else {
    $lang = 'en';
}
$id_tipo_renta = mostrar_id_tipos_renta($tipo_casa, $lang);
insertar_negocio("", $id, $nombre, $direccion, $id_zona, $id_tipo_renta, $precio, FALSE, date("d M Y"));

//Insertando estadisticas
$id_negocio = mostrar_id_negocio_from_negocio($id);
$_SESSION['id_negocio'] = $id_negocio;
//insertar_estadistica("", $id_negocio, 0, 0);
//Insertar caracteristicas
insertar_negocio_caracteristica($id_negocio, 1, $dormitorios);

//Insertando informacion adicional
if ($check1 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 1);
}
if ($check2 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 2);
}
if ($check3 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 3);
}
if ($check4 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 4);
}
if ($check5 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 5);
}
if ($check6 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 6);
}
if ($check7 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 7);
}
if ($check8 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 8);
}
if ($check9 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 9);
}
if ($check10 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 10);
}
if ($check11 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 11);
}
if ($check12 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 12);
}
if ($check13 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 13);
}
if ($check14 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 14);
}
if ($check15 == "on") {
    insertar_negocio_info_adicional($_SESSION['id_negocio'], 15);
}
//creando nuevo directorio
mkdir("negocios_imagenes/" . $id_negocio);
//Insertando imagen_perfil
if (file_exists("imagenes/photo_aux.jpeg")) {
    $img_origen = imagecreatefromjpeg("imagenes/photo_aux.jpeg");
    imagejpeg($img_origen, "negocios_imagenes/" . $id_negocio . "/perfil.jpeg");
    unlink("imagenes/photo_aux.jpeg");
} else {
    $img_origen = imagecreatefromjpeg($_FILES['archivo']['tmp_name']);
    imagejpeg($img_origen, "negocios_imagenes/" . $id_negocio . "/perfil.jpeg");
}
insertar_imagen("", "negocios_imagenes/" . $id_negocio . "/perfil.jpeg", "image/jpeg", $id_negocio, "perfil");

$array = $_FILES['fotos_extras']['tmp_name'];

for ($i = 0; $i < count($array); $i++) {
    $num = $i + 1;
    $img_origen = imagecreatefromjpeg($array[$i]);
    imagejpeg($img_origen, "negocios_imagenes/" . $id_negocio . "/galeria" . $num . ".jpeg");
    insertar_imagen("", "negocios_imagenes/" . $id_negocio . "/galeria" . $num . ".jpeg", "image/jpeg", $id_negocio, "galeria");
}

cerrar_conexion();
$_SESSION['usuario'] = $nombre_usuario;

try {
    $mail = new PHPMailer(true); //Nueva instancia, con las excepciones habilitadas
    $body = '<h2>Muchas Gracias por registrarce en cubarentalsahr.com. </h2>
            <h3>La web que le permite promocionar y gestionar su negocio de arrendamiento privado completamente gratis.</h3>
            <ul style="list-style: none;">
            <li><b>Nombre del negocio: </b>' . $nombre . '</li>
            <li><b>Direcci&oacute;n: </b>' . $direccion . '</li>
            <li><b>Zona: </b>' . $zona . '</li>
            <li><b>Arrendador: </b>' . $arrendador . ' ' . $apellido . '</li>
            <li><b>Tel&eacute;fono fijo: </b>' . $telf_casa . '</li>
            <li><b>Tel&eacute;fono m&oacute;vil: </b>' . $telf_movil . '</li>
            <li><b>Usuario: </b>' . $nombre_usuario . '</li>
            <li><b>Contrase&ntilde;a: </b>' . $_POST['pass'] . '</li>
            </ul>
            <p>Compruebe que sus datos son correctos, en caso negativo modif&iacute;quelos accediendo a su cuenta en cubarentalsahr.com
            con su usuario y contrase&ntilde;a, si no tiene acceso a internet, puede enviar un correo a contact@cubarentalsahr.com
            comentando cu&aacute;l es el error y lo corregiremos al instante.</p>
            <p>FELICIDADES, a partir de ahora miles de personas conocer&aacute;n su negocio y podr&aacute; tener nuevos clientes. 
            Puedes acceder a tu cuenta en cubarentalsahr.com haciendo uso de tu usuario y contrase&ntilde;a. Mant&eacute;n tu negocio
            actualizado y si no tienes acceso a internet recuerda que puedes enviar un correo a contact@cubarentalsahr.com para enviarnos nueva
            informaci&oacute;ón o nuevas fotos y nosotros actualizaremos por t&iacute; GRATIS, si completamente GRATIS.
            <p><b>Si te gusta Cuba Rentals AHR puedes ayudarnos coment&aacute;ndoselo a tus amigos y compartiendo nuestras
            p&aacute;ginas de <a href="https://facebook.com/cubarentalsahr">Facebook</a> y <a href="https://twitter.com/CubaRentalsAHR">Twitter</a>.</b></p>';
    $mail->Host = "cubarentalsahr.com"; // SMTP server
    $mail->From = "contact@cubarentalsahr.com"; //Remitente de Correo
    $mail->FromName = "Cuba Rentals AHR"; //Nombre del remitente
    if ($correo != "")
    	$mail->AddAddress($correo);
    $mail->AddAddress("admin@cubarentalsahr.com");
    $mail->AddAddress("vitimangs@gmail");
    $mail->Subject = 'Bienvenido a bordo ' . $arrendador ; //Asunto del correo
    $mail->MsgHTML($body);
    $mail->IsHTML(true); // Enviar como HTML
    $mail->Send(); //Enviar
} catch (phpmailerException $e) {
    echo $e->errorMessage(); //Mensaje de error si se produciera.
}

header("Location: perfil.php");

function crypt_blowfish_bydinvaders($password, $digito) {
    $set_salt = './1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    $salt = sprintf('$2a$%02d$', $digito);
    for ($i = 0; $i < 22; $i++) {
        $salt .= $set_salt[mt_rand(0, 22)];
    }
    return crypt($password, $salt);
}
