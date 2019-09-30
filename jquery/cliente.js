$(document).ready(function() {

    var list = Object();
    var pos = 0;

    if($('#municipio-init').val() != undefined){

        cleanResults();
        $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php",{
            busqueda: "avanzada1",
            tipoRenta: $('#tipo_renta').val(),
            provincia: 1,
            municipio: $('#municipio-init').val(),
            zona: $('#zona').val(),
            precioMin: $('#precio_min').val(),
            precioMax: $('#precio_max').val()
        });
    }
    else{
        if($('#busqueda-ant').val() != undefined){
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php")
        }
        else {
            if($('#rentals-by-places').val()!=undefined){
                cleanResults();
                $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php",{
                    busqueda:"rentals-by-places",
                    cadena:$('#rentals-by-places').val()
                })
            }
            else{
                cleanResults();
                $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php")
            }

        }
    }


    $('.foto').mouseover(function() {
        $(this).stop().animate({
            height: "3cm",
            width: "3cm",
            marginTop: "-1%",
            marginLeft: "-1%",
            zIndex: "20"
        }, 200);

    });

    $('.foto').mouseout(function() {
        $(this).stop().animate({
            height: "2.15cm",
            width: "2.15cm",
            marginTop: "0%",
            marginLeft: "0%",
            zIndex: "10"
        }, 10);

    });


    /****************************************************************/
    /*                  Búsqueda por etiquetas                      */
    /****************************************************************/

    $("#casas").click(function() {
        var casas = $("#casas");
        if(casas.hasClass("selected_buttons")){
            casas.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            casas.addClass("selected_buttons");
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "casas"
            });
        }

    });

    $("#independientes").click(function() {
        var independientes = $('#independientes');
        if(independientes.hasClass("selected_buttons")){
            independientes.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            independientes.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "independientes"
            });
        }
    });

    $("#1_habitacion").click(function() {

        var una_habitacion = $('#1_habitacion');
        if(una_habitacion.hasClass("selected_buttons")){
            una_habitacion.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            una_habitacion.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "1_habitacion"
            });
        }
    });

    $("#2_habitacion").click(function() {
        var dos_habitacion = $('#2_habitacion');
        if(dos_habitacion.hasClass("selected_buttons")){
            dos_habitacion.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            dos_habitacion.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "2_habitacion"
            });
        }
    });

    $("#3_habitacion").click(function() {
        var tres_habitacion = $('#3_habitacion');
        if(tres_habitacion.hasClass("selected_buttons")){
            tres_habitacion.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            tres_habitacion.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "3_habitacion"
            });
        }
    });

    $("#mas_3_habitacion").click(function() {
        var mas_3_habitacion = $('#mas_3_habitacion');
        if(mas_3_habitacion.hasClass("selected_buttons")){
            mas_3_habitacion.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            mas_3_habitacion.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "mas_3_habitacion"
            });
        }
    });

    $("#piscina").click(function() {
        var piscina = $('#piscina');
        if(piscina.hasClass("selected_buttons")){
            piscina.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            piscina.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "piscina"
            });
        }
    });

    $("#playa").click(function() {
        var playa = $('#playa');
        if(playa.hasClass("selected_buttons")){
            playa.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            playa.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "playa"
            });
        }
    });

    $("#garaje").click(function() {
        var garaje = $('#garaje');
        if(garaje.hasClass("selected_buttons")){
            garaje.removeClass("selected_buttons");
            listingSelectedItems();

        }
        else{
            garaje.addClass("selected_buttons");
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "garaje"
            });

        }
        if($(".selected_buttons").length ==1) {
         }
        else {
       }
    });

    $("#climatizadas").click(function() {
        var climatizadas = $('#climatizadas');
        if(climatizadas.hasClass("selected_buttons")){
            climatizadas.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            climatizadas.addClass("selected_buttons");
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "climatizadas"
            });
        }
    });

    $("#economicas").click(function() {
        var economicas = $('#economicas');
        if(economicas.hasClass("selected_buttons")){
            economicas.removeClass("selected_buttons");
            listingSelectedItems();
        }
        else{
            economicas.addClass("selected_buttons")
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: "economicas"
            });
        }

    });

    $("#todos").click(function() {
        cleanResults();
    });

    function cleanResults(){
        $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
            busqueda:'limpiar'
        });
    }

    /****************************************************************/
    /*               Búsqueda por nombre de negocio                 */
    /****************************************************************/

    $("#buscar_nombre_boton").click(function() {
        cleanResults();
        var value = $('#buscar_por_nombre').val();
        $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
            busqueda: "nombre_negocio",
            valor: value
        });
    });

    /****************************************************************/
    /*                 Búsqueda por id de negocio                   */
    /****************************************************************/

    $("#buscar_id_boton").click(function() {
        cleanResults();
        var value = $('#buscar_por_id').val();
        $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
            busqueda: "identificador",
            valor: value
        });
    });

    /****************************************************************/
    /*            Búsqueda por lugar, tipo de renta y precio        */
    /****************************************************************/

    $('#boton_buscar').click(function() {
        $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
            busqueda: "avanzada1",
            tipoRenta: $('#tipo_renta').val(),
            provincia: $('#provincia').val(),
            municipio: $('#municipio').val(),
            zona: $('#zona').val(),
            precioMin: $('#precio_min').val(),
            precioMax: $('#precio_max').val()
        });
    });

    $("#provincia").change(function() {
        $("#municipio").load("modulos/modulos_utiles/municipios_mod.php", {
            id_provincia: $(this).val()
        });
        $("#zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: $(this).val()
        });
    });

    $("#municipio").change(function() {
        $("#zona").load("modulos/modulos_utiles/zonas_mod.php", {
            id_municipio: convertidorPalabra($(this).val())
        });
    });

    $("#provincia").load("modulos/modulos_utiles/provincias_mod.php");

    $("#tipo_renta").load("modulos/modulos_utiles/tipo_renta.php");

    /******************************************************************/
    /*           Calculando cantidad encontrada                       */
    /******************************************************************/

    function listingSelectedItems() {
        cleanResults();
        ($(".selected_buttons").each(function(key,value){
            console.log(value.id);
            $("#itemContainer").load("modulos/modulos_pag_cliente/negocios.php", {
                busqueda: value.id
            });
        }));

    }


});


      