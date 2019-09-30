$(document).ready(function() {
    userRegister();

    $('#nombre_contactenos').keyup(function() {
        validarNombreContactenos();
    });
    $('#correo_contactenos').keyup(function() {
        validarCorreoContactenos();
    });
    $('#mensaje_contactenos').keyup(function() {
        validarMensajeContactenos();
    });

    $('#nombre_contactenos').change(function(e) {
        validarNombreContactenos();
    });
    $('#correo_contactenos').change(function(e) {
        validarCorreoContactenos();
    });
    $('#mensaje_contactenos').change(function(e) {
        validarMensajeContactenos();
    });

    // jQuery to collapse the navbar on scroll
    // $(window).scroll(function() {
    //     if ($(".navbar").offset().top > 50) {
    //         $(".navbar-fixed-top").addClass("top-nav-collapse");
    //     } else {
    //         $(".navbar-fixed-top").removeClass("top-nav-collapse");
    //     }
    // });

    $('.lugares_todos').click(function(e){
        alert('me estan dando click');
        var imageNumber = e.currentTarget.attributes['id'].value;
        var imageName = '#image-name'+imageNumber;
        var existingNames = $('#searcher-by-places').val();
        if(existingNames == ""){
            $('#searcher-by-places').val("'"+$(imageName)[0].innerHTML+"'");
        }
        else{
            $('#searcher-by-places').val(existingNames+ ', ' + "'"+$(imageName)[0].innerHTML+"'");
        }

        // alert('si funciona');
    })

    $('#placesContainer').on('click',function(){
        $('#selected-checkbox').trigger('click');
    })

    $('#placesContainer').load("modulos/modulos_pag_login/places.php");

    $('#preview_places').click(function(){
        $('#placesContainer').load("modulos/modulos_pag_login/places.php",{
            difference:'negative'
        })

    })

    $('#next_places').click(function(){
        $('#placesContainer').load("modulos/modulos_pag_login/places.php",{
            difference:'positive'
        })

    })


    $('#search-rentals-by-places').click(function (){
        var cadena = '';
        $(".places-selection").each(function(key, value) {
            if(value.checked){
                if(cadena == ''){
                    cadena = "'"+value.parentNode.childNodes[2].innerText+"'"
                }
                else{
                    cadena = cadena + ', '+ "'"+value.parentNode.childNodes[2].innerText+"'"
                }

            }
        })

        $('#search-rentals-by-places')[0].href = 'cliente.php?lugares='+cadena;

    })

    $('#content-filters').click(function(){
        $('#all-filters').css('display','block');
        $('#content-filters-1').css('display','block');
        $('#content-filters').css('display','none');
    })


    $('#content-filters-1').click(function(){
        $('#all-filters').css('display','none');
        $('#content-filters-1').css('display','none');
        $('#content-filters').css('display','block');
    })


    $('#btn_enviar_contactenos').click(function() {
        contactenosVal();
    });


    $("#chevron-mobile").click(function(){
        var chevron = $("#chevron");
        // alert('el chevron fue seleccionado');
        if(chevron.hasClass('glyphicon-chevron-right')){
            chevron.removeClass('glyphicon-chevron-right');
            chevron.addClass('glyphicon-chevron-down');
        }
        else {
            chevron.removeClass('glyphicon-chevron-down');
            chevron.addClass('glyphicon-chevron-right');
        }
    });

    $('#cerrar_mensaje_contacto').click(function() {
        $('#nombre_contactenos').val("");
        $('#correo_contactenos').val("");
        $('#mensaje_contactenos').val("");
        $('#contactenos').modal('hide');
    });

    $(".modal").on('show.bs.modal', function() {
        mostrarCerrarDestruirPopover('nombre_modal,#contrasena_modal,#contrasena_modal,#credenciales_usuario,#nombreArrendatario,#apellidosArrendatario,#correo2,#nombre_usuario,#telefonoFijo,#telefonoMovil,#nombre_usuario,#contrasena1,#contrasena2,#nombre_usuario_navbar,#contrasenna', 'destroy');
        $('#nombre_modal,#contrasena_modal,#contrasena_modal,#credenciales_usuario,#nombreArrendatario,#apellidosArrendatario,#correo2,#nombre_usuario,#telefonoFijo,#telefonoMovil,#nombre_usuario,#contrasena1,#contrasena2,#nombre_usuario_navbar,#contrasenna').val('');
        $('.panel-body div').removeClass('has-error');
        $('.panel-body div').removeClass('has-success');
    });


    $('#credenciales_solicitud').hide();

    /*============================================================================*/
    $('#boton_log_navbar').click(function() {
        validarNombreContrasennaNavBar();
    });
    /*============================================================================*/

    /*============================================================================*/
    $('#btn_registro_mod').click(function() {
        console.log("dsadsadasd");
        validarNombreContrasennaModal();
    });

    $("#error_loging").on('hide.bs.modal', function() {
        mostrarCerrarDestruirPopover('nombre_modal', 'destroy');
        mostrarCerrarDestruirPopover('contrasena_modal', 'destroy');
        mostrarCerrarDestruirPopover('credenciales_usuario', 'destroy');

        $('#credenciales_usuario').val("");
        $('#credenciales_solicitud').removeClass('has-error');
        $('#credenciales_solicitud').removeClass('has-success');
    });
    /*============================================================================*/

    /*============================================================================*/
    $('#credenciales_usuario').keyup(function() {
        validarUsuarioCredenciales();
    });

    $('#credenciales_btn').click(function() {
        if (verCredenciales) {
            $.post('control_recuperar_credenciales.php', {nombre: $('#credenciales_usuario').val()}, function(data) {

            });
        }
    });

    /*============================================================================*/



    /*===========Funcion que verifica solo numeros en los campos numericos y de telefonos===========*/
    $("input[type='number'],input[type='tel'] ").keydown(function(e) {

        if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.which >= 97 && e.keyCode <= 105) || (e.keyCode === 8) || (e.keyCode === 9) || (e.which === 116)) {
            return true;
        } else {
            return false;
        }
    });
    /*===========Funcion que verifica solo numeros en los campos numericos y de telefonos===========*/


    /*===========Funcion que Valida los campos del modal de contactenos===========*/
    $("#nombre_contactenos").keydown(function(e) {
        if ((e.keyCode === 8) || (e.keyCode === 9) || (65 <= e.which && e.which <= 65 + 25) || (e.which === 116)) {
            return true;
        } else {
            return false;
        }
    });

    $('#correo_contactenos').change(function() {
        validarCorreoContactenos();
    });
    $('#nombre_contactenos').change(function() {
        validacionCampoVacio('nombre_contactenos', 'contenedor_nombre_contactenos', 'left', 'cerrar_nombre_contactenos');
    });
    $('#mensaje_contactenos').change(function() {
        validacionCampoVacio('mensaje_contactenos', 'contenedor_mensaje_contactenos', 'left', 'cerrar_mensaje_contactenos');
    });

    $("#contactenos").on('hide.bs.modal', function() {
        mostrarCerrarDestruirPopover('nombre_contactenos', 'destroy');
        mostrarCerrarDestruirPopover('mensaje_contactenos', 'destroy');
        mostrarCerrarDestruirPopover('correo_contactenos', 'destroy');

        $('#contenedor_nombre_contactenos').removeClass('has-error');
        $('#contenedor_correo_contactenos').removeClass('has-error');
        $('#contenedor_mensaje_contactenos').removeClass('has-error');

        ocultarMensajeError2('nombre_contactenos', 'nombre_contactanosLabel');
        ocultarMensajeError2('mensaje_contactenos', 'mensaje_contactanosLabel');
        ocultarMensajeError2('correo_contactenos', 'correo_contactenosLabel');

        $('#nombre_contactenos').val("");
        $('#mensaje_contactenos').val("");
        $('#correo_contactenos').val("");
    });
    /*===========Funcion que Valida los campos del modal de contactenos===========*/

});


