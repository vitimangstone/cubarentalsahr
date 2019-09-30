$(document).ready(function() {

//================================================================================////================================================================================//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//================================================================================////================================================================================//
    $("#nombreArrendatario").keydown(function(e) {
        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116) || (37 <= e.which && e.which <= 40)) {
            return true;
        }
        else {
            return false;
        }
    });

    $("#apellidosArrendatario").keydown(function(e) {
        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116) || (37 <= e.which && e.which <= 40)) {
            return true;
        }
        else {
            return false;
        }
    });

    $("#correo2, #nombre_usuario").keydown(function(e) {
        if ((e.keyCode === 32)) {
            return false;
        }
        else {
            return true;
        }
    });

//================================================================================////================================================================================//
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//================================================================================////================================================================================//
    $("#nombreArrendatario").keyup(function() {
        validarNombreArrendador();
        activarBoton();
    });

    $("#nombreArrendatario").change(function() {
        validarNombreArrendador();
        activarBoton();
    });
//============================================================================//

    $("#apellidosArrendatario").keyup(function() {
        validarApellidos();
        activarBoton();
    });
    $("#apellidosArrendatario").change(function() {
        validarApellidos();
        activarBoton();
    });

//============================================================================//

    $('#telefonoFijo').keyup(function() {
        validarTelefonoFijo();
        activarBoton();
    });
    $('#telefonoFijo').change(function() {
        validarTelefonoFijo();
        activarBoton();
    });

//============================================================================//

    $('#telefonoMovil').keyup(function() {
        validarTelefonoMovil();
        activarBoton();
    });
    $('#telefonoMovil').change(function() {
        validarTelefonoMovil();
        activarBoton();
    });
//============================================================================//

    $('#correo2').keyup(function() {
        validarCorreo();
    });

    $('#correo2').change(function() {
        validarCorreo();
    });

//============================================================================//

    $("#nombre_usuario").keyup(function() {
        validarUsuario();
        activarBoton();

    });

    $("#nombre_usuario").change(function() {
        validarUsuario();
        activarBoton();

    });

//============================================================================//

    $("#contrasena1").keyup(function() {
        validarContrasena();
        activarBoton();
    });

//============================================================================//

    $("#contrasena2").keyup(function() {
        validarContrasena2();
        activarBoton();
    });

//============================================================================//   

    $("#contrasena1, #contrasena2").keyup(function() {
        validarContrasenaIguales();
        activarBoton();

    });
//============================================================================//




//================================================================================////================================================================================//
//                                                                                ////                                                                                //
//                                                                                ////                                                                                //
//================================================================================////================================================================================//

    $('#registroArrendatario').submit(function() {
        return verificarErrores();
    });
    $('#registroArrendatario input:not(:submit)').val('');

//================================================================================////================================================================================//
//                                                                                ////                                                                                //
//                                                                                ////                                                                                //
//================================================================================////================================================================================//

});

//=============================================================================////=============================================================================//
//Fin del $(document).ready Fin del $(document).ready Fin del $(document).ready////Fin del $(document).ready Fin del $(document).ready Fin del $(document).ready//
//=============================================================================////=============================================================================//
//Fin del $(document).ready Fin del $(document).ready Fin del $(document).ready////Fin del $(document).ready Fin del $(document).ready Fin del $(document).ready//
//=============================================================================////=============================================================================//



//=============================================================================//
//variables que controlan los errores      variables que controlan los errores //
//variables que controlan los errores      variables que controlan los errores //
//=============================================================================//
var errorNombreArrendador = false;
var errorApellidosArrendador = false;
var errorTelefonoFijo = false;
var errorTelefonoMovil = true;
var errorCorreo = false;
var errorNombreUsuario = false;
var errorContrasena1 = false;
var errorContrasena2 = false;
var errorContrasenaDiferentes = false;
//=============================================================================//
//variables que controlan los errores      variables que controlan los errores //
//variables que controlan los errores      variables que controlan los errores //
//=============================================================================//
var validarCompleteCampo = $('#validarCompleteCampo').val();
var validarTelefono = $('#validarTelefono').val();
var validarCorreo1 = $('#validarCorreo').val();

