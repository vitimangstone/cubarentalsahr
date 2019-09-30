<!--<ul>-->
    <?php
    session_start();
    require ("modulos/modulos_pag_login/conexion_mod.php");
    conexion();
    $lang = 'en';

    if(isset($_POST['selected_services'])){
        foreach($_POST['selected_services'] as $service){
            insertar_servicio_negocio($_SESSION['id_negocio'],$service);
        }
    }
    if(isset($_POST['unselected_services'])){
        foreach($_POST['unselected_services'] as $oService){
            eliminar_servicio_negocio($_SESSION['id_negocio'],$oService);
        }
    }

    if(isset($_SESSION['lang'])){
        $lang = $_SESSION['lang'];
    }
    $results = mostrar_servicios();

    while($row = mysqli_fetch_array($results)){
        $existent = existent_rentals($_SESSION['id_negocio'],$lang);
        $flag = false;
        foreach($existent as $exist){
            if($exist['description_'.$lang] == $row['description_'.$lang]){
                $flag = true;
            }
        }
        if($flag){
            echo '<div><input type="checkbox" class="check-services" id="'.$row['id_servicio'].'" checked="checked">';
            echo $row['description_'.$lang].'</div>';
        }
        else{
            echo '<div><input type="checkbox" class="check-services" id="'.$row['id_servicio'].'">';
            echo $row['description_'.$lang].'</div>';
        }

    }

    function existent_rentals($id, $lang){
        $results = array();
        $existent = mostrar_servicios_por_id_negocio($id,$lang);
        while($row1 = mysqli_fetch_array($existent)){
            array_push($results,$row1);
        }
        return $results;

    }
    ?>
<!--</ul>-->
