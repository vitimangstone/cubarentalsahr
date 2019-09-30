$(document).ready(function() {

//================================================================================////================================================================================//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//================================================================================////================================================================================//

    $("#nombre").keydown(function(e) {
        if (e.which === 32 || (65 <= e.which && e.which <= 65 + 25)
                || (97 <= e.which && e.which <= 97 + 25) || e.which >= 48 && e.which <= 57 || e.which === 8)
            return true;
        else {
            return false;
        }
    });
//================================================================================////================================================================================//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//keydown     keydown     keydown     keydown     keydown     keydown      keydown////keydown     keydown     keydown     keydown     keydown     keydown      keydown//
//================================================================================////================================================================================//

//================================================================================////================================================================================//
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//================================================================================////================================================================================//

//============================================================================//

    $("#nombre").keyup(function() {
        validarNombre();
    });
    $("#nombre").change(function() {
        validarNombre();
    });
//============================================================================//

    $("#direccion").keyup(function() {
        validarDireccion();
    });
    $("#direccion").change(function() {
        validarDireccion();
    });
//============================================================================//

    $("#tipo_renta").change(function() {
        validarTipoRenta();
    });
     

//============================================================================//

    $("#provincia").change(function() {
        validarProvincia();
    });
    
//============================================================================//

    $("#municipio").change(function() {
        validarMunicipio();
    });

//============================================================================//

    $("#zona").change(function() {
        validarZona();
    });
//============================================================================//

    $("#dormitorios").keyup(function() {
        validateSpinner1();
    });
    $("#dormitorios").change(function() {
        validateSpinner1();
    });
//============================================================================//

    $("#precio").keyup(function() {
        validateSpinner2();
    });
    $("#precio").change(function() {
        validateSpinner2();
    });
//============================================================================//
    $('.file_extra').change(function() {
        validateFotosExtra();
    });

//================================================================================////================================================================================//
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//change     change     change     change     change     change     change     change             ////change     change     change     change     change     change     change     change     //
//================================================================================////================================================================================//


    $('#crear_perfil').submit(function() {
        var noExisteError = false;

        if (!errorNombreNegocio)
            validarNombre();

        if (!errorDireccion)
            validarDireccion();

        if (!errorTipoRenta)
            validarTipoRenta();

        if (!errorProvincia)
            validarProvincia();

        if (!errorMunicipio)
            validarMunicipio();

        if (!errorZona)
            validarZona();

        if (!errorDormitorios)
            validateSpinner1();

        if (!errorPrecio)
            validateSpinner2();

        if (!errorFotosExtra)
            validateFotosExtra();

        if (!errorFotoPerfil)
            validateFotoPerfil();

        if (errorNombreNegocio && errorDireccion && errorTipoRenta && errorProvincia &&
                errorMunicipio && errorZona && errorDormitorios && errorPrecio &&
                errorFotosExtra && errorFotoPerfil) {
            noExisteError = true;
        }
        return noExisteError;

    });
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
var errorNombreNegocio = false;
var errorDireccion = false;
var errorTipoRenta = false;
var errorProvincia = false;
var errorMunicipio = false;
var errorZona = false;
var errorDormitorios = false;
var errorPrecio = false;
var errorFotosExtra = false;
var errorFotoPerfil = false;
//=============================================================================//
//variables que controlan los errores      variables que controlan los errores //
//variables que controlan los errores      variables que controlan los errores //
//=============================================================================//


/* ********************************************************************* */
/* Funcione que validan los campos  *//* Funcione que validan los campos */
/* ********************************************************************* */

var validarCompleteCampo = $('#validarCompleteCampo').val();
var seleccioneFoto = $('#validarSeleccioneFoto').val();
var seleccioneTipoRenta = $('#validarSeleccioneTipoRenta').val();
var seleccioneProvincia = $('#validarSeleccioneProvincia').val();
var seleccioneMunicipio = $('#validarSeleccioneMunicipio').val();
var seleccioneZona = $('#validarSeleccioneZona').val();
var validarCantidadCuartos = $('#validarCantidadCuartos').val();
var validarPrecio = $('#validarPrecio').val();
var validarCantidadFotos = $('#validarCantidadFotos').val();

function validateFotoPerfil() {
    var Archivos = $('#afile')[0].files;
    if (Archivos.length !== 1) {

        $('.contenedor_foto_perfil').addClass('has-error');

        $('.contenedor_foto_perfil').css({borderColor: '#A94442', borderStyle: 'solid'});
        $('.cont_opciones_perfil').css({borderColor: '#A94442', backgroundColor: '#A94442'});

        iniPopoverFotoPerfil("foto_perfil", "right", seleccioneFoto, "cerrar_perfil");
        mostrarCerrarDestruirPopover('foto_perfil', 'show');
        cerrarPopover('cerrar_perfil', 'foto_perfil');

        mostrarMensajeError('#perfil', '#perfilLabel', seleccioneFoto);

        errorFotoPerfil = false;
    } else {

        $('.contenedor_foto_perfil').removeClass('has-error');

        $('.contenedor_foto_perfil').css({borderColor: '#FFF', borderStyle: 'solid'});
        $('.cont_opciones_perfil').css({borderColor: '#FFF', backgroundColor: '#FFF'});

        mostrarCerrarDestruirPopover('foto_perfil', 'destroy');

        ocultarMensajeError('#perfil', '#perfilLabel');

        errorFotoPerfil = true;
    }
}
//============================================================================//

function validarNombre() {
    if ($('#nombre').val() === "") {
        $('#contenedor_nombre_negocio').addClass('has-error');

        iniPopover("nombre", "right", validarCompleteCampo, "cerrar_nombre_negocio");
        mostrarCerrarDestruirPopover('nombre', 'show');
        cerrarPopover('cerrar_nombre_negocio', 'nombre');

        mostrarMensajeError('#nombre', '#nombreLabel', null);

        errorNombreNegocio = false;
    } else {
        $('#contenedor_nombre_negocio').removeClass('has-error');

        mostrarCerrarDestruirPopover('nombre', 'destroy');

        ocultarMensajeError('#nombre', '#nombreLabel');

        errorNombreNegocio = true;
    }
}
//============================================================================//

function validarDireccion() {
    if ($('#direccion').val() === "") {
        $('#contenedor_direccion').addClass('has-error');

        iniPopover("direccion", "right", validarCompleteCampo, "cerrar_direccion");
        mostrarCerrarDestruirPopover('direccion', 'show');
        cerrarPopover('cerrar_direccion', 'direccion');

        mostrarMensajeError('#direccion', '#direccionLabel', null);

        errorDireccion = false;
    } else {
        $('#contenedor_direccion').removeClass('has-error');

        mostrarCerrarDestruirPopover('direccion', 'destroy');

        ocultarMensajeError('#direccion', '#direccionLabel');

        errorDireccion = true;
    }
}
//============================================================================//

function validarTipoRenta() {
    if ($('#tipo_renta').val() === "Seleccione un tipo de renta" || $('#tipo_renta').val() === "Select a rent type") {
        $('#contenedor_tipo_renta').addClass('has-error');

        iniPopover("tipo_renta", "right", seleccioneTipoRenta, "cerrar_tipo_renta");
        mostrarCerrarDestruirPopover('tipo_renta', 'show');
        cerrarPopover('cerrar_tipo_renta', 'tipo_renta');

        mostrarMensajeError('#tipo_renta', '#tipo_rentaLabel', seleccioneTipoRenta);

        errorTipoRenta = false;
    } else {
        $('#contenedor_tipo_renta').removeClass('has-error');

        mostrarCerrarDestruirPopover('tipo_renta', 'destroy');

        ocultarMensajeError('#tipo_renta', '#tipo_rentaLabel');

        errorTipoRenta = true;
    }
}
//============================================================================//

function validarProvincia() {
    if ($('#provincia').val() === "Seleccione una provincia" || $('#provincia').val() === "Select a province") {
        $('#contenedor_provincia').addClass('has-error');

        iniPopover("provincia", "right", seleccioneProvincia, "cerrar_provincia");
        mostrarCerrarDestruirPopover('provincia', 'show');
        cerrarPopover('cerrar_provincia', 'provincia');

        mostrarMensajeError('#provincia', '#provinciaLabel', seleccioneProvincia);

        errorProvincia = false;

        $('#contenedor_municipio').removeClass('has-error');

        mostrarCerrarDestruirPopover('municipio', 'destroy');

        ocultarMensajeError('#municipio', '#municipioLabel');

        errorMunicipio = false;

    } else {
        $('#contenedor_provincia').removeClass('has-error');

        mostrarCerrarDestruirPopover('provincia', 'destroy');

        ocultarMensajeError('#provincia', '#provinciaLabel');

        errorProvincia = true;
    }
}
//============================================================================//

function validarMunicipio() {
    if ($('#municipio').val() === "Seleccione un municipio" || $('#municipio').val() === "Select a municipality") {
        $('#contenedor_municipio').addClass('has-error');

        iniPopover("municipio", "right", seleccioneMunicipio, "cerrar_municipio");
        mostrarCerrarDestruirPopover('municipio', 'show');
        cerrarPopover('cerrar_municipio', 'municipio');

        mostrarMensajeError('#municipio', '#municipioLabel', seleccioneMunicipio);

        errorMunicipio = false;
    } else {
        $('#contenedor_municipio').removeClass('has-error');

        mostrarCerrarDestruirPopover('municipio', 'destroy');

        ocultarMensajeError('#municipio', '#municipioLabel');

        errorMunicipio = true;
    }
}
//============================================================================//

function validarZona() {
    if ($('#zona').val() === "Seleccione una zona" || $('#zona').val() === "Select an area") {
        $('#contenedor_zona').addClass('has-error');

        iniPopover("zona", "right", seleccioneZona, "cerrar_zona");
        mostrarCerrarDestruirPopover('zona', 'show');
        cerrarPopover('cerrar_zona', 'zona');

        mostrarMensajeError('#zona', '#zonaLabel', seleccioneZona);

        errorZona = false;
    } else {
        $('#contenedor_zona').removeClass('has-error');

        mostrarCerrarDestruirPopover('zona', 'destroy');

        ocultarMensajeError('#zona', '#zonaLabel');

        errorZona = true;
    }
}
//============================================================================//

function validateSpinner1() {
    if ($('#dormitorios').val() === "") {
        $('#contenedor_dormitorios').addClass('has-error');

        mostrarCerrarDestruirPopover('dormitorios', 'destroy');
        iniPopover("dormitorios", "right", validarCompleteCampo, "cerrar_dormitorios");
        mostrarCerrarDestruirPopover('dormitorios', 'show');
        cerrarPopover('cerrar_dormitorios', 'dormitorios');

        mostrarMensajeError('#dormitorios', '#dormitoriosLabel', null);

        errorDormitorios = false;
    } else if ($('#dormitorios').val() == 0) {
        $('#dormitorios').val("");

        $('#contenedor_dormitorios').addClass('has-error');

        mostrarCerrarDestruirPopover('dormitorios', 'destroy');
        iniPopover("dormitorios", "right", validarCantidadCuartos, "cerrar_dormitorios");
        mostrarCerrarDestruirPopover('dormitorios', 'show');
        cerrarPopover('cerrar_dormitorios', 'dormitorios');

        mostrarMensajeError('#dormitorios', '#dormitoriosLabel', validarCantidadCuartos);

        errorDormitorios = false;
    } else {
        $('#contenedor_dormitorios').removeClass('has-error');

        mostrarCerrarDestruirPopover('dormitorios', 'destroy');

        ocultarMensajeError('#dormitorios', '#dormitoriosLabel');

        errorDormitorios = true;
    }

}
//============================================================================//

function validateSpinner2() {
    if ($('#precio').val() === "") {
        $('#contenedor_precio').addClass('has-error');
        $('#contenedor_precio span').addClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');
        iniPopover("span_precio", "right", validarCompleteCampo, "cerrar_precio");
        mostrarCerrarDestruirPopover('span_precio', 'show');
        cerrarPopover('cerrar_precio', 'span_precio');

        mostrarMensajeError('#precio', '#precioLabel', null);

        errorPrecio = false;
    } else if ($('#precio').val() < 6) {

        $('#contenedor_precio').addClass('has-error');
        $('#contenedor_precio span').addClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');
        iniPopover("span_precio", "right", validarPrecio, "cerrar_precio");
        mostrarCerrarDestruirPopover('span_precio', 'show');
        cerrarPopover('cerrar_precio', 'span_precio');

        mostrarMensajeError('#precio', '#precioLabel', validarPrecio);

        errorPrecio = false;
    } else {
        $('#contenedor_precio').removeClass('has-error');
        $('#contenedor_precio span').removeClass('input-top-radius-0');

        mostrarCerrarDestruirPopover('span_precio', 'destroy');

        ocultarMensajeError('#precio', '#precioLabel');

        errorPrecio = true;
    }
}
//============================================================================//

function validateFotosExtra() {
    var cantFotos = $('#fotos-extras img').length;
    var validarCantidadFotos = $('#validarCantidadFotos').val();
    
    if (cantFotos < 3) {
        $('#fotos-extras').addClass('has-error');

        iniPopover("fotos-extras", "bottom", validarCantidadFotos, "cerrar_fotos-extras");
        mostrarCerrarDestruirPopover('fotos-extras', 'show');
        cerrarPopover('cerrar_fotos-extras', 'fotos-extras');

        mostrarMensajeError('#fotos-extras', '#fotos-extrasLabel', validarCantidadFotos);

        errorFotosExtra = false;
    } else {
        $('#fotos-extras').removeClass('has-error');
        $("#fotos-extras").attr('class', 'panel-body');

        mostrarCerrarDestruirPopover('fotos-extras', 'destroy');

        ocultarMensajeError('#fotos-extras', '#fotos-extrasLabel');

        errorFotosExtra = true;
    }
}
/* ********************************************************************* */
/* Funcione que validan los campos  *//* Funcione que validan los campos */
/* ********************************************************************* */

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

function iniPopoverPrecio(selector, posicion, msj, id_btn_cerrar) {
    $("#" + selector).popover({
        animation: true,
        html: true,
        placement: posicion,
        trigger: 'manual',
        container: 'body',
        content: '<span class="text-danger">' + msj + '&nbsp;&nbsp;</span><button id="' + id_btn_cerrar + '" type="button" class="close btn btn-xs"  title="click para cerrar">&times;</button>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm" style="margin-left:54px"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content bg-danger"></div></div>'
    });
}

function iniPopoverFotoPerfil(selector, posicion, msj, id_btn_cerrar) {
    $("#" + selector).popover({
        animation: true,
        html: true,
        placement: posicion,
        trigger: 'manual',
        container: 'body',
        content: '<span class="text-danger">' + msj + '&nbsp;&nbsp;</span><button id="' + id_btn_cerrar + '" type="button" class="close btn btn-xs"  title="click para cerrar">&times;</button>',
        template: '<div id="pop1" class="popover hidden-xs hidden-sm" style="margin-top:180px;margin-left:225px;"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content bg-danger"></div></div>'
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

/* ********************************************************* *//* ********************************************************* */
/*       Funcion que se invoca inicializar,mostrar,          *//*       Funcion que se invoca inicializar,mostrar,          */
/*             cerrar y destruir los PopOvers                *//*             cerrar y destruir los PopOvers                */
/* ********************************************************* *//* ********************************************************* */

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