function validarNombreArrendador() {
    if ($('#nombreArrendatario').val() === "") {
        $('#contenedorNombreArrendatario').addClass('has-error');

        iniPopover('nombreArrendatario', 'top', validarCompleteCampo, 'cerrar_nombre');
        mostrarCerrarDestruirPopover('nombreArrendatario', 'show');
        cerrarPopover('cerrar_nombre', 'nombreArrendatario');

        mostrarMensajeError('#nombreArrendatario', '#nombreArrendatarioLabel', null);

        errorNombreArrendador = false;
    } else {
        $('#contenedorNombreArrendatario').removeClass('has-error');
        mostrarCerrarDestruirPopover('nombreArrendatario', 'destroy');

        ocultarMensajeError('#nombreArrendatario', '#nombreArrendatarioLabel');

        errorNombreArrendador = true;
    }
}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarApellidos() {
    if ($('#apellidosArrendatario').val() === "") {
        $('#contenedorApellidosArrendatario').addClass('has-error');

        iniPopover('apellidosArrendatario', 'top', validarCompleteCampo, 'cerrar_apellidos');
        mostrarCerrarDestruirPopover('apellidosArrendatario', 'show');
        cerrarPopover('cerrar_apellidos', 'apellidosArrendatario');

        mostrarMensajeError('#apellidosArrendatario', '#apellidosArrendatarioLabel', null);

        errorApellidosArrendador = false;
    } else {
        $('#contenedorApellidosArrendatario').removeClass('has-error');
        mostrarCerrarDestruirPopover('apellidosArrendatario', 'destroy');

        ocultarMensajeError('#apellidosArrendatario', '#apellidosArrendatarioLabel');

        errorApellidosArrendador = true;
    }

}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarTelefonoFijo() {
    if ($('#telefonoFijo').val() !== "") {
        if ($('#telefonoFijo').val().length < 7) {
            mostrarCerrarDestruirPopover('telefonoFijo', 'destroy');

            $('#contenedorTelefonoFijo').addClass('has-error');

            iniPopover('telefonoFijo', 'left', validarTelefono, 'cerrar_fijo');
            mostrarCerrarDestruirPopover('telefonoFijo', 'show');
            cerrarPopover('cerrar_fijo', 'telefonoFijo');

            mostrarMensajeError('#telefonoFijo', '#telefonoFijoLabel', validarTelefono);

            errorTelefonoFijo = false;
        } else {
            $('#contenedorTelefonoFijo').removeClass('has-error');
            mostrarCerrarDestruirPopover('telefonoFijo', 'destroy');

            ocultarMensajeError('#telefonoFijo', '#telefonoFijoLabel');

            errorTelefonoFijo = true;
        }
    } else if ($('#telefonoFijo').val() === "") {

        $('#contenedorTelefonoFijo').addClass('has-error');

        mostrarCerrarDestruirPopover('telefonoFijo', 'destroy');
        iniPopover('telefonoFijo', 'left', validarCompleteCampo, 'cerrar_fijo');
        mostrarCerrarDestruirPopover('telefonoFijo', 'show');
        cerrarPopover('cerrar_fijo', 'telefonoFijo');

        mostrarMensajeError('#telefonoFijo', '#telefonoFijoLabel', null);
        errorTelefonoFijo = false;
    } else {
        $('#contenedorTelefonoFijo').removeClass('has-error');
        mostrarCerrarDestruirPopover('telefonoFijo', 'destroy');

        ocultarMensajeError('#telefonoFijo', '#telefonoFijoLabel');

        errorTelefonoFijo = true;
    }

}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarTelefonoMovil() {
    if ($('#telefonoMovil').val() !== '') {
        if ($('#telefonoMovil').val().length < 7) {
            $('#contenedorTelefonoMovil').addClass('has-error');

            iniPopover('telefonoMovil', 'right', validarTelefono, 'cerrar_movil');
            mostrarCerrarDestruirPopover('telefonoMovil', 'show');
            cerrarPopover('cerrar_movil', 'telefonoMovil');

            mostrarMensajeError('#telefonoMovil', '#telefonoMovilLabel', validarTelefono);

            errorTelefonoMovil = false;

        } else {
            $('#contenedorTelefonoMovil').removeClass('has-error');
            mostrarCerrarDestruirPopover('telefonoMovil', 'destroy');

            ocultarMensajeError('#telefonoMovil', '#telefonoMovilLabel');

            errorTelefonoMovil = true;
        }
    } else {
        $('#contenedorTelefonoMovil').removeClass('has-error');
        mostrarCerrarDestruirPopover('telefonoMovil', 'destroy');

        ocultarMensajeError('#telefonoMovil', '#telefonoMovilLabel');

        errorTelefonoMovil = true;
    }
}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarCorreo() {
    if ($('#correo2').val() !== '') {

        expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!expr.test($('#correo2').val())) {
            $('#contenedorCorreo2').addClass('has-error');

            $('body').off('click', 'cerrar_correo2');
            mostrarCerrarDestruirPopover('correo2', 'destroy');
            iniPopover('correo2', 'right', validarCorreo1, 'cerrar_correo2');
            mostrarCerrarDestruirPopover('correo2', 'show');
            cerrarPopover('cerrar_correo2', 'correo2');

            mostrarMensajeError('#correo2', '#correo2Label', validarCorreo1);

            errorCorreo = false;
        } else {

            $('#contenedorCorreo2').removeClass('has-error');
            mostrarCerrarDestruirPopover('correo2', 'destroy');

            ocultarMensajeError('#correo2', '#correo2Label');

            errorCorreo = true;
        }
    }
}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarUsuario() {
    if ($('#nombre_usuario').val() === "") {
        $('#contenedorNombre_usuario').addClass('has-error');

        mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');
        mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');

        iniPopover('nombre_usuario', 'left', validarCompleteCampo, 'cerrar_usuario');

        mostrarCerrarDestruirPopover('nombre_usuario', 'show');
        cerrarPopover('cerrar_usuario', 'nombre_usuario');

        $('#nombre_usuarioLabel').removeClass('bg-success').removeClass('bg-info').addClass('bg-danger');
        mostrarMensajeError('#nombre_usuario', '#nombre_usuarioLabel', null);
        errorNombreUsuario = false;

    } else {
        $('#contenedorNombre_usuario').removeClass('has-error has-success');

        mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');
        mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');

        var verificando = $('#verificandoUsuario').val();

        iniPopoverUsuario('nombre_usuario', 'right', verificando, 'cerrar_usuario');
        mostrarCerrarDestruirPopover('nombre_usuario', 'show');

        $('#nombre_usuarioLabel').removeClass('bg-success').removeClass('bg-danger').addClass('bg-info');
        mostrarMensajeError('#nombre_usuario', '#nombre_usuarioLabel', '<img src="imagenes/loading-large.gif" style="height: 19px;"/> verificando');

        $.post('control_nombre_usuario.php', {nombre: $('#nombre_usuario').val()}, function(data) {

            if (data == 'false') {
                var verificandoUsuarioExiste = $('#verificandoUsuarioExiste').val();

                mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');
                iniPopoverUsuarioMal('nombre_usuario', 'right', verificandoUsuarioExiste, 'cerrar_usuario');
//                $('#nombre_usuario_popover').addClass('bg-danger').html('<span class="text-danger">Ya existe, cambielo!&nbsp;&nbsp;</span><button id="cerrar_usuario" type="button" class="close btn btn-xs"  title="click para cerrar">&times;</button>');
                $('#contenedorNombre_usuario').addClass('has-error');

                mostrarCerrarDestruirPopover('nombre_usuario', 'show');

                $('#nombre_usuarioLabel').removeClass('bg-success').removeClass('bg-info').addClass('bg-danger');
                mostrarMensajeError('#nombre_usuario', '#nombre_usuarioLabel', verificandoUsuarioExiste);

                cerrarPopover('cerrar_usuario', 'nombre_usuario');
                errorNombreUsuario = false;


            } else {
                var correcto = $('#correcto').val();
                mostrarCerrarDestruirPopover('nombre_usuario', 'destroy');
                iniPopoverUsuarioBien('nombre_usuario', 'right', correcto, 'cerrar_usuario');

//                $('#nombre_usuario_popover').addClass('bg-success').html('<div class="row"><span class="text-success col-lg-9" style="padding-top=10px;">Corecto.&nbsp;&nbsp;</span><button id="cerrar_usuario" type="button" class="close btn btn-xs col-lg-3"   title="click para cerrar">&times;</button></div>');
                $('#contenedorNombre_usuario').removeClass('has-error').addClass('has-success');
                mostrarCerrarDestruirPopover('nombre_usuario', 'show');

                $('#nombre_usuarioLabel').removeClass('bg-danger').removeClass('bg-info').addClass('bg-success').css({border: "none"});
                mostrarMensajeError('#nombre_usuario', '#nombre_usuarioLabel', correcto);

                cerrarPopover('cerrar_usuario', 'nombre_usuario');
                errorNombreUsuario = true;


            }

        });
    }
}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarContrasena() {

    if ($('#contrasena1').val() === "") {
        $('#contenedorContrasena1').addClass('has-error');

        iniPopover('contrasena1', 'right', validarCompleteCampo, 'cerrar_contrasena1');
        mostrarCerrarDestruirPopover('contrasena1', 'show');
        cerrarPopover('cerrar_contrasena1', 'contrasena1');

        mostrarMensajeError('#contrasena1', '#contrasena1Label', null);

        errorContrasena1 = false;
    } else {
        $('#contenedorContrasena1').removeClass('has-error');

        mostrarCerrarDestruirPopover('contrasena1', 'destroy');

        ocultarMensajeError('#contrasena1', '#contrasena1Label');

        errorContrasena1 = true;
    }

}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarContrasena2() {

    if ($('#contrasena2').val() !== "") {

        $('#contenedorContrasena2').removeClass('has-error');

        mostrarCerrarDestruirPopover('contrasena2', 'destroy');

        ocultarMensajeError('#contrasena2', '#contrasena2Label');


        errorContrasena2 = true;
    } else {

        $('#contenedorContrasena2').addClass('has-error');

        mostrarCerrarDestruirPopover('contrasena2', 'destroy');
        iniPopover('contrasena2', 'left', validarCompleteCampo, 'cerrar_contrasena2');
        mostrarCerrarDestruirPopover('contrasena2', 'show');
        cerrarPopover('cerrar_contrasena2', 'contrasena2');

        mostrarMensajeError('#contrasena2', '#contrasena2Label', null);

        errorContrasena2 = false;
    }

}
//=============================================================================//
//                                                                             //
//                                                                             //
//=============================================================================//
function validarContrasenaIguales() {
    if ($('#contrasena1').val() !== "" && $('#contrasena2').val() !== "") {
        if ($('#contrasena1').val() !== $('#contrasena2').val()) {
            $('#contenedorContrasena1').addClass('has-error');
            $('#contenedorContrasena2').addClass('has-error');

            var contrasenasNoCoinciden = $('#contrasenasNoCoinciden').val();
            mostrarCerrarDestruirPopover('contrasena2', 'destroy');
            iniPopover('contrasena2', 'left', contrasenasNoCoinciden, 'cerrar_contrasena2');
            mostrarCerrarDestruirPopover('contrasena2', 'show');
            cerrarPopover('cerrar_contrasena2', 'contrasena2');

            mostrarMensajeError('#contrasena2', '#contrasena2Label', contrasenasNoCoinciden);
            errorContrasenaDiferentes = false;
        } else {
            $('#contenedorContrasena1').removeClass('has-error');
            $('#contenedorContrasena2').removeClass('has-error');

            mostrarCerrarDestruirPopover('contrasena2', 'destroy');

            ocultarMensajeError('#contrasena2', '#contrasena2Label');

            errorContrasenaDiferentes = true;
        }
    } else {
        errorContrasenaDiferentes = false;
    }
}

