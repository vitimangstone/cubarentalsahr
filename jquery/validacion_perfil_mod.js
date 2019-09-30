$(document).ready(function() {

    $('#boton_comentarios').attr('disabled', "");

//================================================================================////================================================================================//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//================================================================================////================================================================================//
    $("#timepicker,#reservationtime1,#reservationtime2").keydown(function(e) {
        if ((e.keyCode === 9) || (e.which === 116)) {
            return true;
        }
        else {
            return false;
        }
    });

//    $("#nombreApellidos,#pais,#descripcion_reservacion").keydown(function(e) {
//        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116)) {
//            return true;
//        }
//        else {
//            return false;
//        }
//    });

    $('#nombre_comentario').keyup(function() {
        validaNombreComentario();
        activarBoton();
    });

    $('#descripcion_comentario').keyup(function() {
        validaDescripcion_comentario();
        activarBoton();
    });



//!!!!!!!!!!!!!!!!!!!!!Posible a eliminar!!!!!!!!!!!!!!
//    $("#nombreApellidos,#pais").keydown(function(e) {
//        if (e.which === 32 || (65 <= e.which && e.which <= 65 + 25)
//                || (97 <= e.which && e.which <= 97 + 25) || e.which >= 48 && e.which <= 57 || e.which === 8)
//            return true;
//        else {
//            return false;
//        }
//    });
//================================================================================////================================================================================//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//================================================================================////================================================================================//

//================================================================================////================================================================================//
//change     change     change     change     change     change     change        ////change     change     change     change     change     change     change        //
//change     change     change     change     change     change     change        ////change     change     change     change     change     change     change        //
//================================================================================////================================================================================//

    $('#nombreApellidos').change(function(e) {
        validacionNombreApellido();
    });
//============================================================================//

    $('#pais').change(function(e) {
        validarPais();
    });
//============================================================================//

    $('#correo').change(function(e) {
        validarCorreo();
    });
//============================================================================//

    $('#cantPersonas').change(function(e) {
        validacionCantPersonas();
    });
//============================================================================//

    $('#cantHabitaciones').change(function(e) {
        validacionCantHabitacione();
    });
//============================================================================//

    $('#reservationtime1').blur(function(e) {
        validarReservationtime1()();
    });
//============================================================================//

    $('#reservationtime2').blur(function(e) {
        validarReservationtime2()();
    });
//============================================================================//

    $('#cant1').change(function() {
        if ($('#cant1').val() < 1) {
            $('#cant1').val('1');
            $('#alert_aviso_modal_caracteristicas').show('slow');
        } else {
            $('#alert_aviso_modal_caracteristicas').hide('slow');
        }

    });
    
    $("#timepicker").change(function (){
        validarTimepicker();
    });

//============================================================================//

//============================================================================//
//------Funciones que validan el modal para modificar la info principal-------//
//============================================================================//

    $('#nombre_negocio').change(function() {
        validarNombreModalInfoPrincipal();
    });

//============================================================================//

    $('#tipo_renta').change(function() {
        validarTipoRentaModalInfoPrincipal();
    });

//============================================================================//

    $('#provincia').change(function() {
        validarProvinciaModalInfoPrincipal();
    });

//============================================================================//

    $('#municipio').change(function() {
        validarMunicipioModalInfoPrincipal();
    });

//============================================================================//

    $('#zona').change(function() {
        validarZonaModalInfoPrincipal();
    });

//============================================================================//

    $('#direccion').change(function() {
        validarDireccionModalInfoPrincipal();
    });

//============================================================================//
    $('#precio').change(function() {
        validarPrecioModalInfoPrincipal();
    });

//============================================================================//
//------Funciones que validan el modal para modificar la info principal-------//
//============================================================================//



//================================================================================////================================================================================//
//change     change     change     change     change     change     change        ////change     change     change     change     change     change     change        //
//change     change     change     change     change     change     change        ////change     change     change     change     change     change     change        //
//================================================================================////================================================================================//
 


    $("#reservar").on('hide.bs.modal', function() {

        mostrarCerrarDestruirPopover('nombreApellidos', 'destroy');
        mostrarCerrarDestruirPopover('correo', 'destroy');
        mostrarCerrarDestruirPopover('cantPersonas', 'destroy');
        mostrarCerrarDestruirPopover('cantHabitaciones', 'destroy');
        mostrarCerrarDestruirPopover('reservationtime1', 'destroy');
        mostrarCerrarDestruirPopover('reservationtime2', 'destroy');
        mostrarCerrarDestruirPopover('pais', 'destroy');
        mostrarCerrarDestruirPopover('timepicker', 'destroy');

        $('#contenedorNombreApellidos').removeClass('has-error');
        $('#contenedorCorreo').removeClass('has-error');
        $('#contenedorCantPersonas').removeClass('has-error');
        $('#contenedorCantHabitaciones').removeClass('has-error');
        $('#contenedorReservationtime1').removeClass('has-error');
        $('#contenedorReservationtime2').removeClass('has-error');
        $('#contenedorPais').removeClass('has-error');
        $('#contenedorTimepicker').removeClass('has-error');

        ocultarMensajeError2('nombreApellidos', 'nombreApellidosLabel');
        ocultarMensajeError2('correo', 'correoLabel');
        ocultarMensajeError2('cantPersonas', 'cantPersonasLabel');
        ocultarMensajeError2('cantHabitaciones', 'cantHabitacionesLabel');
        ocultarMensajeError2('reservationtime1', 'reservationtime1Label');
        ocultarMensajeError2('reservationtime2', 'reservationtime2Label');
        ocultarMensajeError2('pais', 'paisLabel');
        ocultarMensajeError2('timepicker', 'timepickerLabel');
    });


    $("#informacion_principal").on('hide.bs.modal', function() {
        mostrarCerrarDestruirPopover('nombre_negocio', 'destroy');
        mostrarCerrarDestruirPopover('tipo_renta', 'destroy');
        mostrarCerrarDestruirPopover('provincia', 'destroy');
        mostrarCerrarDestruirPopover('municipio', 'destroy');
        mostrarCerrarDestruirPopover('zona', 'destroy');
        mostrarCerrarDestruirPopover('direccion', 'destroy');
        mostrarCerrarDestruirPopover('span_precio', 'destroy');

        $('#contenedorNombre_negocio_caracteristicas').removeClass('has-error');
        $('#contenedorTipo_renta_caracteristicas').removeClass('has-error');
        $('#contenedorProvincia_caracteristicas').removeClass('has-error');
        $('#contenedorMunicipio_caracteristicas').removeClass('has-error');
        $('#contenedorZona_caracteristicas').removeClass('has-error');
        $('#contenedorDireccion_caracteristicas').removeClass('has-error');
        $('#contenedor_precio').removeClass('has-error');

        ocultarMensajeError2('nombre_negocio', 'nombre_negocio_caracteristicasLabel');
        ocultarMensajeError2('tipo_renta', 'tipo_renta_caracteristicasLabel');
        ocultarMensajeError2('correo_contactanos', 'correo_contactanosLabel');

        $('#nombre_modal').val("");
        $('#contrasena_modal').val("");

    });


});

