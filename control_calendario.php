<?php
session_start();
require ("modulos/modulos_pag_login/conexion_mod.php");

if(isset($_POST['selectedDates']) && isset($_POST['negocio_id'])){
    $selectedDays = $_POST['selectedDates'];
    $negocio_id = $_POST['negocio_id'];
    foreach($selectedDays as $selected){
        insertar_calendario($negocio_id, $selected['initial_date'], $selected['final_date']);
    }
}
if(isset($_GET['negocio_id'])){
    $negocio_id = $_GET['negocio_id'];
    get_calendar($negocio_id);
}
if(isset($_GET['negocio_id']) && isset($_GET['calendar_id'])){
    print_r("dasdasdasd");
    eliminar_calendar_from_negocio($_GET['negocio_id'], $_GET['calendar_id']);
    // get_calendar($negocio_id);
}

function get_calendar($negocio_id){
    $allCalendar = [];
    $calendario = mostrar_calendario_negocio($negocio_id);
    while ($row = mysqli_fetch_array($calendario)){

        $calendar = [
            'initial_date' => $row['initial_date'],
            'final_date' => $row['final_date'],
            'negocio_id' => $row['negocio_id'],
            'id' => $row['id']
        ];
        array_push($allCalendar, $calendar);
    }
    echo json_encode(['calendario' => $allCalendar]);
}

?>