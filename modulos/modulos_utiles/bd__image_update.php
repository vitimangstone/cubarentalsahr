<?php

require "../../modulos/modulos_pag_login/conexion_mod.php";
conexion();
$list = [];
$result = mostrar_todas_imagenes();
$row_count = 0;
while ($row = mysqli_fetch_array($result)){
    if($row['actualizada'] == 0){
        $fila = $row['imagen'];
        $number = '';
        $fileName = '';
        $count = 0;
        foreach (str_split($fila) as $f){
            if($f == '/'){
                $count++;
            }
            if($count==2){
                $fileName = $fileName . $f;
            }
            if($count ==1){
                $number = $number . $f;
            }

        }
        $replaced_str = str_replace('/','',$number);
//        $old_directory = '../../negocios_imagenes/'.$replaced_str;
//        $temp_string =  'temp'.$row['id_negocio'];
//        $temp = '../../negocios_imagenes/'.$temp_string;
//        $new_directory = '../../negocios_imagenes/'.$row['id_negocio'];
//            $cosas = $cosas.' '.$old_directory.' '.$new_directory;


//        if($replaced_str == 100){
//            echo $temp;
//            rename($old_directory,$temp);
//        }

        if($replaced_str != $row['id_negocio']){
            $old_directory = '../../negocios_imagenes/'.$replaced_str;
            $temp_string =  'temp'.$row['id_negocio'];
            $temp = '../../negocios_imagenes/'.$temp_string;
            rename($old_directory,$temp);
            $list[$row_count]=$temp;
            $row_count++;
            $imagen = 'negocios_imagenes/'.$row['id_negocio'].$fileName;
            echo $imagen . '</br>';
            modificar_imagenes($imagen,$row['tipo_imagen'],$row['id_imagen']);
        }
    }

}

foreach ($list as $l){
    $originalPath = str_replace('temp','',$l);
    rename($l,$originalPath);
}
/**
 * Created by PhpStorm.
 * User: VitimanGS
 * Date: 10/26/2016
 * Time: 3:33 PM
 */