var errorNombreApellidos = false;
var errorPais = false;
var errorCorreo = false;
var errorCantPersonas = false;
var errorCantHabitaciones = false;
var errorReservationtime1 = false;
var errorReservationtime2 = false;
var errorTimepicker = false;

function validacionNombreApellido() {
    if ($('#nombreApellidos').val() === "") {
        $('#contenedorNombreApellidos').addClass('has-error');

        iniPopover('nombreApellidos', 'left', $('#validarCompleteCampo').val(), 'cerrar_nombre');
        mostrarCerrarDestruirPopover('nombreApellidos', 'show');
        cerrarPopover('cerrar_nombre', 'nombreApellidos');

        mostrarMensajeError('#nombreApellidos', '#nombreApellidosLabel', null);
       
        errorNombreApellidos = false;
    } else {
        $('#contenedorNombreApellidos').removeClass('has-error');
        mostrarCerrarDestruirPopover('nombreApellidos', 'destroy');

        ocultarMensajeError('#nombreApellidos', '#nombreApellidosLabel');
        errorNombreApellidos = true;
    }
}


function validarPais() {
    if ($('#pais').val() === "País de procedencia" || $('#pais').val() === "Origin country") {
        $('#contenedorPais').addClass('has-error');

        iniPopover('pais', 'left', $('#validarCompleteCampo').val(), 'cerrar_pais');
        mostrarCerrarDestruirPopover('pais', 'show');
        cerrarPopover('cerrar_pais', 'pais');

        mostrarMensajeError('#pais', '#paisLabel', null);
       
        errorPais = false;
    } else {
        $('#contenedorPais').removeClass('has-error');
        mostrarCerrarDestruirPopover('pais', 'destroy');

        ocultarMensajeError('#pais', '#paisLabel');
       
        errorPais = true;
    }
}