var validarCompleteCampo = $('#validarCompleteCampo').val();

function mostrarMensajeError2(id, idLabel, mensaje) {

    if (mensaje !== null) {
        $('#' + idLabel).html(mensaje);
    }
    else {
        $('#' + idLabel).html(validarCompleteCampo);
    }

    $('#' + id).addClass('input-top-radius-0');
    $('#' + idLabel).removeClass('sr-only');
}

/*======Funcion que verifica el nombre de usuario y la contrasena en la barra de navegacion======*/
function validarNombreContrasennaNavBar() {
    if ($('#nombre_usuario_navbar').val() != "" && $('#contrasenna').val() != "") {
        $.post('control_de_acceso.php', {usuario: $('#nombre_usuario_navbar').val(), contra: $('#contrasenna').val()}, function(data) {

            if (data == true) {
                location.href = "perfil.php";
            } else {
                $('#nombre_usuario_navbar').val("");
                $('#contrasenna').val("");

                $('#contenedor_contrasenna_navbar').removeClass('has-error');
                $('#contenedor_usuario_navbar').removeClass('has-error');

                mostrarCerrarDestruirPopover('nombre_usuario_navbar', 'destroy');
                mostrarCerrarDestruirPopover('contrasenna', 'destroy');

                $('#credenciales_solicitud').addClass('false');

                location.href = "login.php";
            }
        });
    } else {
        if ($('#nombre_usuario_navbar').val() === "") {
            $("#contenedor_usuario_navbar").addClass('has-error');

            iniPopover('nombre_usuario_navbar', 'bottom', validarCompleteCampo, 'cerrar_usuario_navBar');
            mostrarCerrarDestruirPopover('nombre_usuario_navbar', 'show');

        }
        if ($('#contrasenna').val() === "") {
            $("#contenedor_contrasenna_navbar").addClass('has-error');

            iniPopover('contrasenna', 'bottom', validarCompleteCampo, 'cerrar_contrasenna');
            mostrarCerrarDestruirPopover('contrasenna', 'show');
        }
    }
}
/*======Funcion que verifica el nombre de usuario y la contrasena en la barra de navegacion======*/


