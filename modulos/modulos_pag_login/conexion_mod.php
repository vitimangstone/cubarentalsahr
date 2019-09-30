<?php

function conexion($close_conn = false) {
    static $bd;
    if($bd === null){
        $bd = mysqli_connect("127.0.0.1", "root", "");
        if (!$bd) {
            echo "conexi&oacute; fallida";
            header("Location: index.php");
        }
        $var = mysqli_select_db($bd, "cubarentalsahrdb");
        $bd->query("SET NAMES 'utf8'");
        if ($var == false) {
            echo "Error";
            header("Location: index.php");
        }
    }
    if($close_conn){
        $bd = null;
    }
    
    return $bd;
}

function cerrar_conexion() {
    mysqli_close(conexion());
    conexion(true);
    return true;
}

function conexion_wordpress(){
    $conn = mysqli_connect("127.0.0.1","root","");
    if (!$conn) {
        echo "conexi&oacute; fallida";
//        header("Location: index.php");
    }
    $bd = mysqli_select_db($conn,'wordpressdb');
    $tildes = $conn->query("SET NAMES 'utf8'");
    if (!$bd) {
        echo "Error";
//        header("Location: index.php");
    }
    return $conn;
}

function cerrar_wordpress_conn($conn){
    mysqli_close($conn);
}

/* * *************************************************************************************************************** */
/*                                                                                                                */
/* ☻ SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT   SELECT ☻ */
/*                                                                                                                */
/* * *************************************************************************************************************** */

function comprobar_acceso_admin($usuario, $contra) {
    $aux = FALSE;
    $query = "select * from admin where usuario = '" . $usuario . "' and contra = '" . $contra . "'";
    $result = mysqli_query(conexion() ,$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0)
        $aux = TRUE;
    return $aux;
}

function comprobar_acceso_usuario($usuario, $contra) {
    $aux = FALSE;
    $query = "select * from usuario where nombre_usuario = '" . $usuario . "' and contrasenna = '" . $contra . "'";
    $result = mysqli_query(conexion() ,$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0)
        $aux = TRUE;
    return $aux;
}

function comprobar_nombre_usuario($usuario) {
    $aux = FALSE;
    $query = "select * from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0)
        $aux = TRUE;
    return $aux;
}

function comprobar_contrasena($usuario) {
    $aux = FALSE;
    $query = "select * from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0)
        $aux = TRUE;
    return $aux;
}

function comprobar_id_negocio($id) {
    $aux = FALSE;
    $query = "select * from negocio where id_negocio = '" . $id . "'";
    $result = mysqli_query(conexion() ,$query);
    $num_resultados = mysqli_num_rows($result);
    if ($num_resultados > 0)
        $aux = TRUE;
    return $aux;
}

function mostrar_cant_de_registros() {
    $query = "select count(id_negocio) from negocio";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $cant = $row["count(id_negocio)"];
    return $cant;
}

function mostrar_alquileres_cerca($cadena){
    $query = "SELECT
SUM(lugares_municipio.puntuacion) as puntos_totales,
municipio.nombre_municipio, municipio.id_municipio
FROM
lugares
INNER JOIN lugares_municipio ON lugares_municipio.lugar_id = lugares.id
INNER JOIN municipio ON lugares_municipio.municipio_id = municipio.id_municipio
WHERE
lugares.name in (".$cadena.")
GROUP BY
municipio.nombre_municipio
ORDER BY
puntos_totales DESC";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_qanda(){
    $query = "select * from qanda ORDER  by id Desc";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}