function validarCorreo() {
    if ($('#correo').val() !== '') {

        expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!expr.test($('#correo').val())) {
            $('#contenedorCorreo').addClass('has-error');

            $('body').off('click', 'cerrar_correo');
            mostrarCerrarDestruirPopover('correo', 'destroy');
            iniPopover('correo', 'left', $('#validarCorreo').val(), 'cerrar_correo');
            mostrarCerrarDestruirPopover('correo', 'show');
            cerrarPopover('cerrar_correo', 'correo');

            mostrarMensajeError('#correo', '#correoLabel', $('#validarCorreo').val());
           
            errorCorreo = false;
        } else {

            $('#contenedorCorreo').removeClass('has-error');
            mostrarCerrarDestruirPopover('correo', 'destroy');

            ocultarMensajeError('#correo', '#correoLabel');
           
            errorCorreo = true;
        }
    } else {
        $('#contenedorCorreo').addClass('has-error');

        $('body').off('click', 'cerrar_correo');
        mostrarCerrarDestruirPopover('correo', 'destroy');
        iniPopover('correo', 'left', $('#validarCompleteCampo').val(), 'cerrar_correo');
        mostrarCerrarDestruirPopover('correo', 'show');
        cerrarPopover('cerrar_correo', 'correo');

        mostrarMensajeError('#correo', '#correoLabel', null);
        
        errorCorreo = false;
    }
}

function validacionCantPersonas() {
    if ($('#cantPersonas').val() === "") {
        $('#contenedorCantPersonas').addClass('has-error');

        iniPopover("cantPersonas", "left", $('#validarCompleteCampo').val(), "cerrar_cantPersonas");
        mostrarCerrarDestruirPopover('cantPersonas', 'show');
        cerrarPopover('cerrar_cantPersonas', 'cantPersonas');

        mostrarMensajeError('#cantPersonas', '#cantPersonasLabel', null);
       
        errorCantPersonas = false;
    } else {
        $('#contenedorCantPersonas').removeClass('has-error');

        mostrarCerrarDestruirPopover('cantPersonas', 'destroy');

        ocultarMensajeError('#cantPersonas', '#cantPersonasLabel');
       
        errorCantPersonas = true;
    }

}

function validacionCantHabitacione() {
    if ($('#cantHabitaciones').val() === "") {
        $('#contenedorCantHabitaciones').addClass('has-error');

        iniPopover("cantHabitaciones", "right", $('#validarCompleteCampo').val(), "cerrar_cantHabitaciones");
        mostrarCerrarDestruirPopover('cantHabitaciones', 'show');
        cerrarPopover('cerrar_cantHabitaciones', 'cantHabitaciones');

        mostrarMensajeError('#cantHabitaciones', '#cantHabitacionesLabel', null);
       
        errorCantHabitaciones = false;
    } else {
        $('#contenedorCantHabitaciones').removeClass('has-error');

        mostrarCerrarDestruirPopover('cantHabitaciones', 'destroy');

        ocultarMensajeError('#cantHabitaciones', '#cantHabitacionesLabel');
       
        errorCantHabitaciones = true;
    }
}