/*=============Funcion que verifica el nombre de usuario y la contrasena en el modal=============*/
function validarNombreContrasennaModal() {
    console.log('asdsadsadasd');
    if ($('#nombre_modal').val() != "" && $('#contrasena_modal').val() != "") {
        $.post('control_de_acceso.php', {usuario: $('#nombre_modal').val(), contra: $('#contrasena_modal').val()}, function(data) {
            console.log("in here");
            console.log(data);
            if (data == true) {
                location.href = "perfil.php";
            } else {
                $('#login_error').show('slow');
                $('#nombre_modal').val('');
                $('#contrasena_modal').val('');
                mostrarCerrarDestruirPopover('nombre_modal', 'destroy');
                mostrarCerrarDestruirPopover('contrasena_modal', 'destroy');
                $("#contenedor_nombre_modal").removeClass('has-error');
                $("#contenedor_contrasena_modal").removeClass('has-error');

                ocultarMensajeError('#nombre_modal', '#nombre_modalLabel');
                ocultarMensajeError('#contrasena_modal', '#contrasena_modalLabel');
            }
        });
    } else {


        if ($('#nombre_modal').val() === "") {
            $("#contenedor_nombre_modal").addClass('has-error');

            iniPopover('nombre_modal', 'left', validarCompleteCampo, 'cerrar_nombre_modal');
            mostrarCerrarDestruirPopover('nombre_modal', 'show');

            mostrarMensajeError('#nombre_modal', '#nombre_modalLabel', validarCompleteCampo);

        } else {
            $("#contenedor_nombre_modal").removeClass('has-error');
            mostrarCerrarDestruirPopover('nombre_modal', 'destroy');

            ocultarMensajeError('#nombre_modal', '#nombre_modalLabel');
        }
        if ($('#contrasena_modal').val() === "") {
            $("#contenedor_contrasena_modal").addClass('has-error');

            iniPopover('contrasena_modal', 'left', validarCompleteCampo, 'cerrar_contrasena_modal');
            mostrarCerrarDestruirPopover('contrasena_modal', 'show');

            mostrarMensajeError('#contrasena_modal', '#contrasena_modalLabel', validarCompleteCampo);
        } else {
            $("#contenedor_contrasena_modal").removeClass('has-error');
            mostrarCerrarDestruirPopover('contrasena_modal', 'destroy');

            ocultarMensajeError('#contrasena_modal', '#contrasena_modalLabel');
        }
    }
}
/*=============Funcion que verifica el nombre de usuario y la contrasena en el modal=============*/



/*===========Funcion que Valida los campos del modal de contactenos===========*/
var errorCorreoContactenos = false;
var errorNombreContactenos = false;
var errorMensajeContactenos = false;

