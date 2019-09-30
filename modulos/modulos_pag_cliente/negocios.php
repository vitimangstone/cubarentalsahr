<script>
    $("div.holder").jPages({
        containerID: "itemContainer",
        first: "\u25c4◄",
        last: "\u25ba►",
        next: "\u25ba",
        previous: "\u25c4",
        perPage: 5,
        midRange: 6
    });
</script>

<?php
session_start();
require ("../modulos_pag_login/conexion_mod.php");
conexion();


if(isset($_SESSION['lang'])){
    $lang = $_SESSION['lang'];
}else if(isset($_COOKIE['lang'])){
    $lang = $_COOKIE['lang'];
}


if(isset($_POST['busqueda']) && $_POST['busqueda'] == 'limpiar'){
    unset($_POST['busqueda']);
    unset($_SESSION['busqueda']);
    unset($_POST['valor']);
    unset($_SESSION['valor']);
    unset($_POST['tipoRenta']);
    unset($_SESSION['tipoRenta']);
    unset($_POST['provincia']);
    unset($_SESSION['provincia']);
    unset($_POST['municipio']);
    unset($_SESSION['municipio']);
    unset($_POST['zona']);
    unset($_SESSION['zona']);
    unset($_POST['precioMin']);
    unset($_SESSION['precioMin']);
    unset($_POST['precioMax']);
    unset($_SESSION['precioMax']);
    unset($_SESSION['negocios']);
}

if(isset($_SESSION['busqueda'])&& !isset($_POST['busqueda'])){
    $_POST['busqueda'] = $_SESSION['busqueda'];
}

if(isset($_SESSION['valor'])&& !isset($_POST['valor'])){
    $_POST['valor'] = $_SESSION['valor'];
}

if(isset($_SESSION['tipoRenta'])&& !isset($_POST['tipoRenta'])){
    $_POST['tipoRenta'] = $_SESSION['tipoRenta'];
}
if(isset($_SESSION['provincia'])&& !isset($_POST['provincia'])){
    $_POST['provincia'] = $_SESSION['provincia'];
}
if(isset($_SESSION['municipio'])&& !isset($_POST['municipio'])){
    $_POST['municipio'] = $_SESSION['municipio'];
}
if(isset($_SESSION['zona'])&& !isset($_POST['zona'])){
    $_POST['zona'] = $_SESSION['zona'];
}
if(isset($_SESSION['precioMin'])&& !isset($_POST['precioMin'])){
    $_POST['precioMin'] = $_SESSION['precioMin'];
}
if(isset($_SESSION['precioMax'])&& !isset($_POST['precioMax'])){
    $_POST['precioMax'] = $_SESSION['precioMax'];
}

if(isset($_SESSION['cadena'])&& !isset($_POST['cadena'])){
    $_POST['cadena'] = $_SESSION['cadena'];
}

if (isset($_POST["busqueda"])) {
    $busqueda = $_POST["busqueda"];

    $real_rows = [];
    $_SESSION['busqueda'] = $busqueda;
    switch ($busqueda) {
        case 'casas': $negocios = mostrar_negocios_casas();
            break;
        case 'independientes': $negocios = mostrar_negocios_apartamentos();
            break;
        case '1_habitacion': $negocios = mostrar_negocios_1habitacion();
            break;
        case '2_habitacion': $negocios = mostrar_negocios_2habitacion();
            break;
        case '3_habitacion': $negocios = mostrar_negocios_3habitacion();
            break;
        case 'mas_3_habitacion': $negocios = mostrar_negocios_mas_3habitacion();
            break;
        case 'piscina': $negocios = mostrar_negocios_piscina();
            break;
        case 'playa': $negocios = mostrar_negocios_playa();
            break;
        case 'garaje': $negocios = mostrar_negocios_garaje();
            break;
        case 'climatizadas': $negocios = mostrar_negocios_hab_climatizadas();
            break;
        case 'economicas': $negocios = mostrar_negocios_baratos_dado_precio();
            break;
        case 'nombre_negocio':
            $nombre = $_POST["valor"];
            $_SESSION['valor'] = $nombre;
            $negocios = mostrar_nombre_negocio_dado_nombre($nombre);
            break;
        case 'identificador':
            $id = $_POST["valor"];
            $_SESSION['valor'] = $id;
            $negocios = mostrar_nombre_negocio_dado_id($id);
            break;
        case 'avanzada1':
            $tipoRenta = $_POST["tipoRenta"];
            $_SESSION["tipoRenta"] = $tipoRenta;
            $provincia = $_POST["provincia"];
            $_SESSION["provincia"] = $provincia;
            $municipio = $_POST["municipio"];
            $_SESSION["municipio"] = $municipio;
            $zona = $_POST["zona"];
            $_SESSION["zona"] = $zona;
            $precioMin = $_POST["precioMin"];
            $_SESSION["precioMin"] = $precioMin;
            $precioMax = $_POST["precioMax"];
            $_SESSION["precioMax"] = $precioMax;

            $negocios = mostrar_negocios_busqueda_avanzada1($tipoRenta, $provincia, $municipio, $zona, $precioMin, $precioMax, $lang);
            break;
        case 'rentals-by-places':
            $cadena = $_POST['cadena'];
            $_SESSION["cadena"] = $cadena;
            $municipios = mostrar_alquileres_cerca($cadena);
            $real_rows = mostrar_alquileres($municipios);
//            $this->negocios($real_rows);

            break;
//        case 'limpiar':
//            print_r("si entro pero no me muestro");die;
//            $real_rows = mostrar_negocios();
//            break;
    }

} else {
//    print_r("si entro pero no me muestro");die;
    $negocios = mostrar_negocios();
}
if(!isset($_SESSION['negocios'])){
    $pos1 = 0;
//    print_r("mi if");die;
    while ($row = mysqli_fetch_array($negocios)){
        $real_rows[$pos1] = $row;
        $pos1++;
    }
    $_SESSION['negocios'] = $real_rows;
}
else{
//    print_r('mi else');die;
    $pos = 0;
    if(isset($negocios)){
        while ($row1 = mysqli_fetch_array($negocios)){
            foreach($_SESSION['negocios'] as $row2){
                if($row1['id_negocio'] == $row2['id_negocio']){
                    $real_rows[$pos] = $row1;
                    $pos++;
                }
            }
        }
    }
    $_SESSION['negocios'] = $real_rows;

}
negocios($real_rows,$lang);

