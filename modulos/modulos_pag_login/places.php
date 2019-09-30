<?php

session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();

if(!isset($_SESSION['start'])){
    $_SESSION['start'] = 0;
}
$count = contar_lugares();
$limit = 6;
$difference = $limit;
if(isset($_POST['difference'])){
    if($_POST['difference'] == 'negative')
        $difference = $difference *-1;
}

if(isset($_POST['difference'])){
    $_SESSION['start'] = $_SESSION['start'] + $difference;

    if($_SESSION['start'] >= $count){
        $_SESSION['start'] = 0;
    }
    if($_SESSION['start'] < 0){
        if($count > $limit){
            $_SESSION['start'] = $count - $limit;
        }
        else{
            $_SESSION['start'] = 0;
        }

    }
}
$result = mostrar_lugares($_SESSION['start'], $limit);
while ($row = mysqli_fetch_array($result)){

    echo '<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 lugares" onclick="selectedPlace(this)" id="'.$row['id'].'"><img src="'.$row["url"].'" class="img-rounded img-responsive places_to_select"><input class="places-selection" id="selected-checkbox'.$row["id"].'" type="checkbox"><p id="image-name'.$row['id'].'" style="text-align: center">'.$row["name"].'</p></div>
';
}

cerrar_conexion();
/**
 * Created by PhpStorm.
 * User: VitimanGS
 * Date: 28/11/2016
 * Time: 10:47 PM
 */