//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//
//=============================================================================////=============================================================================//

/* ********************************************************* *//* ********************************************************* */
/*       Funcion que se invoca inicializar,mostrar,          *//*       Funcion que se invoca inicializar,mostrar,          */
/*             cerrar y destruir los PopOvers                *//*             cerrar y destruir los PopOvers                */
/* ********************************************************* *//* ********************************************************* */

/*====================================Inicializar Popover de Error====================================*/
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
/*====================================Mostrar o Ocultar Popover de Error====================================*/
function mostrarCerrarDestruirPopover(selector, accion) {
    $("#" + selector).popover(accion);
}

/*====================================Funcion para cerar Popover de Error por click====================================*/

function cerrarPopover(selector_btn, selector_popup) {
    $('#' + selector_btn).click(function() {
        $('#' + selector_popup).popover('hide');

    });
}
/*====================================Popover de Verificacion de Usuario====================================*/
function iniPopoverUsuario(selector, posicion, msj, id_btn_cerrar) {
    $("#" + selector).popover({
        animation: true,
        html: true,
        placement: posicion,
        trigger: 'manual',
        container: 'body',
        content: '<div class="row"><img class="col-lg-4"" src="imagenes/loading.gif"/><span class="text-danger col-lg-5" style="padding-top=10px;">' + msj + '&nbsp;&nbsp;</span>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm"><div class="arrow"></div><h3 class="popover-title"></h3><div id="nombre_usuario_popover" class="popover-content"></div></div>'
    });
}

