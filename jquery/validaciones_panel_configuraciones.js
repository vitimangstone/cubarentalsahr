$(document).ready(function() {

    $('#nombreArrendatario1').keydown(function(e) {
        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116)) {
            return true;
        }
        else {
            return false;
        }
    });

    $('#apellidosArrendatario1').keydown(function(e) {
        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116)) {
            return true;
        }
        else {
            return false;
        }
    });

    $("#nombreArrendatario1").change(function() {
        validarNombreArrendador1();
        activarBoton1();
    });

    $("#apellidosArrendatario1").change(function() {
        validarApellidosArrendatario1();
        activarBoton1();
    });

    $("#telefonoFijo1").change(function() {
        validarTelefonoFijoArrendatario1();
        activarBoton1();
    });

    $("#correo3").change(function() {
        validarCorreoArrendatario();
        activarBoton1();
    });

    $('#contrasenaActual').keyup(function() {
        validarContrasenaActual();
        activarBoton1();
    });

    $('#contrasenaNueva,#contrasenaRepetir').keyup(function() {
        validarContrasenaIguales();
        activarBoton1();
    });


});
//**********************************************************************************************************************
var errorNombreArrendador1 = true;
var errorApellidosArrendador1 = true;
var errorTelefonoFijoArrendador1 = true;
var errorCorreo3 = true;
var errorContrasenaActual = true;
var errorContrasenaDiferentes = true;

//var validarCompleteCampo = $('#validarCompleteCampo').val();


function validarNombreArrendador1() {
    if ($('#nombreArrendatario1').val() === "") {
        $('#contenedorNombreArrendatario1').addClass('has-error');

        iniPopover('nombreArrendatario1', 'top', $('#validarCompleteCampo').val(), 'cerrar_nombre');
        mostrarCerrarDestruirPopover('nombreArrendatario1', 'show');
        cerrarPopover('cerrar_nombre', 'nombreArrendatario1');

        mostrarMensajeError('#nombreArrendatario1', '#nombreArrendatarioLabel1', null);

        errorNombreArrendador1 = false;
    } else {
        $('#contenedorNombreArrendatario1').removeClass('has-error');
        mostrarCerrarDestruirPopover('nombreArrendatario1', 'destroy');

        ocultarMensajeError('#nombreArrendatario1', '#nombreArrendatarioLabel1');

        errorNombreArrendador1 = true;
    }
}

function validarApellidosArrendatario1() {
    if ($('#apellidosArrendatario1').val() === "") {
        $('#contenedorApellidosArrendatario1').addClass('has-error');

        iniPopover('apellidosArrendatario1', 'top', $('#validarCompleteCampo').val(), 'cerrar_nombre');
        mostrarCerrarDestruirPopover('apellidosArrendatario1', 'show');
        cerrarPopover('cerrar_nombre', 'apellidosArrendatario1');

        mostrarMensajeError('#apellidosArrendatario1', '#apellidosArrendatarioLabel1', null);

        errorApellidosArrendador1 = false;
    } else {
        $('#contenedorApellidosArrendatario1').removeClass('has-error');
        mostrarCerrarDestruirPopover('apellidosArrendatario1', 'destroy');

        ocultarMensajeError('#apellidosArrendatario1', '#apellidosArrendatarioLabel1');

        errorApellidosArrendador1 = true;
    }
}

function validarTelefonoFijoArrendatario1() {
    if ($('#telefonoFijo1').val() === "") {
        $('#contenedorTelefonoFijo1').addClass('has-error');

        iniPopover('telefonoFijo1', 'top', $('#validarCompleteCampo').val(), 'cerrar_nombre');
        mostrarCerrarDestruirPopover('telefonoFijo1', 'show');
        cerrarPopover('cerrar_nombre', 'telefonoFijo1');

        mostrarMensajeError('#telefonoFijo1', '#telefonoFijoArrendatarioLabel1', null);

        errorTelefonoFijoArrendador1 = false;
    } else {
        $('#contenedorTelefonoFijo1').removeClass('has-error');
        mostrarCerrarDestruirPopover('telefonoFijo1', 'destroy');

        ocultarMensajeError('#telefonoFijo1', '#telefonoFijoArrendatarioLabel1');

        errorTelefonoFijoArrendador1 = true;
    }
}

function validarCorreoArrendatario() {
    if ($('#correo3').val() !== '') {

        expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!expr.test($('#correo3').val())) {
            $('#contenedorCorreo3').addClass('has-error');

            $('body').off('click', 'cerrar_correo3');
            mostrarCerrarDestruirPopover('correo3', 'destroy');
            iniPopover('correo3', 'right', $('#validarCorreo').val(), 'cerrar_correo3');
            mostrarCerrarDestruirPopover('correo3', 'show');
            cerrarPopover('cerrar_correo3', 'correo3');

            mostrarMensajeError('#correo3', '#correoLabel3', $('#validarCorreo').val());

            errorCorreo3 = false;
        } else {

            $('#contenedorCorreo3').removeClass('has-error');
            mostrarCerrarDestruirPopover('correo3', 'destroy');

            ocultarMensajeError('#correo3', '#correoLabel3');

            errorCorreo3 = true;
        }
    } else {
        $('#contenedorCorreo3').addClass('has-error');

        $('body').off('click', 'cerrar_correo3');
        mostrarCerrarDestruirPopover('correo3', 'destroy');
        iniPopover('correo3', 'right', $('#validarCompleteCampo').val(), 'cerrar_correo3');
        mostrarCerrarDestruirPopover('correo3', 'show');
        cerrarPopover('cerrar_correo3', 'correo3');

        mostrarMensajeError('#correo3', '#correoLabel3', null);

        errorCorreo3 = false;
    }
}

