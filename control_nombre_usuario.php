<?php
//sleep(2);
if(isset($_POST['nombre'])){
require('./modulos/modulos_pag_login/conexion_mod.php');
conexion();
if(comprobar_nombre_usuario($_POST['nombre'])){
   echo'false';
}else{
   echo'true';
}
}
?>