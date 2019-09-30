<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuba Places Finder</title>
        <link href="imagenes/icon.png" rel="shortcut icon" type="image/png">

        <!--Bootstrab CSS-->
        <link href="bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="CSS/Base.css" rel="stylesheet" type="text/css" />  
        <!--Login CSS-->
        <link href="CSS/estilos_pag_login.css" rel="stylesheet" type="text/css" />  
        <!--Login CSS-->
        <link href="CSS/no_js.css" rel="stylesheet" type="text/css" />  
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55884282-1', 'auto');
  ga('send', 'pageview');

</script>
    </head>
    <body>   
        <div id="body_container" class="container">
            <nav class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">

                <?php
                require ("modulos/modulos_pag_login/header_mod.php");
                ?> 
                <div id="header" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mensaje">
                    <h4><?php
                        require("language_config.php");
                        echo nojavaScript1;
                        ?></h4>
                    <ul>
                        <li><?php
                            require("language_config.php");
                            echo nojavaScript2;
                            ?></li>
                        <li><?php
                            require("language_config.php");
                            echo nojavaScript3;
                            ?></li>
                    </ul>

                    <h5>
                        <b><?php
                            require("language_config.php");
                            echo nojavaScriptNota;
                            ?>: </b><?php
                        require("language_config.php");
                        echo nojavaScript4;
                        ?>
                    </h5>
                </div>
            </nav>
            <?php
            require ("modulos/modulos_pag_login/conexion_mod.php");
            require ("modulos/modulos_pag_login/footer_mod.php");
            require ("modulos/modulos_pag_login/barra_mod.php");
            ?>
        </div>  
    </body>
</html>

