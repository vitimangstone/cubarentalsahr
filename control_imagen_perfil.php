<?php

session_start();
$targ_w = 219;
$targ_h = 219;

$src = $_POST['src'];
$img_r = imagecreatefromjpeg($src);
$dst_r = ImageCreateTrueColor($targ_w, $targ_h);

if (isset($src)) {
    imagecopyresampled($dst_r, $img_r, 0, 0, $_POST['x'], $_POST['y'], $targ_w, $targ_h, $_POST['w'], $_POST['h']);
    if (isset($_POST['crear_cuenta'])) {
        unlink("imagenes/photo_aux.jpeg");
        imagejpeg($dst_r, "imagenes/photo_aux.jpeg");
    } else {
        unlink("negocios_imagenes/" . $_SESSION['id_negocio'] . "/perfil.jpeg");
        imagejpeg($dst_r, "negocios_imagenes/" . $_SESSION['id_negocio'] . "/perfil.jpeg");
    }
}
header("Location: perfil.php");
imagedestroy($img_r);
imagedestroy($dst_r);
?>