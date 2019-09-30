
<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="panel">
        <div class="panel-heading">
            <h1 class="panel-title"><?php require ("language_config.php");echo text_inf_principal; ?></h1>
        </div>
        <div class="panel-body" style="min-height: 350px;">
            <div id="contenedor_nombre_negocio" class="form-group" style="margin-bottom: 0;">
                <label id="nombreLabel" for="nombre" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <input id="nombre" maxlength="25" type="text" class="form-control" placeholder="<?php require ("language_config.php");echo text_nombre_negocio_cuenta; ?> *" name="nombre_negocio">            
            </div> 

            <div id="contenedor_direccion" class="form-group" style="margin-bottom: 0;">
                <label id="direccionLabel" for="direccion" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <input id="direccion" type="text" class="form-control" placeholder="<?php require ("language_config.php");echo text_direccion_cuenta; ?> *"  name="direccion" >          
            </div>

            <div id="contenedor_tipo_renta" class="form-group" style="margin-bottom: 0;">
                <label id="tipo_rentaLabel" for="tipo_renta" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <select id="tipo_renta" class="tipo_renta form-control" NAME="tipo_casa">
                    <option><?php require ("language_config.php");echo text_cliente_seleccioneRenta; ?></option>
                </select>
            </div>

            <div id="contenedor_provincia" class="form-group" style="margin-bottom: 0;">
                <label id="provinciaLabel" for="provincia" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <select id="provincia" class="provincia form-control" NAME="provincia">
                    <option><?php require ("language_config.php");echo text_cliente_provincia; ?></option>
                </select>
            </div>

            <div id="contenedor_municipio" class="form-group" style="margin-bottom: 0;">
                <label id="municipioLabel" for="municipio" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <select id="municipio" class="municipio form-control"  NAME="municipio">
                    <option><?php require ("language_config.php");echo text_cliente_municipio; ?></option>                                                        
                </select>
            </div>

            <div id="contenedor_zona" class="form-group" style="margin-bottom: 0;">
                <label id="zonaLabel" for="zona" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <SELECT id="zona" class="zona form-control"  NAME="zona">
                    <option><?php require ("language_config.php");echo text_cliente_zona; ?></option>                                      
                </SELECT> 
            </div>

            <div id="contenedor_dormitorios" class="form-group" style="margin-bottom: 0;">
                <label id="dormitoriosLabel" for="dormitorios" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <input id="dormitorios" class="form-control" min="1" maxlength="2" type="number" placeholder="<?php require ("language_config.php");echo text_cant_hab; ?> *" name="dormitorios" >
            </div>

            <div id="contenedor_precio" class="form-group" style="margin-bottom: 0; margin-top: 5px;">
                <label id="precioLabel" for="precio" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <input id="precio" min="0" class="form-control"  maxlength="4" type="number"  placeholder="<?php require ("language_config.php");echo text_precio; ?> *" name="precio"  style="margin-top: 0;">
                    <span id="span_precio" class="input-group-addon">.00</span>
                </div>
            </div>
        </div>
    </div>
</div>