$(document).ready(function(){

    $('#qanda_container').load('modulos/modulos_pag_cliente/qanda.php');
    $('#sending-question').click(function(){

        $.post('control_qanda.php',{
            name: $('#qanda_user_name').val(),
            // email: $('#qanda_user_email').val(),
            text: $('#qanda_user_text').val(),
        });

    });

    // $('#admin-answering').click(function() {
    //
    //     alert($('#my_answer'+id).val())
    //     alert('no estoy haciendo nada')
    //     $.post('control_qanda.php',{
    //         answer: $('#my_answer').val(),
    //         id:$('#qanda_id').val()
    //     });
    //     $('#qanda_container').load('modulos/modulos_pag_cliente/qanda.php');
    // })
})

function enviar_respuesta(id){
    $.post('control_qanda.php',{
        answer: $('#my_answer'+id).val(),
        id:$('#qanda_id'+id).val()
    });
    $('#qanda_container').load('modulos/modulos_pag_cliente/qanda.php');
}

function enviar_pregunta(){

    $.post('control_qanda.php',{
        name: $('#qanda_user_name').val(),
        // email: $('#qanda_user_email').val(),
        text: $('#qanda_user_text').val(),
    });
    $('#qanda_container').load('modulos/modulos_pag_cliente/qanda.php');
}

/**
 * Created by victor on 25/02/17.
 */