function negocios($real_rows, $lang){
    if(count($real_rows) > 0){
        foreach ($real_rows as $row) {
            $imagen = $imagen = mostrar_imagen_perfil($row['id_negocio']);
            $cant_cuartos = mostrar_cant_cuartos($row['id_negocio']);
            $id_municipio = mostrar_id_municipio_dado_id_zona($row['id_zona']);
            $nombre_municipio = mostrar_nombre_municipio_dado_id_municipio($id_municipio);
            $id_provincia = mostrar_id_provincias_dado_id_municipio($id_municipio);
            $nombre_provincia = mostrar_nombre_provincia_dado_id_provincia($id_provincia);
            $nombre_zona = mostrar_nombre_zona_dado_id_zona($row['id_zona']);
            $nombre_tipo_renta = mostrar_nombre_tipo_dado_id_tipo_renta($row['id_tipo_renta'], $lang);
            $user = mostrar_nombre_usuario_from_usuario($row['id_usuario']);
            $description = mostrar_description_por_id($row['id_negocio']);
            require("../../language_config.php");
            echo '<div class="row contenedor_negocio">';
            $generated_name = str_replace(" ", "", $row['nombre']);
            $generated_name = str_replace('ó', 'o', $generated_name);
            $generated_name = str_replace('ñ', 'n', $generated_name);
            echo '<a href = "' . $generated_name . '">';
            echo '<div class="contenedor_imagenes">';
            echo '<img class = "foto_perfil" src = "' . $imagen . '">';
            echo '</div>';
            echo '<div class="contenedor_info_negocio row">';
            echo '<h2 class="nombre_negocio col-lg-12 col-md-12 col-sm-12 col-xs-12">' . strtoupper($row['nombre']) . '</h2>';
            echo '<h3 class="caracteristicas_negocio" style="margin-top: 60px">'.text_cliente_precio.': <span class = " texto">' . $row['precio'] . '.00 CUC / ' . text_cliente_noche . '</span><br class="hidden-xs"></h3>';

            echo '<h3 class="caracteristicas_negocio">'.text_tipo_renta.': <span class = "texto">' . $nombre_tipo_renta . '</span><br class="hidden-xs"><span class="slash"> / </span></h3>';
            echo '';
            if ($cant_cuartos > 1)
                echo '<h3 class="caracteristicas_negocio">'.text_cant_hab.': <span class = "texto">' . $cant_cuartos . ' ' . text_habitaciones . '</span><br class="hidden-xs"></h3>';
            else
                echo '<h3 class="caracteristicas_negocio">'.text_cant_hab.': <span class = "texto">' . $cant_cuartos . ' ' . text_habitacion . '</span><br class="hidden-xs"></h3>';
//            echo '<span class="precio_label">Precio: </span>';
//            echo '<span class = "precio">' . $row['precio'] . '.00 CUC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>';
            echo '<h3 class="caracteristicas_negocio">' . text_cliente_lugar . ': <span class = "texto">' . $nombre_provincia . ', ' . $nombre_municipio . ', ' . $nombre_zona . '.</span><br class="hidden-xs"> </h3>';
            echo '<h3 class="caracteristicas_negocio" style="margin-top: 20px"> '.text_descripcion_resumen.': <span class = "texto">' . str_split($description,290)[0] . '...</span><br class="hidden-xs"> </h3>';
            echo '</div>';
            echo '</a>';
            echo '</div>';
        }
    }

    else{
        echo '<h3>Que lastima, Cuba Rentals AHR actualmente no presenta un lugar con las caracteristicas seleccionadas.</h3>
            <h4>Les brindamos 2 opciones</h4>
            <ol>
                <li> Presione el boton Limpiar y busque nuevamente con otras caracteristicas</li>
                <li> Contáctetenos enviandonos sus requisitos y buscaremos un lugar de su gusto en no mas de 72 horas</li>
            </ol>
            <h4>Disculpe las molestias ocacionadas</h4>';
    }

}

function exists($list,$search){
    $count =0;
    while ($count<count($list)){
        if($list[$count]['id_negocio']==$search['id_negocio']){
            return true;
        }
        $count++;
    }
    return false;
}

function mostrar_alquileres($results){
    $negocios = array();
    $flag = false;
    while($row = mysqli_fetch_array($results)){
        $temp = mostrar_alquileres_por_municipio($row['id_municipio']);
        $counting_houses = 0;
        while ($row2 = mysqli_fetch_array($temp)){

            if(!exists($negocios,$row2)){
                array_push($negocios,$row2);
            }
            if(count($negocios) > 14){
                $flag = true;
                break;
            }
            if($counting_houses > 5){
                break;
            }
            $counting_houses ++;
        }
        if($flag == true){
            break;
        }
    }

    return $negocios;
}
?>

