<ul>
    <?php
        session_start();
        require ("modulos/modulos_pag_login/conexion_mod.php");
        conexion();
        $lang = 'en';
        if(isset($_SESSION['lang'])){
            $lang = $_SESSION['lang'];
        }
        $results = mostrar_servicios_por_id_negocio($_SESSION['id_negocio'],$lang);
        while($row = mysqli_fetch_array($results)){
            echo '<li>'.$row['description_'.$lang].'</li>';
        }
    ?>
</ul>
