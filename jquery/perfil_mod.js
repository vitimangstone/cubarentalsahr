function mostrarVistaPreviaFotoPerfil() {
    var Archivos, Lector;
    Archivos = $('.file_perfil')[0].files;
    if (Archivos.length > 0) {
        if (Archivos[0].size < 300000) {
            Lector = new FileReader();
            Lector.onloadend = function(e) {
                var origen, tipo;
                origen = e.target;
                tipo = window.obtenerTipoMIME2(origen.result.substring(0, 30));
                if (tipo !== 'image/jpeg') {
                    $('#mal_formato').modal();
                } else {
//                    $('.foto_perfil').attr('src', origen.result);
                    $('#modal_recortar_foto_perfil .modal-body center').remove();
                    $('#modal_recortar_foto_perfil .modal-body').append('<center><img class="imagen_recortar_perfil" src=""></center>');
                    $('.imagen_recortar_perfil').attr("src", origen.result);
                    $('.imagen_recortar_perfil').Jcrop({
                        aspectRatio: 1,
                        bgFade: true,
                        bgOpacity: 0.2,
                        setSelect: [100, 0, 400, 400],
                        onSelect: updateCoords,
                        onChange: updateCoords
                    });
                    $('#modal_recortar_foto_perfil').modal();
                    $('#src').val(origen.result);
                }
            };
            Lector.onerror = function(e) {
                console.log(e);
            };
            Lector.readAsDataURL(Archivos[0]);
        } else {
            $('#imagen_muy_grande').modal();
        }
    }
}
;
window.mostrarVistaPreviaPortada = function mostrarVistaPreviaPortada() {
    var Archivos, Lector;
    Archivos = $('.file_panoramica')[0].files;
    if (Archivos.length > 0) {
        if (Archivos[0].size < 300000) {
            Lector = new FileReader();
            Lector.onloadend = function(e) {
                var origen, tipo;
                origen = e.target;
                tipo = window.obtenerTipoMIME2(origen.result.substring(0, 30));
                if (tipo !== 'image/jpeg') {
                    $('#mal_formato').modal();
                } else {
                    if ($('.foto_panoramica').length == 0)
                        $('.cont_foto_panoramica').append('<img class="foto_panoramica" style="width: 100%">');
                    $('.foto_panoramica').attr('src', origen.result);
                    var img = new Image();
                    img.src = origen.result;
                    img.onload = function() {
                        arrastrarPortada();
                        $('.dropdown_portada .disabled').addClass('not_disabled')
                        $('.dropdown_portada .disabled').removeClass('disabled');
                        $('.guardar').click(function() {
                            var x1 = $(".foto_panoramica").position().left * -1;
                            var y1 = calcular_tope(img.height, $(".foto_panoramica").height());
                            var w1 = img.width;
                            var h1 = 0;
                            if ($(".foto_panoramica").height() > $(".cont_foto_panoramica").height()) {
                                h1 = Math.round(img.height / ($(".foto_panoramica").height() / 209)) + 20;
                            } else {
                                h1 = $(".foto_panoramica").height();
                            }
                            $.post("control_imagen_panoramica.php", {
                                imagen: origen.result,
                                type: tipo,
                                x: x1,
                                y: y1,
                                w: w1,
                                h: h1
                            },
                            function() {
                                $('.dropdown_portada .not_disabled').addClass('disabled');
                                $('.dropdown_portada .not_disabled').removeClass('not_disabled');
                                $(".arrastrador").remove();
                            });
                        });
                    };
                }
            };
            Lector.onerror = function(e) {
                console.log(e);
            };
            Lector.readAsDataURL(Archivos[0]);
        } else {
            $('#imagen_muy_grande').modal();
        }
    }
};
function mostrarVistaPreviaFotosExtras() {
    var Archivos = $('.file_extra')[0].files;
    var cant_fotos = $('.imagen2').length;
    if (Archivos.length <= 12 - cant_fotos) {
        for (var i = 0; i < Archivos.length; i++) {
            var file = Archivos[i];
            if (file.size < 300000) {
                var Lector1 = new FileReader();
                $(Lector1).load(function(e) {
                    var origen,
                            tipo;
                    origen = e.target;
                    tipo = window.obtenerTipoMIME2(origen.result.substring(0, 30));
                    if (tipo !== 'image/jpeg' && tipo !== 'image/gif') {
                        alert('El formato de imagen no es válido: debe seleccionar una imagen JPG, JPEG o GIF.');
                    } else {
                        $('#itemContainer').load("control_add_imagen.php", {
                            imagen: origen.result,
                            num: Math.round(Math.random() * 10000000000)
                        });
                    }
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

function calcular_tope(val1, val2) {
    var coeficiente = 0;
    var resultado = 0;
    if (val1 < val2) {
        coeficiente = val2 / val1;
        resultado = ($(".foto_panoramica").position().top * -1) / coeficiente;
    } else {
        coeficiente = val1 / val2;
        resultado = ($(".foto_panoramica").position().top * -1) * coeficiente;
    }
    return resultado;
}

window.obtenerTipoMIME2 = function obtenerTipoMIME2(cabecera) {
    return cabecera.replace(/data:([^;]+).*/, '\$1');
};
function eliminar_imagen(id) {
    destruir_modal();
    crear_modal(id);
    $('#eliminar_imagen').modal();
    $('#eliminarImagenDescp').text($('#eliminarDescp').val());
    $('.eliminarTitle1').text($('#eliminarTitle').val());
}

function destruir_modal() {
    if ($('#eliminar_imagen').length > 0) {
        $('#eliminar_imagen').remove();
    }
}

function agregarValueInput(id, cantidad) {
    $("input[name='cant" + id + "']").attr('value', cantidad);
}

function marcarCheckboxInfoAdicional(id) {
    $("input[name='checkInfo" + id + "']").attr('checked', 'true').attr('value', 'on');
}

function arrastrarPortada() {
    if ($(".arrastrador").length == 0)
        $('#contenedor2').append('<div class="col-lg-12 arrastrador"></div>');
    $(".arrastrador").css("cursor", "move");
    $(".arrastrador").mousedown(function(e) {
        var pos_actual_X = e.pageX;
        var pos_actual_Y = e.pageY;
        var position = $(".foto_panoramica").position();
        $("body").on("mousemove", ".arrastrador", function(d) {
            var pos_final_X = d.pageX;
            var pos_final_Y = d.pageY;
            var diferencia_X = pos_final_X - pos_actual_X;
            var diferencia_Y = pos_final_Y - pos_actual_Y;
            if (diferencia_X >= 0) {
                if ($(".foto_panoramica").position().left + diferencia_X <= 0)
                    $(".foto_panoramica").css("left", position.left + diferencia_X);
                else
                    $(".foto_panoramica").css("left", 0);
            } else {
                var ancho_foto = $(".foto_panoramica").width();
                var ancho_cont = $(".cont_foto_panoramica").width();
                var minimo = ancho_foto - ancho_cont;
                if ($(".foto_panoramica").position().left + diferencia_X >= -minimo) {

                    $(".foto_panoramica").css("left", position.left + diferencia_X);
                } else {
                    $(".foto_panoramica").css("left", -minimo);
                }
            }
            if (diferencia_Y >= 0) {
                if ($(".foto_panoramica").position().top + diferencia_Y <= 0)
                    $(".foto_panoramica").css("top", position.top + diferencia_Y);
                else
                    $(".foto_panoramica").css("top", 0);
            } else {
                var largo_foto = $(".foto_panoramica").height();
                var largo_cont = $(".cont_foto_panoramica").height();
                var minimo = largo_foto - largo_cont;
                if ($(".foto_panoramica").position().top + diferencia_Y >= -minimo) {

                    $(".foto_panoramica").css("top", position.top + diferencia_Y);
                } else {
                    $('#sp1').text($(".foto_panoramica").position().top + " + " + diferencia_Y + " >= " + minimo)
                    $(".foto_panoramica").css("top", -minimo);
                }
            }
        })
    });
    $("body").mouseup(function(e) {
        $("body").off("mousemove", ".arrastrador");
    });
}

function mostrar_servicios(){

}


function crear_modal(id) {
    $('#galeria_imagenes').append('<div class="modal fade" id="eliminar_imagen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">\n\
    <div class="modal-dialog"><div class="modal-content"><div class="modal-header">\n\
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>\n\
    <h4 class="modal-title  eliminarTitle1" id="myModalLabel"></h4></div>\n\
    <div class="modal-body" ><h4 id="eliminarImagenDescp"></h4></div>\n\
    <div class="modal-footer">\n\
    <form action="control_eliminar_imagen.php" method="post">\n\
    <input type="hidden" name="eliminar" value="' + id + '" />\n\
    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>\n\
    <button value="sss" id="btn_eliminar_imagen" type="submit" class="btn btn-primary">Aceptar</button>\n\
    </form></div></div></div></div>');
}


$(document).ready(function() {

    $('#itemContainer7').load("control_rental_services.php");
    $('#services_container').load("control_services.php");
    $('#itemContainer').load("control_add_imagen.php");
    $('#timepicker').timepicker({
        minuteStep: 15,
        showInputs: false,
        defaultTime: false
    });

    var nowTemp = new Date();
    var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

    var checkin = $('#reservationtime1').datepicker({
        format: 'mm-dd-yyyy',
        onRender: function(date) {
            return date.valueOf() < now.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function(ev) {
        if (ev.date.valueOf() > checkout.date.valueOf()) {
            var newDate = new Date(ev.date);
            newDate.setDate(newDate.getDate() + 1);
            checkout.setValue(newDate);
        }
        checkin.hide();
        $('#reservationtime2')[0].focus();
    }).data('datepicker');

    $('#change-language-en').click(function(){
        $.get('en');
    });
    $('#change-language-es').click(function(){
        $.get('es');
    });

    var checkout = $('#reservationtime2').datepicker({
        format: 'mm-dd-yyyy',
        onRender: function(date) {
            return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function(ev) {
        checkout.hide();
    }).data('datepicker');

    $('.file_extra').change(function(e) {
        mostrarVistaPreviaFotosExtras();
    });
    $('.file_panoramica').change(function() {
        window.mostrarVistaPreviaPortada();
    });
    $('.file_perfil').change(function(e) {
        mostrarVistaPreviaFotoPerfil();
    });

    $('#guardar_services').click(function()
    {
        var checked_list = {};
        var unchecked_list = {};
        $(".check-services").each(function(key,value){
            if(value.checked){
                checked_list[key] = value.id;
            }
            else{
                unchecked_list[key] = value.id;
            }
        })
        $.post('control_services.php',{
            selected_services:checked_list,
            unselected_services:unchecked_list
        })
        $('#itemContainer7').load("control_rental_services.php");
    
    })

    $('#guardar_caracteristicas').click(function() {
        $('#itemContainer5').load("control_caracteristicas_mod.php", {
            cant1: $('#cant1').val(),
            cant2: $('#cant2').val(),
            cant3: $('#cant3').val(),
            cant4: $('#cant4').val(),
            cant5: $('#cant5').val(),
            cant6: $('#cant6').val(),
            cant7: $('#cant7').val(),
            cant8: $('#cant8').val(),
            cant9: $('#cant9').val(),
            cant10: $('#cant10').val(),
            cant11: $('#cant11').val(),
            cant12: $('#cant12').val(),
            cant13: $('#cant13').val(),
            cant14: $('#cant14').val(),
            cant15: $('#cant15').val(),
            cant16: $('#cant16').val(),
            cant17: $('#cant17').val(),
            cant18: $('#cant18').val(),
            cant19: $('#cant19').val(),
            cant20: $('#cant20').val(),
            cant21: $('#cant21').val(),
            cant22: $('#cant22').val(),
            cant23: $('#cant23').val(),
            cant24: $('#cant24').val()
        });
    });

    $('#guardar_description').click(function(){
        //alert('estoy aqui');
        $('#description-by-user').load("control_description_mod.php",{
            description: $('#description-text').val()
        });
    });

    $("#itemContainer5").load("control_caracteristicas_mod.php");

    $('#editar_comodidades').click(function() {
        $('#comodidades #contenedor').load("modal_comodidades.php");
    });

    $('#guardar_comodidades').click(function() {
        $('#itemContainer3').load("control_info_adicional_mod.php", {
            checkInfo1: $('#checkInfo1').val(),
            checkInfo2: $('#checkInfo2').val(),
            checkInfo3: $('#checkInfo3').val(),
            checkInfo4: $('#checkInfo4').val(),
            checkInfo5: $('#checkInfo5').val(),
            checkInfo6: $('#checkInfo6').val(),
            checkInfo7: $('#checkInfo7').val(),
            checkInfo8: $('#checkInfo8').val(),
            checkInfo9: $('#checkInfo9').val(),
            checkInfo10: $('#checkInfo10').val(),
            checkInfo11: $('#checkInfo11').val(),
            checkInfo12: $('#checkInfo12').val(),
            checkInfo13: $('#checkInfo13').val(),
            checkInfo14: $('#checkInfo14').val(),
            checkInfo15: $('#checkInfo15').val()
        });
    });
    $("#itemContainer3").load("control_info_adicional_mod.php");

    $('input[type=checkbox]').click(function() {
        if ($(this).attr('value') == "off") {
            $(this).attr('value', 'on');
        } else {
            $(this).attr('value', 'off');
        }
    });
    $('#guardar_cambios').click(function() {
        $('#itemContainer4').load("control_rento_mod.php", {
            nombre_negocio: $('#nombre_negocio').val(),
            direccion: $('#direccion').val(),
            zona: $('#zona').val(),
            tipo_renta: $('#tipo_renta').val(),
            precio: $('#precio').val()
        });
    });
    $("#itemContainer4").load("control_rento_mod.php");

    $('#editar_boton').click(function() {
        $('#nombre_negocio').val($('#nombre1').val());
        $('#direccion').val($('#direccion1').val());
        $('#precio').val($('#precio1').val());
        $("#tipo_renta").load("modulos/modulos_utiles/tipo_renta.php");

        $("#provincia").load("modulos/modulos_utiles/provincias_mod.php", function() {
            $("#municipio").load("modulos/modulos_utiles/municipios_mod.php", {
                id_provincia: $("#provincia").val()
            }, function() {
                $("#zona").load("modulos/modulos_utiles/zonas_mod.php", {
                    id_municipio: convertidorPalabra($('#municipio').val())
                });
            });
        });
    });

    $("#provincia").change(function() {
        $("#municipio").load("modulos/modulos_utiles/municipios_mod.php", {
            id_provincia: $(this).val()
        });
        $("#zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: convertidorPalabra($(this).val())
        });
    });
    $("#municipio").change(function() {
        $("#zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: convertidorPalabra($(this).val())
        });
    });
    $('#boton_comentarios').click(function() {
        $("#itemContainer1").load("control_comentarios.php", {
            nombre_comentario: $('#nombre_comentario').val(),
            descripcion_comentario: $('#descripcion_comentario').val()
        });
    });
    $("#itemContainer1").load("control_comentarios.php");

    $('#btn_caracteristicas').click(function() {
        for (var i = 1; i <= 17; i++) {
            if ($("input[name='cant" + i + "']").val() > 0)
                $("input[name='cant" + i + "']").val($("#cantidad" + i + "").attr('value'));
            else
                $("input[name='cant" + i + "']").val(0);
            if ($("input[name='cant" + i + "']").val() == "")
                $("input[name='cant" + i + "']").val(0);
        }
    });

    $('#configuracion').click(function() {
        $('#nombreArrendatario1').val($('#nombreArrend').val());
        $('#apellidosArrendatario1').val($('#apellidosArrend').val());
        $('#telefonoFijo1').val($('#telefonoArrend').val());
        $('#telefonoMovil1').val($('#celularArrend').val());
        $('#correo3').val($('#correoArrend').val());
    });
    $('#aceptar_configuracion').click(function() {

        $.post("control_cuenta.php", {
            arrendador1: $('#nombreArrendatario1').val(),
            apellido1: $('#apellidosArrendatario1').val(),
            telf_casa1: $('#telefonoFijo1').val(),
            telf_movil1: $('#telefonoMovil1').val(),
            correo1: $('#correo3').val(),
            passActual: $('#contrasenaActual').val(),
            passNueva: $('#contrasenaNueva').val(),
            passRepetir: $('#contrasenaRepetir').val()
        }, function() {
            $('#nombreArrend').val($('#nombreArrendatario1').val());
            $('#apellidosArrend').val($('#apellidosArrendatario1').val());
            $('#telefonoArrend').val($('#telefonoFijo1').val());
            $('#celularArrend').val($('#telefonoMovil1').val());
            $('#correoArrend').val($('#correo3').val());
            $('#barra_usuario').text($('#nombreArrendatario1').val());
            $('#contrasenaActual').val("");
            $('#contrasenaNueva').val("");
            $('#contrasenaRepetir').val("");
            $('#contenedor_contrasenaActual').removeClass('has-success');
            $('#contenedorContrasenaNueva').removeClass('has-success');
            $('#contenedorContrasenaRepetir').removeClass('has-success');
        });
        $('#contrasenaActual').val("").removeClass('has-success').hide('slow');
        $('#contrasenaNueva').val("").removeClass('has-success').hide('slow');
        $('#contrasenaRepetir').val("").removeClass('has-success').hide('slow');
        $('#contenedor_contrasenaActual').removeClass('has-success');
        $('#contenedor_contrasenaNueva').removeClass('has-success');
        $('#contenedor_contrasenaRepetir').removeClass('.has-success');
    });

    $('#contrasenaActual').hide();
    $('#contrasenaNueva').hide();
    $('#contrasenaRepetir').hide();

    $('#cambiar_contrasena').click(function() {
        if ($('#flechaDerecha').hasClass('false')) {
            $('#flechaDerecha').removeClass('false').addClass("true");

            $('#contrasenaActual').show('normal', function() {
            });
        } else {
            if ($('#flechaDerecha').attr("class") == 'true') {
                $('#flechaDerecha').removeClass().addClass("false");

                $('#contrasenaActual').val('');
                $('#contenedor_contrasenaActual').removeClass('has-success');

                $('#contrasenaRepetir').hide('fast', function() {
                    $('#contrasenaNueva').hide('fast', function() {
                        $('#contrasenaActual').hide('fast');
                    });
                });
            }
        }
    });

    $('#cerrar_configuracion').click(function() {
        $('#flechaDerecha').removeClass().addClass("false");
        $('#contrasenaActual').val("").hide('slow');
        $('#contrasenaNueva').val("").hide('slow');
        $('#contrasenaRepetir').val("").hide('slow');
    });






    //***************************************

    $('#guardar_reservacion').click(function() {
        if ($('#nombreApellidos').val() == "" || $('#correo').val() == "" || $('#cantPersonas').val() == ""
                || $('#cantHabitaciones').val() == "" || $('#reservationtime1').val() == "" ||
                $('#reservationtime2').val() == "" || $('#pais').val() == "" ||
                $('#timepicker').val() == "") {
            verificarErroresPerfil();
        } else {
            $('#sending-request').show('slow');
            $.post("control_reservacion.php", {
                nombre_completo: $('#nombreApellidos').val(),
                correo: $('#correo').val(),
                cant_viajeros: $('#cantPersonas').val(),
                cant_habitaciones: $('#cantHabitaciones').val(),
                reservation1: $('#reservationtime1').val(),
                reservation2: $('#reservationtime2').val(),
                pais: $('#pais').val(),
                hora_llegada: $('#timepicker').val(),
                descripcion_reservacion: $('#descripcion_reservacion').val()
            }, function() {
                $('#progress-bar-div').css('display','none');
                $('#reservacion_enviada').show();
                $('#nombreApellidos').val("");
                $('#correo').val("");
                $('#cantPersonas').val("");
                $('#cantHabitaciones').val("");
                $('#reservationtime1').val("");
                $('#reservationtime2').val("");
//                $('#pais').val("");
                $('#timepicker').val("");
                $('#descripcion_reservacion').val("");
                $('#sending-request').delay(5000).hide('slow');
            });
        }
    });

    $('#cancelar_reservacion').click(function() {
        $('#nombreApellidos').val("");
        $('#correo').val("");
        $('#cantPersonas').val("");
        $('#cantHabitaciones').val("");
        $('#reservationtime1').val("");
        $('#reservationtime2').val("");        
        $('#timepicker').val("");
        $('#descripcion_reservacion').val("");
    });

    $("#pais").load("modulos/modulos_utiles/paises.php");
});


var validarCompleteCampo = $('#validarCompleteCampo').val();
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

