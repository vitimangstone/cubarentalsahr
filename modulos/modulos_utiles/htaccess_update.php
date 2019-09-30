<?php
require "../../modulos/modulos_pag_login/conexion_mod.php";
conexion();
$info = mostrar_negocios();
    $fp = fopen("../../.htaccess","w");
    fwrite($fp,"<IfModule mod_rewrite.c>\n");
    fwrite($fp,"RewriteEngine on\n");
    fwrite($fp,"RewriteRule ^rentals cliente.php\n");
    fwrite($fp,"RewriteRule ^es perfil.php?lang=es\n");
    fwrite($fp,"RewriteRule ^en perfil.php?lang=en\n");
    fwrite($fp,"RewriteRule ^old-havana-rentals cliente.php?municipio=La-Habana-Vieja\n");
    fwrite($fp,"RewriteRule ^havana-center-rentals cliente.php?municipio=Centro-Habana\n");
    fwrite($fp,"RewriteRule ^beach-rentals cliente.php?municipio=La-Habana-del-Este\n");
    fwrite($fp,"RewriteRule ^vedado-rentals cliente.php?municipio=Plaza\n");
    fwrite($fp,"RewriteRule ^playa-rentals cliente.php?municipio=Playa\n");
    fwrite($fp,"RewriteRule ^preview-search cliente.php?busqueda-ant=Algo\n");
    while($i = mysqli_fetch_array($info)){
        $generated_name = str_replace(' ','',$i['nombre']);
        $generated_name = str_replace('ó','o',$generated_name);
        $generated_name = str_replace('ñ','n',$generated_name);
        $line = "RewriteRule ^".$generated_name." perfil.php?var=".$i['id_negocio']."\n";
        fwrite($fp,$line);
    }
    fwrite($fp,"</IfModule>\n");
    fclose($fp);

$fp = fopen("../../.htaccess", "r");

while(!feof($fp)) {

    $linea = fgets($fp);

    echo $linea . "<br />";

}

/**
 * Created by PhpStorm.
 * User: VitimanGS
 * Date: 18/09/2016
 * Time: 2:22
 */