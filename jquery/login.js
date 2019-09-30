$(document).ready(function() {

   
    if ($('#error').val() == 1) {
        $('#login_error').show('slow');
    } else {
        $('#login_error').hide();
    }


    $('#solicitar_credenciales').click(function() {
        if ($('#credenciales_solicitud').hasClass('false')) {
            $('#credenciales_solicitud').removeClass('false');
            $('#credenciales_solicitud').addClass('true');
            $('#credenciales_solicitud').show('slow');
        } else {
            mostrarCerrarDestruirPopover('credenciales_usuario', 'destroy');
            $('#credenciales_usuario').val("");

            $('#credenciales_solicitud').removeClass("has-error");
            $('#credenciales_solicitud').removeClass("has-success");
            $('#credenciales_solicitud').removeClass('true');
            $('#credenciales_solicitud').addClass('false');
            $('#credenciales_solicitud').hide('slow');
        }
    });
    $('#nombre_modal,#contrasena_modal').keydown(function() {
        $('#login_error').hide('slow');
    });

    $('#nombre_modal').keyup(function() {
        validarCamposVacios2('nombre_modal');
    });

    $('#contrasena_modal').keyup(function() {
        validarCamposVacios2('contrasena_modal');
    });


});

function validarCamposVacios2(id) {

    var aux = true;
    if (($('#' + id).val() == null) || ($('#' + id).val().length == 0) || (/^\s+$/.test($('#' + id).val()))) {
        $('#contenedor_' + id).addClass('has-error');
        iniPopover(id, 'left', $('#validarCompleteCampo').val(), 'cerrar_' + id);
        mostrarCerrarDestruirPopover(id, 'show');
        mostrarMensajeError('#' + id, '#' + id + 'Label', null);
        aux = false;

    } else {
        $('#contenedor_' + id).removeClass('has-error');
        mostrarCerrarDestruirPopover(id, 'destroy');
        ocultarMensajeError('#' + id, '#' + id + 'Label');
    }
    return aux;
}