function iniPopoverUsuarioBien(selector, posicion, msj, id_btn_cerrar) {
    $("#" + selector).popover({
        animation: true,
        html: true,
        placement: posicion,
        trigger: 'manual',
        container: 'body',
        content: '<span class="text-success">' + msj + '&nbsp;&nbsp;</span>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content bg-success"></div></div>'
    });
}
function iniPopoverUsuarioMal(selector, posicion, msj, id_btn_cerrar) {
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
/* ********************************************************* *//* ********************************************************* */
/*       Funcion que se invoca inicializar,mostrar,          *//*       Funcion que se invoca inicializar,mostrar,          */
/*             cerrar y destruir los PopOvers                *//*             cerrar y destruir los PopOvers                */
/* ********************************************************* *//* ********************************************************* */



/* ********************************************************* *//* ********************************************************* */
/*  Funcion que se invoca en el submit del formulario        *//*    Funcion que se invoca en el submit del formulario      */
/* ********************************************************* *//* ********************************************************* */

function activarBoton() {

    if (errorNombreArrendador && errorApellidosArrendador && errorTelefonoFijo &&
            errorTelefonoMovil && errorContrasena1 && errorContrasena2 &&
            errorContrasenaDiferentes && errorNombreUsuario) {
        $('#btn_registro_mod').removeAttr('disabled');
    } else {
        $('#btn_registro_mod').attr('disabled', '');
    }

}

function verificarErrores() {
    var noExisteError = false;

    if (!errorNombreArrendador)
        validarNombreArrendador();

    if (!errorApellidosArrendador)
        validarApellidos();

    if (!errorTelefonoFijo)
        validarTelefonoFijo();

    if (!errorTelefonoMovil)
        validarTelefonoMovil();

    if (!errorNombreUsuario) {
        validarUsuario();
    }
    if (!errorContrasena1)
        validarContrasena();

    if (!errorContrasena2) {
        validarContrasena2();
    }
    if (!errorContrasenaDiferentes)
        validarContrasenaIguales();



    if (errorNombreArrendador && errorApellidosArrendador && errorTelefonoFijo &&
            errorTelefonoMovil && errorContrasena1 && errorContrasena2 &&
            errorContrasenaDiferentes && errorNombreUsuario) {
        noExisteError = true;
    } else {
        noExisteError = false;
    }
    return noExisteError;
}
function mostrarMensajeError(id, idLabel, mensaje) {

    if (mensaje !== null) {
        $(idLabel).html(mensaje);
    }
    else {
        $(idLabel).html(validarCompleteCampo);
    }

    $(id).addClass('input-top-radius-0');
    $(idLabel).removeClass('sr-only');
}

function ocultarMensajeError(id, idLabel) {
    $(id).removeClass('input-top-radius-0');
    $(idLabel).addClass('sr-only');
}