function mostrar_lugares($start, $limit) {
    $query = "select lugares.* from lugares limit ".$limit." offset ".$start." ";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function contar_lugares() {
    $query = "SELECT Count(lugares.id) as counter FROM lugares";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['counter'];
}

function mostrar_id_usuario_from_usuario($usuario) {
    $query = "select id_usuario from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $id = $row["id_usuario"];
    return $id;
}

function mostrar_usuario_from_id($id) {
    $query = "select * from usuario where id_usuario = '" . $id . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row;
}

function mostrar_nombre_usuario_from_usuario($id) {
    $query = "select nombre from usuario where id_usuario = '" . $id . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["nombre"];
    return $nombre;
}

function mostrar_nombre_from_usuario($usuario) {
    $query = "select nombre from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["nombre"];
    return $nombre;
}

function mostrar_descripcion_from_info_adicional($lang) {
    $query = "select descripcion_" . $lang . " from informacion_adicional";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_info_adicional($lang, $id_info) {
    $query = "select descripcion_" . $lang . " from informacion_adicional where id_info = '" . $id_info . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $caracteristica = $row['descripcion_' . $lang . ''];
    return $caracteristica;
}

function mostrar_info_adicional1($lang) {
    $query = "select descripcion_" . $lang . " from informacion_adicional";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_info($id_negocio) {
    $query = "select id_info from negocio_info_adicional where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_negocio_from_negocio($id_usuario) {
    $query = "select id_negocio from negocio where id_usuario = '" . $id_usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $id = $row["id_negocio"];
    return $id;
}


function mostrar_todas_imagenes() {

    $query = "SELECT * FROM imagen ";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_imagen_perfil($id_negocio) {
    $query = "select imagen from imagen where id_negocio = '" . $id_negocio . "' AND imagen_ubicacion = 'perfil'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $imagen = $row['imagen'];    
    return $imagen;
}

function mostrar_description_por_id($id_negocio){
    $query = "select negocio.description from negocio where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $desc = $row['description'];
    return $desc;
}

function mostrar_servicios(){
    $query = "select * from servicios";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_servicios_por_id_negocio($id_negocio,$lang){
//    print_r($lang);die;
    $query = "SELECT
servicios.description_".$lang."
FROM
servicios
INNER JOIN negocio_servicio ON negocio_servicio.id_servicio = servicios.id_servicio
INNER JOIN negocio ON negocio_servicio.id_negocio = negocio.id_negocio
WHERE
negocio.id_negocio = ".$id_negocio."";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_imagen($id_imagen) {
    $query = "select imagen from imagen where id_imagen = '" . $id_imagen . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $imagen = $row['imagen'];    
    return $imagen;
}

function mostrar_tipo_imagen_perfil($id_negocio) {
    $query = "select imagen,tipo_imagen from imagen where id_negocio = '" . $id_negocio . "' AND imagen_ubicacion = 'perfil'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $imagen = $row['imagen'];
    $tipo = $row['tipo_imagen'];
    return $tipo;
}

function mostrar_imagen_panoramica($id_negocio) {
    $query = "select imagen,tipo_imagen from imagen where id_negocio = '" . $id_negocio . "' AND imagen_ubicacion = 'panoramica'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $imagen = $row['imagen'];
    $tipo = $row['tipo_imagen'];
    return $imagen;
}

function mostrar_tipo_imagen_panoramica($id_negocio) {
    $query = "select imagen,tipo_imagen from imagen where id_negocio = '" . $id_negocio . "' AND imagen_ubicacion = 'panoramica'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $imagen = $row['imagen'];
    $tipo = $row['tipo_imagen'];
    return $tipo;
}

function mostrar_imagenes($id_negocio) {

    $query = "SELECT imagen, tipo_imagen, id_imagen FROM imagen WHERE id_negocio = $id_negocio AND imagen_ubicacion = 'galeria'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function contar_imagenes($id_negocio) {
    $query = "SELECT count(id_imagen) FROM imagen WHERE id_negocio = $id_negocio AND imagen_ubicacion = 'galeria'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $cant = $row['count(id_imagen)'];
    return $cant;
}

function mostrar_nombre_negocio($id_negocio) {
    $query = "select nombre from negocio where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row['nombre'];
    return $nombre;
}

function mostrar_info_negocio($id_negocio) {
    $query = "select * from negocio where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row;
}

function mostrar_negocios() {
    $query = "select * from negocio";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_en_zona($zona) {
    $query = "SELECT
negocio.*
FROM
zona
INNER JOIN negocio ON negocio.id_zona = zona.id_zona
WHERE
zona.nombre_zona = '".$zona."'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_posts($conn){
    $query = "SELECT
wp_posts.post_title, wp_posts.guid, wp_posts.ID
FROM
wp_posts
WHERE wp_posts.post_status = 'publish' AND wp_posts.ping_status = 'open' AND wp_posts.comment_status = 'open'
";
    $result = mysqli_query($conn,$query);
    return $result;
}

function mostrar_img_post($conn,$id_post){
    $query = "Select wp_posts.guid From wp_posts Where wp_posts.post_mime_type LIKE 'image%' AND wp_posts.post_parent = '".$id_post."' ";
    $result = mysqli_query($conn,$query);
    $row = mysqli_fetch_array($result);
    return $row['guid'];
}

function mostrar_negocios_lujosos() {
    $query = "select negocios_lujosos.id_negocio, negocios_lujosos.id_negocio_lujoso, negocio.nombre from negocios_lujosos
INNER JOIN negocio ON negocio.id_negocio = negocios_lujosos.id_negocio
order by negocios_lujosos.id_negocio_lujoso";
    $result = mysqli_query(conexion(), $query);
    return $result;
}

function mostrar_negocios_baratos() {
    $query = "select * from negocios_baratos";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_caracteristicas($lang) {
    $query = "select descripcion_" . $lang . " from caracteristicas";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_carcteristica($id_negocio) {
    $query = "select id_caracter,cantidad from negocio_caracteristicas where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_descripcion_caracteristica_idioma($lang, $id_caracter) {
    $query = "select descripcion_" . $lang . " from caracteristicas where id_caracter = '" . $id_caracter . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $caracteristica = $row['descripcion_' . $lang . ''];
    return $caracteristica;
}

function mostrar_estadisticas($id_negocio) {
    $query = "select * from estadistica where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row;
}

function mostrar_cant_reservas($id_negocio) {
    $query = "select count(id_reservacion) from reservacion where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['count(id_reservacion)'];
}

function mostrar_cant_votos($id_negocio) {
    $query = "select total_votos from encuesta where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['total_votos'];
}

function mostrar_cant_comentarios($id_negocio) {
    $query = "select count(id_comentario) from comentario where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['count(id_comentario)'];
}

function mostrar_cant_fotos($id_negocio) {
    $query = "select count(id_imagen) from imagen where id_negocio = '" . $id_negocio . "'and imagen_ubicacion = 'galeria'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['count(id_imagen)'];
}

function mostrar_cant_cuartos($id_negocio) {
    $query = "select * from negocio_caracteristicas where id_negocio = '" . $id_negocio . "' and id_caracter = 1";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['cantidad'];
}

function mostrar_cant_votos_genial($id_negocio) {
    $query = "select cant_genial from encuesta where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['cant_genial'];
}

function mostrar_cant_votos_bien($id_negocio) {
    $query = "select cant_bien from encuesta where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['cant_bien'];
}

function mostrar_cant_votos_regular($id_negocio) {
    $query = "select cant_regular from encuesta where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['cant_regular'];
}

function mostrar_cant_votos_fatal($id_negocio) {
    $query = "select cant_fatal from encuesta where id_negocio = '" . $id_negocio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['cant_fatal'];
}

function mostrar_provincias() {
    $query = "select * from provincia";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_provincias($nombre_provincia) {
    $query = "select id_provincia from provincia where nombre_provincia = '" . $nombre_provincia . "'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_municipio($nombre_municipio) {
    $query = "select id_municipio from municipio where nombre_municipio = '" . $nombre_municipio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_municipio'];
}

function mostrar_id_provincias_dado_id_municipio($id_municipio) {
    $query = "select id_provincia from municipio where id_municipio = '" . $id_municipio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_provincia'];
}

function mostrar_nombre_provincia_dado_id_provincia($id_provincia) {
    $query = "select nombre_provincia from provincia where id_provincia = '" . $id_provincia . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['nombre_provincia'];
}

function mostrar_municipios($id_provincia) {
    $query = "select * from municipio where id_provincia ='" . $id_provincia . "'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

//revisar esta funcion con denis
function mostrar_zona($id_municipio) {
    $query = "select nombre_zona from zona where id_municipio = '" . $id_municipio . "'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_zona($nombre_zona) {
    $query = "select id_zona from zona where nombre_zona = '" . $nombre_zona . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_zona'];
}

function mostrar_id_zona_dado_id_municipio($id_municipio) {
    $query = "select id_zona from zona where id_municipio = '" . $id_municipio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_zona'];
}

function mostrar_tipos_renta() {
    $query = "select * from tipo_renta";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_tipos_renta($nombre_tipo, $lang) {
    $query = "select id_tipo_renta from tipo_renta where nombre_tipo_" . $lang . " = '" . $nombre_tipo . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_tipo_renta'];
}

function mostrar_id_municipio_dado_id_zona($id_zona) {
    $query = "select id_municipio from zona where id_zona = '" . $id_zona . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_municipio'];
}

function mostrar_alquileres_por_municipio($municipios_ids){
    $query = "SELECT DISTINCT
negocio.*,
lugares_municipio.puntuacion
FROM
negocio
INNER JOIN zona ON negocio.id_zona = zona.id_zona
INNER JOIN lugares_municipio ON lugares_municipio.municipio_id = zona.id_municipio
INNER JOIN municipio ON municipio.id_municipio = lugares_municipio.municipio_id
where zona.id_municipio in (".$municipios_ids.")";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_nombre_zona_dado_id_zona($id_zona) {
    $query = "select nombre_zona from zona where id_zona = '" . $id_zona . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['nombre_zona'];
}

function mostrar_nombre_municipio_dado_id_municipio($id_municipio) {
    $query = "select nombre_municipio from municipio where id_municipio = '" . $id_municipio . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['nombre_municipio'];
}

function mostrar_nombre_tipo_dado_id_tipo_renta($id_tipo_renta, $lang) {
    $query = "select nombre_tipo_" . $lang . " from tipo_renta where id_tipo_renta = '" . $id_tipo_renta . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['nombre_tipo_' . $lang . ''];
}

function mostrar_info_comentario($id_negocio) {
    $query = "select nombre_comentario,descripcion_comentario,fecha_comentario 
              from comentario where id_negocio = '" . $id_negocio . "' order by id_comentario desc";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function existe_panoramica($id_negocio) {
    $aux = FALSE;
    $query = "select count(id_imagen) from imagen where id_negocio = '" . $id_negocio . "' and imagen_ubicacion = 'panoramica'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $cant = $row['count(id_imagen)'];
    if ($cant > 0)
        $aux = TRUE;
    return $aux;
}

function mostrar_negocios_1habitacion() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 1 and cantidad=1";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_logs(){
    $query = "select * from user_info";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_2habitacion() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 1 and cantidad=2";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_3habitacion() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 1 and cantidad=3";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_mas_3habitacion() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 1 and cantidad>3";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_piscina() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 14";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_playa() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 12";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_garaje() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 15 or id_caracter=16";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_apartamentos() {
    $query = "select * from negocio where id_tipo_renta=2";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_hab_climatizadas() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 1";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_baratos_dado_precio() {
    $query = "select * from negocio where precio < 25";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_busqueda_avanzada1($tipoRenta, $provincia, $municipio, $zona, $precioMin, $precioMax, $lang) {
//    print_r($municipio);die;
    $tipo_renta_aux = "";
    $provincia_aux = "";
    $municipio_aux = "";
    $zona_aux = "";
    $natural_join = "";
    $where = "";
    $and1 = "";
    $and2 = "";
    $and3 = "";
    $and4 = "";
    $cont = 0;
    $precio = "";
    $select_tipo_Renta = "Seleccione un tipo de renta";
    $select_provincia = "Seleccione una provincia";
    $select_municipio = "Seleccione un municipio";
    $select_zona = "Seleccione una zona";
    if ($lang == 'en') {
        $select_tipo_Renta = "Select a rent type";
        $select_provincia = "Select a province";
        $select_municipio = "Select a municipality";
        $select_zona = "Select an area";
    }
    if ($tipoRenta != $select_tipo_Renta) {
        $cont++;
        $tipo_renta_query = "select * from tipo_renta where nombre_tipo_" . $lang . " = '" . $tipoRenta . "'";
        $tipo_renta_resultado = mysqli_query(conexion() ,$tipo_renta_query);
        $tipo_renta_fila = mysqli_fetch_array($tipo_renta_resultado);
        $tipo_renta_aux = "id_tipo_renta = " . $tipo_renta_fila['id_tipo_renta'];
    }
    if ($provincia != $select_provincia) {
        $cont++;
        $natural_join = "natural join zona natural join municipio natural join provincia";
        $provincia_aux = "id_provincia = " . $provincia;
        if ($municipio != $select_municipio) {
            $and2 = "and";
            $municipio_aux = "nombre_municipio = '" . $municipio . "'";
            if ($zona != $select_zona) {
                $and3 = "and";
                $zona_aux = "nombre_zona = '" . $zona . "'";
            }
        }
    }
    if ($precioMin != "" && $precioMax != "") {
        $cont++;
        $precio = "precio between " . $precioMin . " and " . $precioMax;
    } else if ($precioMin != "") {
        $cont++;
        $precio = "precio >= " . $precioMin;
    } else if ($precioMax != "") {
        $cont++;
        $precio = "precio <= " . $precioMax;
    }
    if ($tipo_renta_aux != "" || $provincia_aux != "" || $precio != "") {
        $where = "where";
    }
    switch ($cont) {
        case 2:
            if ($tipo_renta_aux != "")
                $and1 = "and";
            else
                $and4 = "and";
            break;
        case 3: $and1 = "and";
            $and4 = "and";
            break;
    }
    $negocios_query = "select * from negocio " . $natural_join . " " . $where . " " . $tipo_renta_aux . " " . $and1 . " " . $provincia_aux . " " . $and2 . " " . $municipio_aux . " " . $and3 . " " . $zona_aux . " " . $and4 . " " . $precio;
//    print_r($negocios_query);die;
    $negocios = mysqli_query(conexion() ,$negocios_query);
    return $negocios;
}

function mostrar_tipos_rentas($lang) {
    $query = "select nombre_tipo_" . $lang . "  from tipo_renta";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_casas() {
    $query = "select *  from negocio where id_tipo_renta=1";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_habitaciones() {
    $query = "select *  from negocio where id_tipo_renta=3";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_nombre_negocio_dado_nombre($nombre) {
    $query = "select * from negocio where nombre like '%$nombre%'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_nombre_negocio_dado_id($id) {
    $query = "select * from negocio where id_negocio like '%$id%'";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_por_provincia() {
    $query = "select *  from negocio where tipo_renta=1";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_entrada_independiente() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 2";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_sala() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 4";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_comedor() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 5";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_sala_comedor() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 6";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_cocina_independiente() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 7";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_cocina_compartida() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 8";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_bano_independiente() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 9";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_balcon() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 11";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_terraza() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 12";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_patio() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 13";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_garaje_independiente() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 15";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_garaje_compartido() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 16";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_jardin() {
    $query = "select * from negocio natural join negocio_caracteristicas where id_caracter = 17";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_habitaciones_climatizadas() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 1";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_agua_fria_caliente() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 2";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_entrega_llaves() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 3";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_acompanantes() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 4";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_refrigerador() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 5";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_telefono() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 6";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_televisor() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 7";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_reproductor_video() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 8";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_reproductor_musica() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 9";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_aseo() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 10";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_negocios_lavadora() {
    $query = "select * from negocio natural join negocio_info_adicional where id_info = 11";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

//new
function mostrar_nombre_arrendatario($usuario) {
    $query = "select nombre from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["nombre"];
    return $nombre;
}

function mostrar_apellidos_arrendatario($usuario) {
    $query = "select apellidos from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["apellidos"];
    return $nombre;
}

function mostrar_telefono_casa_arrendatario($usuario) {
    $query = "select telefono_casa from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["telefono_casa"];
    return $nombre;
}

function mostrar_celular_arrendatario($usuario) {
    $query = "select telefono_movil from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["telefono_movil"];
    return $nombre;
}

function mostrar_correo_arrendatario($usuario) {
    $query = "select mail from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["mail"];
    return $nombre;
}

function mostrar_nombre_usuario_arrendatario($usuario) {
    $query = "select nombre_usuario from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["nombre_usuario"];
    return $nombre;
}

function mostrar_pass_arrendatario($usuario) {
    $query = "select contrasenna from usuario where nombre_usuario = '" . $usuario . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    $nombre = $row["contrasenna"];
    return $nombre;
}

function mostrar_paises() {
    $query = "select * from pais";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_id_pais($pais, $lang) {
    $query = "select id_pais from pais where descripcion_" . $lang . " = '" . $pais . "'";
    $result = mysqli_query(conexion() ,$query);
    $row = mysqli_fetch_array($result);
    return $row['id_pais'];
}

// function mostrar_if_user_registrated($server){
//     $query = "select modal_view from user_info where visit_ip = '".$server."'";
//     $result = mysqli_query(conexion() ,$query);
//     print_r($query);
//     $row = mysqli_fetch_array($result);
//     return $row['modal_view'];
// }

// function mostrar_id_por_server($server){
//     $query = "select id from user_info where visit_ip = '".$server."'";
//     $result = mysqli_query(conexion() ,$query);
//     $row = mysqli_fetch_array($result);
//     return $row['id'];
// }

function mostrar_contactos(){
    $query = 'select * from contacto';
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

function mostrar_calendario_negocio($id_negocio){
    $query = 'select * from calendario where negocio_id ='.$id_negocio;
    $result = mysqli_query(conexion() ,$query);
    return $result;
}

/* * *************************************************************************************************************** */
/*                                                                                                                */
/* ☻ INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT   INSERT ☻ */
/*                                                                                                                */
/* * *************************************************************************************************************** */

function insertar_user_info($server,$name_user, $email_user, $no_mostrar){
    $query = "insert into user_info values(' ','".$server."','".$name_user."','".$email_user."','".$no_mostrar."')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_servicio_negocio($negocio_id,$service_id){
    $query = "insert into negocio_servicio values('".$negocio_id."','".$service_id."') ";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_qanda($name, $text){
    $query = 'insert into qanda values(" ","'.$name.'","'.$text.'", NULL)';
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_usuario($id, $user, $nombre, $apellido, $mail, $telf_casa, $telf_movil, $contra, $bloqueado) {
    $query = "insert into usuario values('" . $id . "','" . $user . "','" . $nombre . "','" . $apellido . "','" . $mail . "','" . $telf_casa . "','" . $telf_movil . "','" . $contra . "','" . $bloqueado . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_negocio($id_negocio, $id_usuario, $nombre_neg, $direccion, $zona, $tipo_renta, $precio, $bloqueado, $fecha) {
    $query = "insert into negocio values('" . $id_negocio . "','" . $id_usuario . "','" . $nombre_neg . "','" . $direccion . "','" . $zona . "','" . $tipo_renta . "','" . $precio . "','0','0','" . $bloqueado . "','" . $fecha . "', '0','','')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_calendario($id_negocio, $initial_date, $final_date) {
    $query = "insert into calendario values('','" . $initial_date . "','" . $final_date . "','" . $id_negocio . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_info_adicional($id_negocio, $id_info) {
    $query = "insert into negocio_info_adicional values('" . $id_negocio . "','" . $id_info . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_imagen($id_imagen, $imagen, $tipo_imagen, $id_negocio, $ubicacion) {
    $query = "insert into imagen values('" . $id_imagen . "','" . $imagen . "','" . $tipo_imagen . "','" . $id_negocio . "','" . $ubicacion . "','0')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_negocio_caracteristica($id_negocio, $id_caracteristica, $cantidad) {
    $query = "insert into negocio_caracteristicas values('" . $id_negocio . "','" . $id_caracteristica . "','" . $cantidad . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_negocio_info_adicional($id_negocio, $id_info) {
    $query = "insert into negocio_info_adicional values('" . $id_negocio . "','" . $id_info . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_estadistica($id_estadistica, $id_negocio, $visitas, $ranking) {
    $query = "insert into estadistica values('" . $id_estadistica . "','" . $id_negocio . "','" . $visitas . "','" . $ranking . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_reservacion($id_reservacion, $id_negocio, $nombre_completo, $correo, $pais, $fecha_entrada,$fecha_salida, $cant_viajeros, $cant_habitaciones, $hora_llegada, $descripcion_reservacion) {
    $query = "insert into reservacion values('" . $id_reservacion . "','" . $id_negocio . "','" . $nombre_completo . "','" . $correo . "','" . $pais . "','" . $fecha_entrada . "','" . $fecha_salida . "','" . $cant_viajeros . "','" . $cant_habitaciones . "','" . $hora_llegada . "','" . $descripcion_reservacion . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_comentario($id_comentario, $id_negocio, $nombre_comentario, $descripcion_comentario, $fecha_comentario) {
    $query = "insert into comentario values('" . $id_comentario . "','" . $id_negocio . "','" . $nombre_comentario . "','" . $descripcion_comentario . "','" . $fecha_comentario . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_encuesta($id_encuesta, $id_negocio, $cant_genial, $cant_bien, $cant_regular, $cant_fatal, $total_votos) {
    $query = "insert into encuesta values('" . $id_encuesta . "','" . $id_negocio . "','" . $cant_genial . "','" . $cant_bien . "','" . $cant_regular . "','" . $cant_fatal . "','" . $total_votos . "')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_mensaje_contacto($nombre, $correo, $mensaje,$fecha_contactenos) {
    $query = "insert into contacto values('','" . $nombre . "','" . $correo . "','" . $mensaje . "','false','".$fecha_contactenos."')";
    mysqli_query(conexion() ,$query);
    return true;
}

function insertar_logs($utc,$anio,$mes,$dia,$hora,$minuto,$segundo,$usuariolog){
    $consulta = "INSERT INTO logs VALUES ('".$utc."','','".$hora."','".$minuto."','".$segundo."','".$dia."','".$mes."','".$anio."','".$usuariolog."')";
    mysqli_query(conexion() ,$consulta);
    return true;
}

function insertar_user_logs($utc,$locationPathName,$visitIP,$navigator,$locationHost){
    $consulta = 'INSERT INTO user_logs VALUES ("'.$utc.'","'.$locationPathName.'","'.$visitIP.'","'.$navigator.'","'.$locationHost.'"," ")';
    mysqli_query(conexion() ,$consulta);
    return true;
}

/* * *************************************************************************************************************** */
/*                                                                                                                */
/* ☻ DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE   DELETE ☻ */
/*                                                                                                                */
/* * *************************************************************************************************************** */

function eliminar_negocio_caracteristica($id_negocio) {
    $query = "delete from negocio_caracteristicas where id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function eliminar_calendar_from_negocio($id_negocio, $id_calendar) {
    $query = "delete from calendario where negocio_id = '" . $id_negocio . "' AND id ='" . $id_calendar . "'";
    print_r($query);
    mysqli_query(conexion() ,$query);
    return true;
}

function eliminar_servicio_negocio($id_negocio, $id_servicio){
    $query ="delete from negocio_servicio where id_negocio='".$id_negocio."' AND id_servicio = '".$id_servicio."'";
    mysqli_query(conexion() ,$query);
    return true;
}

function eliminar_negocio_info_adicional($id_negocio) {
    $query = "delete from negocio_info_adicional where id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function eliminar_imagen_galeria($id_imagen) {
    $query = "delete from imagen where id_imagen = " . $id_imagen;
    mysqli_query(conexion() ,$query);
    return true;
}

function eliminar_imagen_portada($id_negocio) {
    $query = "delete from imagen where imagen_ubicacion = 'panoramica' and id_negocio = " . $id_negocio . "";
    mysqli_query(conexion() ,$query);
    return true;
}

/* * *************************************************************************************************************** */
/*                                                                                                                */
/* ☻ UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE   UPDATE ☻ */
/*                                                                                                                */
/* * *************************************************************************************************************** */

function modificar_encuesta($id_negocio, $cant_genial, $cant_bien, $cant_regular, $cant_fatal) {
    $query = "update encuesta set cant_genial = cant_genial + " . $cant_genial . ", cant_bien = cant_bien + " . $cant_bien . ",cant_regular = cant_regular + " . $cant_regular . ",cant_fatal = cant_fatal + " . $cant_fatal . ",total_votos = total_votos + 1 where id_negocio = " . $id_negocio . "";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_qanda($answer,$id){
    $query = "update qanda set answer = '".$answer."' where id = ".$id." ";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_user_info($server_ip, $name_user, $email_user, $no_mostrar){
//    print_r($server_ip);die;
    $query = "update user_info set visit_name = '".$name_user."',visit_email = '".$email_user."',modal_view = ".$no_mostrar." where id = '".$server_ip."'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_visitas($id_negocio) {
    $query = "update negocio set visitas = visitas + 1 where id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_negocio_rento($id_negocio, $nombre_negocio, $dir, $id_zona, $id_tipo_renta, $precio) {
    $query = "update negocio set nombre = '" . $nombre_negocio . "',direccion = '" . $dir . "',id_zona = '" . $id_zona . "', id_tipo_renta = '" . $id_tipo_renta . "', precio = '" . $precio . "' where id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_imagenes($imagen, $tipo_imagen, $id_imagen){
    $query = "update imagen set imagen = '" . $imagen . "', tipo_imagen = '" . $tipo_imagen . "', actualizada = TRUE  where id_imagen = " . $id_imagen . "";
    mysqli_query(conexion() ,$query);
    return true;
}


function modificar_imagen_panoramica($imagen, $tipo_imagen, $id_negocio) {
    $query = "update imagen set imagen = '" . $imagen . "', tipo_imagen = '" . $tipo_imagen . "' where imagen_ubicacion = 'panoramica' and id_negocio = " . $id_negocio . "";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_imagen_perfil($imagen, $tipo_imagen, $id_negocio) {
    $query = "update imagen set imagen = '" . $imagen . "', tipo_imagen = '" . $tipo_imagen . "' where imagen_ubicacion = 'perfil' and id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_cuenta_usuario($nombre_usuario, $nombre_arrendador, $apellidos, $correo, $telefono_casa, $telefono_cel) {
    $query = "update usuario set nombre_usuario = '" . $nombre_usuario . "',nombre = '" . $nombre_arrendador . "',apellidos = '" . $apellidos . "', mail = '" . $correo . "', telefono_casa = '" . $telefono_casa . "', telefono_movil = '" . $telefono_cel . "' where nombre_usuario = '" . $nombre_usuario . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_pass_arrendatario($nombre_usuario, $passNueva) {
    $query = "update usuario set contrasenna = '" . $passNueva . "' where nombre_usuario = '" . $nombre_usuario . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function modificar_descripcion($id_negocio,$description){
    $query = "update negocio set description = '" . $description . "' where id_negocio = '" . $id_negocio . "'";
    mysqli_query(conexion() ,$query);
    return true;
}

function ir_pag_anterior($id){
//    print_r($id);die;
    $query = 'SELECT
                negocio.id_negocio,
                negocio.nombre
                FROM
                negocio
                WHERE
                negocio.id_negocio < '.$id.'
                ORDER BY
                negocio.id_negocio DESC
                LIMIT 1';
    $result = mysqli_query(conexion() ,$query);
    $real_name = mysqli_fetch_array($result)['nombre'];
    $generated_name = str_replace(" ","",$real_name);
    $generated_name = str_replace("ó","o",$generated_name);
    $generated_name = str_replace("ñ","n",$generated_name);
    return $generated_name;

}


function ir_pag_superior($id){
//    print_r($id);die;
    $query = 'SELECT
                negocio.id_negocio,
                negocio.nombre
                FROM
                negocio
                WHERE
                negocio.id_negocio > '.$id.'
                ORDER BY
                negocio.id_negocio ASC
                LIMIT 1';
    $result = mysqli_query(conexion() ,$query);
    $real_name = mysqli_fetch_array($result)['nombre'];
    $generated_name = str_replace(" ","",$real_name);
    $generated_name = str_replace("ó","o",$generated_name);
    $generated_name = str_replace("ñ","n",$generated_name);
//    print_r($real_name);die;
    return $generated_name;

}

/* * **************************************************************************************************************** */

/* CONSULTAS PARA EL ADMIN */

function mostrar_reservas() {
    $query = "select * from reservacion";
    $result = mysqli_query(conexion() ,$query);
    return $result;
}




?>