function validarReservationtime1() {

    if ($('#reservationtime1').val() === "") {
        $('#contenedorReservationtime1').addClass('has-error');

        iniPopover("reservationtime1", "left", $('#validarCompleteCampo').val(), "cerrar_reservationtime1");
        mostrarCerrarDestruirPopover('reservationtime1', 'show');
        cerrarPopover('cerrar_reservationtime1', 'reservationtime1');

        mostrarMensajeError('#reservationtime1', '#reservationtime1Label', null);
       
        errorReservationtime1 = false;
    } else {
        $('#contenedorReservationtime1').removeClass('has-error');

        mostrarCerrarDestruirPopover('reservationtime1', 'destroy');

        ocultarMensajeError('#reservationtime1', '#reservationtime1Label');
       
        errorReservationtime1 = true;
    }
}

function validarReservationtime2() {
    if ($('#reservationtime2').val() === "") {
        $('#contenedorReservationtime2').addClass('has-error');

        iniPopover("reservationtime2", "right", $('#validarCompleteCampo').val(), "cerrar_reservationtime2");
        mostrarCerrarDestruirPopover('reservationtime2', 'show');
        cerrarPopover('cerrar_reservationtime2', 'reservationtime2');

        mostrarMensajeError('#reservationtime2', '#reservationtime2Label', null);
       
        errorReservationtime2 = false;
    } else {
        $('#contenedorReservationtime2').removeClass('has-error');

        mostrarCerrarDestruirPopover('reservationtime2', 'destroy');

        ocultarMensajeError('#reservationtime2', '#reservationtime2Label');
      
        errorReservationtime2 = true;
    }
}

function validarTimepicker() {
    if ($('#timepicker').val() === "") {
        $('#contenedorTimepicker').addClass('has-error');

        iniPopover("timepicker", "right", $('#validarCompleteCampo').val(), "cerrar_timepicker");
        mostrarCerrarDestruirPopover('timepicker', 'show');
        cerrarPopover('cerrar_timepicker', 'timepicker');

        mostrarMensajeError('#timepicker', '#timepickerLabel', null);
       
        errorTimepicker = false;
    } else {
       
        $('#contenedorTimepicker').removeClass('has-error');

        mostrarCerrarDestruirPopover('timepicker', 'destroy');

        ocultarMensajeError('#timepicker', '#timepickerLabel');
        
        errorTimepicker = true;
    }
}


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
        content: '<span class="text-danger">' + msj + '&nbsp;&nbsp;</span><button id="' + id_btn_cerrar + '" type="button" class="close btn btn-xs"  title="click para cerrar">&times;</button>',
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
        content: '<div class="row"><img class="col-lg-4"" src="imagenes/loading.gif"/><span class="text-danger col-lg-5" style="padding-top=10px;">' + msj + '&nbsp;&nbsp;</span><button id="' + id_btn_cerrar + '" type="button" class="close btn btn-xs col-lg-1"  title="click para cerrar">&times;</button></div>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm"><div class="arrow"></div><h3 class="popover-title"></h3><div id="nombre_usuario_popover" class="popover-content"></div></div>'
    });
}

/* ********************************************************* *//* ********************************************************* */
/*       Funcion que se invoca inicializar,mostrar,          *//*       Funcion que se invoca inicializar,mostrar,          */
/*             cerrar y destruir los PopOvers                *//*             cerrar y destruir los PopOvers                */
/* ********************************************************* *//* ********************************************************* */




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



function verificarErroresPerfil() {
    var noExisteError = false;

    if (!errorNombreApellidos)
        validacionNombreApellido();

    if (!errorPais)
        validarPais();

    if (!errorCantPersonas)
        validacionCantPersonas();

    if (!errorCantHabitaciones)
        validacionCantHabitacione();

    if (!errorCorreo)
        validarCorreo();

    if (!errorReservationtime1) {
        validarReservationtime1();
    }
    if (!errorReservationtime2)
        validarReservationtime2();

    if (!errorTimepicker) {
        validarTimepicker();
    }

    if (errorNombreApellidos && errorPais && errorCantPersonas &&
            errorCantHabitaciones && errorCorreo && errorReservationtime1 &&
            errorReservationtime2 && errorTimepicker) {
        noExisteError = true;
    } else {
        noExisteError = false;
    }

    return noExisteError;

}


