<?php
session_start();
$redirect = $_POST['redirect'];

if (isset($_SESSION['usuario']) && isset($_SESSION['id_negocio'])) {    
    unset($_SESSION['usuario']);
    unset($_SESSION['id_negocio']);
    session_destroy();
    if ($redirect == "cliente")
        header("Location: cliente.php");
    else if ($redirect == "index")
        header("Location: index.php");
}

?>
