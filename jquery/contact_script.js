$(document).ready(function() {

    $.get('user_register_mod.php',function(data){
        if(data == 0){
            $("#contact_link").trigger('click');

        }
        // console.log(data);
    })

    $('#send_credentials').click(function() {
        $.post('user_register_mod.php',{
            no_mostrar_mas:$('#checkbox-listed')[0].checked,
            name_user:$('#name_visit').val(),
            email_user: $('#email_visit').val()
        },function(data){
            console.log(data);
        })

    })


    // $.get('user_register_mod.php',function(data){
    // })

});
/**
 * Created by victor on 13/02/17.
 */
