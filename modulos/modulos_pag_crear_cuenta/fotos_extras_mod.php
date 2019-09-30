
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
    <div class="panel">
        <div class="panel-heading panel-heading-con-opciones">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-12 panel-title panel-title-con-opciones">
                      <?php require ("language_config.php");echo text_fotos_extras;?>                               
                </div> 
                <div class="col-lg-2 col-md-2 col-sm-1 col-xs-12 panel-opcion panel_opcion_fotos_extras">     
                    <INPUT class="file_extra" type="file" name="fotos_extras[]" size="1" accept="image/jpeg" multiple=""/>
                    <img class="" src = "imagenes/add.png">                   
                </div>  
            </div>
        </div>
        <div id="fotos-extras" class="panel-body" style="height: 350px;">
            <label id="fotos-extrasLabel" style="margin-bottom: 10px; margin-top: 0px; border-radius: 1px;" class="control-label bg-danger sr-only hidden-lg hidden-md"></label>
        </div>
    </div>
</div>


