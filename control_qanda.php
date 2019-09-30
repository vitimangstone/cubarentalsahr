<?php

require ("modulos/modulos_pag_login/conexion_mod.php");

conexion();
if(isset($_POST['name']) && isset($_POST['text'])){
    insertar_qanda($_POST['name'],$_POST['text']);
}

if(isset($_POST['answer'])){
    modificar_qanda($_POST['answer'],$_POST['id']);
}


cerrar_conexion();

/**
 * Created by PhpStorm.
 * User: victor
 * Date: 25/02/17
 * Time: 4:12
 */