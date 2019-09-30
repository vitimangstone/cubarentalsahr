
<div class="panel">
    <div class="panel-heading">       
        <h1 class="panel-title"><?php require ("language_config.php"); echo text_cliente_buscador;?></h1>
    </div>
    <div class="panel-body" style="padding-top: 3px; padding-bottom: 0px;">
        <div class="panel-group" >
            <div class="panel panel-default row">
                <div class="panel-heading">
                    <h1 class="panel-title">
                        <a style="color: black;" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <?php require ("language_config.php"); echo text_cliente_nombre_inmueble;?>
                        </a>
                    </h1>
                </div>               
                <div class="panel-body">
                    <div class="input-group">
                        <input type="text" class="form-control" id="buscar_por_nombre" NAME="nombre" placeholder="<?php require ("language_config.php"); echo text_cliente_escribe_nombre;?>">
                        <span class="input-group-btn">
                            <button id="buscar_nombre_boton" class="btn" style="margin-top: 5px;"><?php require ("language_config.php"); echo text_buscador_right;?></button>
                        </span>
                    </div>
                </div>
            </div>
            <div class="panel panel-default row">
                <div class="panel-heading">
                    <h1 class="panel-title">
                        <a style="color: black;" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            <?php require ("language_config.php"); echo text_cliente_id_web;?>
                        </a>
                    </h1>
                </div>               
                <div class="panel-body">
                    <div class="input-group">
                        <input type="number" class="form-control" id="buscar_por_id" NAME="identificador" placeholder="<?php require ("language_config.php"); echo text_cliente_escribe_numero;?>">
                        <span class="input-group-btn">
                            <button id="buscar_id_boton" class="btn" style="margin-top: 5px;"><?php require ("language_config.php"); echo text_buscador_right;?></button>
                        </span>                       
                    </div>
                </div>
            </div>

            <div class="panel panel-default row">
                <div class="panel-heading">
                    <h1 class="panel-title">
                        <a style="color: black;" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            <?php require ("language_config.php"); echo text_cliente_lugarRentaPrecio;?>
                        </a>
                    </h1>
                </div>

                <div class="panel-body">
                    <select id="tipo_renta" class="form-control">
                        <option><?php require ("language_config.php"); echo text_cliente_seleccioneRenta;?></option>
                    </select>

                    <SELECT id="provincia" class="form-control" NAME="provincia">
                        <option><?php require ("language_config.php"); echo text_cliente_provincia;?></option>
                    </SELECT>

                    <SELECT id="municipio" class="form-control"  NAME="municipio">
                        <OPTION><?php require ("language_config.php"); echo text_cliente_municipio;?></OPTION>
                    </SELECT>

                    <SELECT id="zona" class="form-control" NAME="zona">
                        <OPTION><?php require ("language_config.php"); echo text_cliente_zona;?></OPTION>
                    </SELECT>
                    <input class="col-lg-6 form-control" type="number" id="precio_min"  name="precio_min"  placeholder="<?php require ("language_config.php"); echo text_cliente_precioMinimo;?>">
                    <input class="col-lg-6 form-control" type="number" id="precio_max"  name="precio_max"  placeholder="<?php require ("language_config.php"); echo text_cliente_precioMaximo;?>">

                   </div>
            </div>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default row" >
                    <div class="panel-heading">
                        <h1 class="panel-title">
                            <a id="content-filters" class="btn col-xs-12">
                                <?php require ("language_config.php"); echo text_cliente_categorias;?>
                            </a>
                            <a style="display: none" id="content-filters-1" class="btn ">
                                <?php require ("language_config.php"); echo text_cliente_categorias_1;?>
                            </a>
                        </h1>
                    </div>
                    <div class="panel-body">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        <div class="row" id="all-filters" style="display: none">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="margin-bottom: 5px;">
<!--                                <input type="checkbox">-->
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_casas;?>" id="casas">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_1habitacion;?>" id="1_habitacion">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_3habitacion;?>" id="3_habitacion">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_conPiscina;?>" id="piscina">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_conGaraje;?>" id="garaje">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_economicas;?>" id="economicas">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_apartamentos;?>" id="independientes">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_2habitacion;?>" id="2_habitacion">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_mas3habitacion;?>" id="mas_3_habitacion">
                                <input class="btn btn-block" type="submit" value="<?php require ("language_config.php"); echo text_cliente_cercaPlaya;?>" id="playa">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_climatizadas;?>" id="climatizadas">
                                <input class="btn btn-block" type="button" value="<?php require ("language_config.php"); echo text_cliente_verTodos;?>" id="todos">
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <input id="boton_buscar" class="col-xs-7  btn " type="button" value="<?php require ("language_config.php"); echo text_buscador_right;?>" style="margin-top: 5px;">
            <a type="button" href="rentals" class="col-xs-4 btn btn-default col-xs-offset-1" style="margin-top: 5px;background: indianred"><?php require ("language_config.php"); echo text_limpiar;?></a>

        </div>
    </div>
</div>