function validarContrasenaActual() {
    if (validarCamposVacios3('contrasenaActual')) {
        $.post('control_contrasenna.php', {contra: $('#contrasenaActual').val()}, function(data) {

            if (data == true) {

                mostrarCerrarDestruirPopover('contrasenaActual', 'destroy');
                $('#contenedor_contrasenaActual').removeClass('has-error');
                $('#contenedor_contrasenaActual').addClass('has-success');

                $('#contrasenaNueva').show('normal');
                $('#contrasenaRepetir').show('normal');

                ocultarMensajeError('#contrasenaActual', '#contrasenaActualLabel');

                errorContrasenaActual = true;
            } else {

                errorContrasenaActual = false;
                mostrarCerrarDestruirPopover('contrasenaActual', 'destroy');
                $('#contenedor_contrasenaActual').addClass('has-error');
                iniPopover('contrasenaActual', 'left', 'la contrasena es incorrecta', 'cerrar_contrasenaActual');
                mostrarCerrarDestruirPopover('contrasenaActual', 'show');

                mostrarMensajeError('#contrasenaActual', '#contrasenaActualLabel', 'la contrasena es incorrecta');

                $('#contrasenaNueva').hide('fast');
                $('#contrasenaRepetir').hide('fast');


            }
        });
    } else {
        $('#contenedor_contrasenaActual').removeClass('has-error');
        $('#contenedor_contrasenaActual').removeClass('has-success');

        mostrarCerrarDestruirPopover('contrasenaActual', 'destroy');
        ocultarMensajeError('#contrasenaActual', '#contrasenaActualLabel');

        $('#contrasenaNueva').hide('fast');
        $('#contrasenaRepetir').hide('fast');

        errorContrasenaActual = true;
        errorContrasenaDiferentes = true;
    }
}


function validarContrasenaIguales() {

    if ($('#contrasenaNueva').val() !== "" && $('#contrasenaRepetir').val() !== "") {
        if ($('#contrasenaNueva').val() !== $('#contrasenaRepetir').val()) {
            $('#contenedorContrasenaNueva').addClass('has-error');
            $('#contenedorContrasenaRepetir').addClass('has-error');

//            var contrasenasNoCoinciden = '';
            mostrarCerrarDestruirPopover('contrasenaRepetir', 'destroy');
            iniPopover('contrasenaRepetir', 'left', 'las contrasenas no coinciden', 'cerrar_contrasenaRepetir');
            mostrarCerrarDestruirPopover('contrasenaRepetir', 'show');
            cerrarPopover('cerrar_contrasenaRepetir', 'contrasenaRepetir');

            mostrarMensajeError('#contrasenaRepetir', '#contrasenaRepetirLabel', 'las contrasenas no coinciden');
            errorContrasenaDiferentes = false;
        } else {
            $('#contenedorContrasenaRepetir').removeClass('has-error');
            $('#contenedorContrasenaNueva').removeClass('has-error');

            $('#contenedorContrasenaRepetir').addClass('has-success');
            $('#contenedorContrasenaNueva').addClass('has-success');

            mostrarCerrarDestruirPopover('contrasenaRepetir', 'destroy');

            ocultarMensajeError('#contrasenaRepetir', '#contrasenaRepetirLabel');

            errorContrasenaDiferentes = true;
        }
    } else {
        mostrarCerrarDestruirPopover('contrasenaRepetir', 'destroy');
        ocultarMensajeError('#contrasenaRepetir', '#contrasenaRepetirLabel');

        $('#contenedorContrasenaRepetir').removeClass('has-error');
        $('#contenedorContrasenaNueva').removeClass('has-error');

        $('#contenedorContrasenaRepetir').removeClass('has-success');
        $('#contenedorContrasenaNueva').removeClass('has-success');

        errorContrasenaDiferentes = false;
    }
}

function iniPopover(selector, posicion, msj, id_btn_cerrar) {

    $("#" + selector).popover({
        animation: true,
        html: true,
        placement: posicion,
        trigger: 'manual',
        container: 'body',
        content: '<span class="text-danger">' + msj + '&nbsp;&nbsp;</span>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content bg-danger"></div></div>'
    });
}

function mostrarCerrarDestruirPopover(selector, accion) {

    $("#" + selector).popover(accion);
}

function cerrarPopover(selector_btn, selector_popup) {

    $('#' + selector_btn).click(function() {
        $('#' + selector_popup).popover('hide');

    });
}

function mostrarMensajeError(id, idLabel, mensaje) {

    if (mensaje !== null) {
        $(idLabel).html(mensaje);
    }
    else {
        $(idLabel).html($('#validarCompleteCampo').val());
    }

    $(id).addClass('input-top-radius-0');
    $(idLabel).removeClass('sr-only');
}

function ocultarMensajeError(id, idLabel) {
    $(id).removeClass('input-top-radius-0');
    $(idLabel).addClass('sr-only');
}

function activarBoton1() {

    if (errorNombreArrendador1 && errorApellidosArrendador1 && errorTelefonoFijoArrendador1 && errorCorreo3 && errorContrasenaActual && errorContrasenaDiferentes) {
        $('#aceptar_configuracion').removeAttr('disabled');
    } else {
        $('#aceptar_configuracion').attr('disabled', '');
    }
}


function validarCamposVacios3(id) {

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