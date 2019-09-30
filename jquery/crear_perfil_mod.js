function mostrarVistaPreviaPerfil() {
    var Archivos, Lector;
    Archivos = $('.file')[0].files;
    if (Archivos.length > 0) {
        if (Archivos[0].size < 300000) {
            Lector = new FileReader();
            $(Lector).load(function(e) {
                var origen,
                        tipo;
                origen = e.target;
                tipo = window.obtenerTipoMIME(origen.result.substring(0, 30));
                if (tipo !== 'image/jpeg') {
                    $('#mal_formato').modal();
                } else {
                    $('.modal-body center').remove();
                    $('.recortar_img').remove();
                    $('#recortar_imagen .modal-body').append('<center><img class="recortar_img" src=""></center>');
                    $('.perfil').attr('src', origen.result);
                    $('.recortar_img').attr('src', origen.result);
                    $('.alert_Jcrop').hide();
                    $('.alert_Jcrop').show(1000);
                    $('.perfil').fadeIn(700);

                    validateFotoPerfil();

//                    if ($('.imagen_extra1').length == 0) {
//                        $('#fotos-extras').append('<img class="imagen_extra1" src = "' + origen.result + '">');
//                    } else {
//                        $('.imagen_extra1').remove();
//                        $('.mi_perfil').remove();
//                        $('#fotos-extras').append('<img class="imagen_extra1" src = "' + origen.result + '">');
//                    }

                    $('.recortar').click(function() {
                        $.post("control_imagen_perfil.php", {
                            x: $('#x').val(),
                            y: $('#y').val(),
                            w: $('#w').val(),
                            h: $('#h').val(),
                            crear_cuenta: 'true',
                            src: origen.result
                        },
                        function() {
                            $('.perfil').attr('src', 'imagenes/photo_aux.jpeg');
                            $('.alert_Jcrop').remove();
                            if ($('.alert-success').length == 0)
                                $('.cont_msg').append('<div class="alert alert-success hidden-xs" style="margin-top: 8px; margin-bottom: 0px;"><b>¡Bien hecho!</b> La imagen se ha ajustado correctamente.</div>');
                            $('.cont_opciones_perfil').css('display', 'none');
                        });
                    });

                    $('.recortar_img').Jcrop({
                        aspectRatio: 1,
                        bgFade: true,
                        bgOpacity: 0.2,
                        setSelect: [100, 0, 400, 400],
                        onSelect: updateCoords,
                        onChange: updateCoords
                    });
                }
            });
            Lector.readAsDataURL(Archivos[0]);
            $('.cont_imagen_recortar').mCustomScrollbar();
            Lector.onerror = function(e) {
                console.log(e);
            };
        } else {
            $('#imagen_muy_grande').modal();
        }
    } else {
        alert('Seleccione un archivo');
    }
}

function mostrarVistaPreviaFotosExtras() {
    var Archivos = $('.file_extra')[0].files;
    if (Archivos.length > 0 && Archivos.length < 12) {
        limpiar_fotos_extras();
        for (var i = 0; i < Archivos.length; i++) {
            var file = Archivos[i];
            if (file.size < 300000) {
                var Lector1 = new FileReader();
                $(Lector1).load(function(e) {
                    var origen,
                            tipo;
                    origen = e.target;
                    tipo = window.obtenerTipoMIME(origen.result.substring(0, 30));
                    if (tipo !== 'image/jpeg' && tipo !== 'image/gif') {
                        $('#mal_formato').modal();
                    } else {
                        $('#fotos-extras').append('<img class="imagen_extra2" src = "' + origen.result + '">');
                    }
                    validateFotosExtra();
                });

                Lector1.readAsDataURL(Archivos[i]);
                Lector1.onerror = function(e) {
                    console.log(e)
                }
            } else {
                $('#imagen_muy_grande').modal();
            }

        }
    } else {
        $('#imposible_add_imagen').modal();
    }
}

function limpiar_fotos_extras() {
    if ($('.imagen_extra2').length > 0) {
        $('.imagen_extra2').remove();
    }
}

window.obtenerTipoMIME = function obtenerTipoMIME(cabecera) {
    return cabecera.replace(/data:([^;]+).*/, '\$1');
}

function updateCoords(c)
{
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);

}

function checkCoords()
{
    if (parseInt($('#w').val()))
        return true;
    alert('Please select a crop region then press submit.');
    return false;
}

jQuery(function($) {

    $(".tipo_renta").load("modulos/modulos_utiles/tipo_renta.php");

    $(".provincia").change(function() {
        $(".municipio").load("modulos/modulos_utiles/municipios_mod.php", {
            id_provincia: $(this).val()
        });
        $(".zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: $(this).val()
        });

    });

    $(".municipio").change(function() {
        $(".zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: convertidorPalabra($(this).val())
        });
    });

    $(".provincia").load("modulos/modulos_utiles/provincias_mod.php");

    $('.file').change(function(e) {
        mostrarVistaPreviaPerfil();
    });

    $('.file_extra').change(function(e) {
        mostrarVistaPreviaFotosExtras();
    });

    $('.file').hover(function() {
        $('.cambiar_foto_perfil').css("background-color", "#97110e");
        $('.cambiar_foto_perfil').css("border-color", "#97110e");
    }, function() {
        $('.cambiar_foto_perfil').css("background-color", "#b81900");
        $('.cambiar_foto_perfil').css("border-color", "#b81900");
    });

    $('.file_extra').hover(function() {
        $('.panel_opcion_fotos_extras').css("background-color", "#97110e");
        $('.panel_opcion_fotos_extras').css("border-color", "#97110e");
    }, function() {
        $('.panel_opcion_fotos_extras').css("background-color", "#760300");
        $('.panel_opcion_fotos_extras').css("border-color", "#760300");
    });

    $('input[type=checkbox]').click(function() {
        if ($(this).attr('value') == "off") {
            $(this).attr('value', 'on');
        } else {
            $(this).attr('value', 'off');
        }
    });
});


