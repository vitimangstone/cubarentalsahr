<script>
    $("div.holder").jPages({
        containerID: "qanda_container",
        first: "\u25c4◄",
        last: "\u25ba►",
        next: "\u25ba",
        previous: "\u25c4",
        perPage: 5,
        midRange: 6
    });
</script>
<?php
require ("../modulos_pag_login/conexion_mod.php");
require ("../../language_config.php");

conexion();
echo '
<div class="container" >
    <div class="row">
        <div class="col-ld-5 col-md-7 col-sm-10 col-xs-10">
            <label for="qanda_user_name">Tu Nombre</label>
            <input name="qanda_user_name" id="qanda_user_name" type="text" class="form-control">
        </div>

    </div><br/>
    <div class="row">
        <div class="col-ld-5 col-md-7 col-sm-10 col-xs-10">
            <label for="qanda_user_text">Pregunsta o Sugerencia</label>
            <textarea name="qanda_user_text" id="qanda_user_text" class="form-control" rows="10"></textarea><br/>

        </div>
    </div>
    <div class="row">
        <div class="col-xs-3 col-xs-offset-2">
            <input type="button" id="sending-question" onclick="enviar_pregunta()" class="btn btn-lg" value="'.qanda_text_sending.'">

        </div>
    </div>


</div>

';

$result = mostrar_qanda();
echo '<h2>'.qanda_recent_messages.'</h2>';
while($row = mysqli_fetch_array($result)){
    echo '<div class="jumbotron">
                    <h3>'.$row["name"].': '.$row["text"].'</h3>
                    ';
    if($row['answer'] == ''){
        echo '<input name="my_answer" type="text" class="col-xs-8" id="my_answer'.$row['id'].'">
                                <input id="qanda_id'.$row['id'].'" hidden value="'.$row['id'].'">
                                <button onclick="enviar_respuesta('.$row['id'].')" class="btn" id="admin-answering" >Responder</button>';
    }
    else{
        echo '<h4>Admin: '.$row["answer"].'</h4>';
    }
    echo '</div>';
}

cerrar_conexion();

/**
 * Created by PhpStorm.
 * User: victor
 * Date: 25/02/17
 * Time: 5:20
 */
?>