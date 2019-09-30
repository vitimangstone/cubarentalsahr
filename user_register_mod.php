<?php

require("modulos/modulos_pag_login/conexion_mod.php");
conexion();

/*
 * Crear un modal que se levante una vez que un usuario entra a la pagina y su ip no esta registrado
 * o esta registrado pero ya selecciono previamente que no vuelva a salir
 *
 * 1. Crear un modal y su trigger
 * 2. Crear una pagina php a la que se haga una peticion en cuanto entra un usuario a la pagina
 * para saber si el ip del usuario ya esta registrado y si lo esta si selecciono que no salga el modal
 * 3. Dentro de la pagina 2 llamar a una funcion que se conecta a base datos y devuelve si el server
 * registrado existe
 * 4. Crear funcion en el conexion_mod que devuelva 1 segun si teniendo en cuenta el server el campo modal_view
 * devuelve 0 o 1
 * 5. Dentro de la pagina 2 capturar resultado de 4 en una variable que por default es 0, si la variable es 0
 * se debe mostrar el modal, si es uno, no se debe mostrar el modal
 * 6. Utilizar la misma pagina 2 para que si viene no_mostrar_mas lleno y vengan o no llenos los
 * valores de name y email por parte del usuario lo registre tambien en la tabla user_info
 * 6.1 Crear insertar de los valores en user_info
 * 7. Utilizar la misma pagina 2 para cada vez que venga un usuario ejecute una pagina registrar la pagina
 * visitada, la hora, y el usuario ip que lo hizo.
 * 7.1 Crear inserta de los valores en user_logs
 * */

/*
 *Crear un calendario por cada renta que muestre los dias disponibles
 *
 * 1. Crear un calendario visual para poner en el perfil
 * 2. Crear la logica visual necesaria para que cuando un arrendador entre segun los click en cada
 * dia se seleccionen estos dias como reservados
 * 3. Crear pagina php que no permita escoger un plazo de fecha que ya este cogido pero que si no esta cogido
 * el plazo seleccionado permita hacer la reservacion
 *
 */
$no_mostrar = false;
// $no_mostrar = mostrar_if_user_registrated($_SERVER['REMOTE_ADDR']);
if($no_mostrar){
    echo true;
}
else{
    echo false;
}

if(isset($_POST['no_mostrar_mas'])){
    $no_mostrar = $_POST['no_mostrar_mas'];
    $name_user = 'undefined';
    $email_user = 'undefined';
    if(isset($_POST['name_user']) && isset($_POST['email_user'])){
        $name_user = $_POST['name_user'];
        $email_user = $_POST['email_user'];
    }

    $server_id = mostrar_id_por_server($_SERVER['REMOTE_ADDR']);
//    echo $server_id;
    modificar_user_info($server_id, $name_user, $email_user, $no_mostrar);
}
if(isset($_POST['navigator']) && isset($_POST['locationHost'])){

    // $navigation = $_POST['navigator'];
    // $locationHost = $_POST['locationHost'];
    // $locationPathName = $_POST['locationPathName'];

    // // $server_id = mostrar_id_por_server($_SERVER['REMOTE_ADDR']);
    // if($server_id == null){
    //     insertar_user_info($_SERVER['REMOTE_ADDR'],'undefined','undefined',0);
    //     $server_id = mostrar_id_por_server($_SERVER['REMOTE_ADDR']);
    // }
    // $utc = date('U');
    // insertar_user_logs($utc,$locationPathName,$server_id,$navigation, $locationHost);

}
else{
//    echo '<input id="checkbox-listed" type="checkbox" name="check">';
}

cerrar_conexion();

/**
 * Created by PhpStorm.
 * User: victor
 * Date: 11/02/17
 * Time: 5:02
 */