function validarNombreContactenos() {
    if ($('#nombre_contactenos').val() === "") {
        $('#contenedor_nombre_contactenos').addClass('has-error');

        iniPopover('nombre_contactenos', 'left', $('#validarCompleteCampo').val(), 'cerrar_nombre_contactenos');
        mostrarCerrarDestruirPopover('nombre_contactenos', 'show');
        cerrarPopover('cerrar_nombre_contactenos', 'nombre_contactenos');
        mostrarMensajeError('#nombre_contactenos', '#nombre_contactanosLabel', null);

        errorNombreContactenos = false;

    } else {
        $('#contenedor_nombre_contactenos').removeClass('has-error');
        mostrarCerrarDestruirPopover('nombre_contactenos', 'destroy');
        ocultarMensajeError('#nombre_contactenos', '#nombre_contactanosLabel');

        errorNombreContactenos = true;
    }
}
function validarMensajeContactenos() {
    if ($('#mensaje_contactenos').val() === "") {
        $('#contenedor_mensaje_contactenos').addClass('has-error');

        iniPopover('mensaje_contactenos', 'left', $('#validarCompleteCampo').val(), 'cerrar_mensaje_contactenos');
        mostrarCerrarDestruirPopover('mensaje_contactenos', 'show');
        cerrarPopover('cerrar_mensaje_contactenos', 'mensaje_contactenos');
        mostrarMensajeError('#mensaje_contactenos', '#mensaje_contactanosLabel', null);

        errorMensajeContactenos = false;
    } else {
        $('#contenedor_mensaje_contactenos').removeClass('has-error');
        mostrarCerrarDestruirPopover('mensaje_contactenos', 'destroy');
        ocultarMensajeError('#mensaje_contactenos', '#mensaje_contactanosLabel');

        errorMensajeContactenos = true;
    }
}

function validarCorreoContactenos() {
    if ($('#correo_contactenos').val() != '') {
        expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,3})+$/;
        if (!expr.test($('#correo_contactenos').val())) {
            $('#contenedor_correo_contactenos').addClass('has-error');

            $('body').off('click', 'cerrar_correo_contactenos');
            mostrarCerrarDestruirPopover('correo_contactenos', 'destroy');
            iniPopover('correo_contactenos', 'left', $('#validarCorreo').val(), 'cerrar_correo_contactenos');
            mostrarCerrarDestruirPopover('correo_contactenos', 'show');
            cerrarPopover('cerrar_correo_contactenos', 'correo_contactenos');

            mostrarMensajeError('#correo_contactenos', '#correo_contactenosLabel', $('#validarCorreo').val());

            errorCorreoContactenos = false;

        } else {
            $('#contenedor_correo_contactenos').removeClass('has-error');
            mostrarCerrarDestruirPopover('correo_contactenos', 'destroy');

            ocultarMensajeError('#correo_contactenos', '#correo_contactenosLabel');

            errorCorreoContactenos = true;

        }
    } else {
        $('#contenedor_correo_contactenos').addClass('has-error');

        $('body').off('click', 'cerrar_correo_contactenos');
        mostrarCerrarDestruirPopover('correo_contactenos', 'destroy');
        iniPopover('correo_contactenos', 'left', $('#validarCompleteCampo').val(), 'cerrar_correo_contactenos');
        mostrarCerrarDestruirPopover('correo_contactenos', 'show');
        cerrarPopover('cerrar_correo_contactenos', 'correo_contactenos');

        mostrarMensajeError('#correo_contactenos', '#correo_contactenosLabel', null);
        errorCorreoContactenos = false;
    }
}


/*===========Funcion que Valida los campos del modal de contactenos===========*/


var verCredenciales = false;