//============================================================================//
//------Funciones que validan el modal para modificar la info principal-------//
//============================================================================//

function validarNombreModalInfoPrincipal() {
    if ($('#nombre_negocio').val() === '') {
        $('#contenedorNombre_negocio_caracteristicas').addClass('has-error');

        iniPopover('nombre_negocio', 'left', $('#validarCompleteCampo').val(), 'cerrar_nombre_negocio_caracteristicas');
        mostrarCerrarDestruirPopover('nombre_negocio', 'show');
        cerrarPopover('cerrar_nombre_negocio_caracteristicas', 'nombre_negocio_caracteristicas');

        mostrarMensajeError('#nombre_negocio', '#nombre_negocio_caracteristicasLabel', null);

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorNombre_negocio_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('nombre_negocio', 'destroy');

        ocultarMensajeError('#nombre_negocio', '#nombre_negocio_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}


function validarTipoRentaModalInfoPrincipal() {
    if ($('#tipo_renta').val() === 'Seleccione un tipo de renta') {
        $('#contenedorTipo_renta_caracteristicas').addClass('has-error');

        iniPopover('tipo_renta', 'left', 'Seleccione un elemento de la lista.', 'cerrar_tipo_renta');
        mostrarCerrarDestruirPopover('tipo_renta', 'show');
        cerrarPopover('cerrar_tipo_renta', 'tipo_renta');

        mostrarMensajeError('#tipo_renta', '#tipo_renta_caracteristicasLabel', 'Seleccione un elemento de la lista.');

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorTipo_renta_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('tipo_renta', 'destroy');

        ocultarMensajeError('#tipo_renta', '#tipo_renta_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}

function validarProvinciaModalInfoPrincipal() {
    if ($('#provincia').val() === 'Seleccione una provincia') {
        $('#contenedorProvincia_caracteristicas').addClass('has-error');

        iniPopover('provincia', 'left', 'Seleccione un elemento de la lista.', 'cerrar_provincia');
        mostrarCerrarDestruirPopover('provincia', 'show');
        cerrarPopover('cerrar_provincia', 'provincia');

        mostrarMensajeError('#provincia', '#provincia_caracteristicasLabel', 'Seleccione un elemento de la lista.');

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorProvincia_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('provincia', 'destroy');

        ocultarMensajeError('#provincia', '#provincia_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}


function validarMunicipioModalInfoPrincipal() {
    if ($('#municipio').val() === 'Seleccione un municipio') {
        $('#contenedorMunicipio_caracteristicas').addClass('has-error');

        iniPopover('municipio', 'left', 'Seleccione un elemento de la lista.', 'cerrar_municipio');
        mostrarCerrarDestruirPopover('municipio', 'show');
        cerrarPopover('cerrar_municipio', 'municipio');

        mostrarMensajeError('#municipio', '#municipio_caracteristicasLabel', 'Seleccione un elemento de la lista.');

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorMunicipio_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('municipio', 'destroy');

        ocultarMensajeError('#municipio', '#municipio_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}

function validarZonaModalInfoPrincipal() {
    if ($('#zona').val() === 'Seleccione una zona') {
        $('#contenedorZona_caracteristicas').addClass('has-error');

        iniPopover('zona', 'left', 'Seleccione un elemento de la lista.', 'cerrar_zona');
        mostrarCerrarDestruirPopover('zona', 'show');
        cerrarPopover('cerrar_zona', 'zona');

        mostrarMensajeError('#zona', '#zona_caracteristicasLabel', 'Seleccione un elemento de la lista.');

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorZona_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('zona', 'destroy');

        ocultarMensajeError('#zona', '#zona_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}

function validarDireccionModalInfoPrincipal() {
    if ($('#direccion').val() === '') {
        $('#contenedorDireccion_caracteristicas').addClass('has-error');

        iniPopover('direccion', 'left', $('#validarCompleteCampo').val(), 'cerrar_direccion');
        mostrarCerrarDestruirPopover('direccion', 'show');
        cerrarPopover('cerrar_direccion', 'direccion');

        mostrarMensajeError('#direccion', '#zona_caracteristicasLabel', 'Seleccione un elemento de la lista.');

        $('#guardar_cambios').attr('disabled', '');
    } else {
        $('#contenedorDireccion_caracteristicas').removeClass('has-error');

        mostrarCerrarDestruirPopover('direccion', 'destroy');

        ocultarMensajeError('#direccion', '#direccion_caracteristicasLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }

}

function validarPrecioModalInfoPrincipal() {
    if ($('#precio').val() === "") {
        $('#contenedor_precio').addClass('has-error');
        $('#contenedor_precio span').addClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');
        iniPopover("span_precio", "left", $('#validarCompleteCampo').val(), "cerrar_precio");
        mostrarCerrarDestruirPopover('span_precio', 'show');
        cerrarPopover('cerrar_precio', 'span_precio');

        mostrarMensajeError('#precio', '#precioLabel', null);

        $('#guardar_cambios').attr('disabled', '');

    } else if ($('#precio').val() < 6) {

        $('#contenedor_precio').addClass('has-error');
        $('#contenedor_precio span').addClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');
        iniPopover("span_precio", "left", $('#validarPrecio').val(), "cerrar_precio");
        mostrarCerrarDestruirPopover('span_precio', 'show');
        cerrarPopover('cerrar_precio', 'span_precio');

        mostrarMensajeError('#precio', '#precioLabel', $('#validarPrecio').val());

        $('#guardar_cambios').attr('disabled', '');

    } else {
        $('#contenedor_precio').removeClass('has-error');
        $('#contenedor_precio span').removeClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');

        ocultarMensajeError('#precio', '#precioLabel');

        $('#guardar_cambios').removeAttr('disabled');
    }
}
//============================================================================//
//------Funciones que validan el modal para modificar la info principal-------//
//============================================================================//

//============================================================================//
//-------------Funciones que validan el modal de confifuraciones--------------//
//============================================================================//

var errorNombreComentario = false;
var errorDescripcionComentario = false;


function validaNombreComentario() {
    var valor = $('#nombre_comentario').val();
    if (valor == null || valor.length == 0 || /^\s+$/.test(valor)) {
        $('#contenedornombre_comentario').addClass('has-error');

        iniPopover("nombre_comentario", "left", $('#validarCompleteCampo').val(), "cerrar_nombre_comentario");
        mostrarCerrarDestruirPopover('nombre_comentario', 'show');
        cerrarPopover('cerrar_nombre_comentario', 'nombre_comentario');

        mostrarMensajeError('#nombre_comentario', '#nombre_comentarioLabel', null);

        errorNombreComentario = false;
    } else {
        $('#contenedornombre_comentario').removeClass('has-error');

        mostrarCerrarDestruirPopover('nombre_comentario', 'destroy');

        ocultarMensajeError('#nombre_comentario', '#nombre_comentarioLabel');

        errorNombreComentario = true;
    }
}

function validaDescripcion_comentario() {
    var valor = $('#descripcion_comentario').val();
    if (valor == null || valor.length == 0 || /^\s+$/.test(valor)) {
        $('#contenedordescripcion_comentario').addClass('has-error');

        iniPopover("descripcion_comentario", "left", $('#validarCompleteCampo').val(), "cerrar_descripcion_comentario");
        mostrarCerrarDestruirPopover('descripcion_comentario', 'show');
        cerrarPopover('cerrar_descripcion_comentario', 'descripcion_comentario');

        mostrarMensajeError('#descripcion_comentario', '#descripcion_comentarioLabel', null);

        errorDescripcionComentario = false;
    } else {
        $('#contenedordescripcion_comentario').removeClass('has-error');

        mostrarCerrarDestruirPopover('descripcion_comentario', 'destroy');

        ocultarMensajeError('#descripcion_comentario', '#descripcion_comentarioLabel');

        errorDescripcionComentario = true;
    }
}

function activarBoton() {
    if (errorNombreComentario && errorDescripcionComentario) {
        $('#boton_comentarios').removeAttr('disabled');
    } else {
        $('#boton_comentarios').attr('disabled', '');
    }
}