function validarUsuarioCredenciales() {
    if (validarCamposVacios($('#credenciales_usuario').val())) {

        $('#credenciales_solicitud').removeClass('has-success');
        $('#credenciales_solicitud').removeClass('has-error');

        var verificando = $('#verificandoUsuario').val();

        iniPopoverUsuario('credenciales_usuario', 'left', verificando, 'cerrar_usuario');
        mostrarCerrarDestruirPopover('credenciales_usuario', 'show');

        $.post('control_nombre_usuario.php', {nombre: $('#credenciales_usuario').val()}, function(data) {

            if (data != 'false') {

                $('#credenciales_solicitud').removeClass('has-success');
                $('#credenciales_solicitud').addClass('has-error');

                var verificandoUsuarioExiste = $('#verificandoUsuarioExiste').val();

                mostrarCerrarDestruirPopover('credenciales_usuario', 'destroy');
                iniPopoverUsuarioMal('credenciales_usuario', 'left', verificandoUsuarioExiste, 'cerrar_credenciales_usuario');
                $('#contenedorNombre_usuario').addClass('has-error');

                mostrarCerrarDestruirPopover('credenciales_usuario', 'show');

                $('#credenciales_usuarioLabel').removeClass('bg-success').removeClass('bg-info').addClass('bg-danger');
                mostrarMensajeError('#credenciales_usuario', '#credenciales_usuarioLabel', verificandoUsuarioExiste);

                cerrarPopover('cerrar_credenciales_usuario', 'credenciales_usuario');

                verCredenciales = false;

            } else {

                $('#credenciales_solicitud').removeClass('has-error');
                $('#credenciales_solicitud').addClass('has-success');

                var correcto = $('#correcto').val();
                mostrarCerrarDestruirPopover('credenciales_usuario', 'destroy');
                iniPopoverUsuarioBien('credenciales_usuario', 'left', correcto, 'cerrar_credenciales_usuario');

                $('#contenedorNombre_usuario').removeClass('has-error').addClass('has-success');
                mostrarCerrarDestruirPopover('credenciales_usuario', 'show');

                $('#credenciales_usuarioLabel').removeClass('bg-danger').removeClass('bg-info').addClass('bg-success').css({border: "none"});
                mostrarMensajeError('#credenciales_usuario', '#credenciales_usuarioLabel', correcto);

                cerrarPopover('cerrar_credenciales_usuario', 'credenciales_usuario');

                verCredenciales = true;
            }

        });
    } else {
        $('#credenciales_solicitud').addClass('has-error');
        var validarCompleteCampo = $('#validarCompleteCampo').val();
        mostrarCerrarDestruirPopover('credenciales_usuario', 'destroy');
        iniPopover('credenciales_usuario', 'left', validarCompleteCampo, 'cerrar_credenciales_usuario');
        mostrarCerrarDestruirPopover('credenciales_usuario', 'show');


    }
}
function selectedPlace(e) {

    var selected_checked = $('#selected-checkbox'+e.id);
    selected_checked.trigger('click');
    // selected_checked[0].checked;
    // var imageNumber = e.id;
    // var imageName = '#image-name'+imageNumber;
    // console.log($('#selected-checkbox'+e.id)[0].checked);
    // var existingNames = $('#searcher-by-places').val();
    // if(existingNames == ""){
    //     $('#searcher-by-places').val("'"+$(imageName)[0].innerHTML+"'");
    // }
    // else{
    //     $('#searcher-by-places').val(existingNames+ ', ' + "'"+$(imageName)[0].innerHTML+"'");
    // }


}

function validarCamposVacios(valor) {
    var aux = true;
    if (valor == null || valor.length == 0 || /^\s+$/.test(valor)) {
        aux = false;
    }
    return aux;
}

function ocultarMensajeError2(id, idLabel) {
    $('#' + id).removeClass('input-top-radius-0');
    $('#' + idLabel).addClass('sr-only');
}


function convertidorPalabra(palabra) {
    for (var i = 0; i < palabra.length; i++) {

        switch (palabra.charAt(i)) {
            case 'ñ':
                palabra = palabra.replace('ñ', '&ntilde;');
                break;
            case 'ó':
                palabra = palabra.replace('ó', '&oacute;');
                break;
            case 'í':
                palabra = palabra.replace("í", '&iacute;');
                break;
            case 'á':
                palabra = palabra.replace("á", '&iacute;');
                break;
            case 'ú':
                palabra = palabra.replace("ú", '&iacute;');
                break;
            case 'é':
                palabra = palabra.replace("é", '&iacute;');
                break;
        }
    }
    return palabra;
}

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

function contactenosVal() {

    validarNombreContactenos();
    validarCorreoContactenos();
    validarMensajeContactenos();
    if (errorCorreoContactenos && errorMensajeContactenos && errorNombreContactenos) {
        $.post("control_contactenos_mod.php", {
            nombre: $('#nombre_contactenos').val(),
            correo: $('#correo_contactenos').val(),
            mensaje: $('#mensaje_contactenos').val()

        }, function() {
            $('#nombre_contactenos').val("");
            $('#correo_contactenos').val("");
            $('#mensaje_contactenos').val("");
            $('#contactenos').modal('hide');
        });
    }
}

function userRegister(){
    $.post("user_register_mod.php",{
        navigator: navigator.userAgent,
        locationHost: location.hostname,
        locationPathName: location.pathname
    }, function(data){
        console.log(data)
    })
}