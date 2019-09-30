<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuba Places Finder | Admin</title>
        <link href="../imagenes/icon.png" rel="shortcut icon" type="image/png">
        <!--Bootstrab CSS-->
        <link href="../bootstrap-3.1.1/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Base CSS-->
        <link href="../CSS/style.css" rel="stylesheet" type="text/css" /> 
        <!--Pagina login CSS-->
        <!--<link href="CSS/estilos_pag_login.css" rel="stylesheet" type="text/css" />-->       

        <NOSCRIPT>
        <META HTTP-EQUIV="Refresh" CONTENT="0;URL=nojavascript.php">
        </NOSCRIPT>
        <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-55884282-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body>

        <div id="wrapper">

            <!--SLIDE-IN ICONS-->
            <div class="user-icon"></div>
            <div class="pass-icon"></div>
            <!--END SLIDE-IN ICONS-->

            <!--LOGIN FORM-->
            <form name="login-form" class="login-form" action="../modulos/modulos_admin/adminReservas.php" method="post">

                <!--HEADER-->
                <div class="header">
                    <img class="img-responsive" src="../imagenes/logo.png" />
                </div>
                <!--END HEADER-->

                <!--CONTENT-->
                <div class="content">
                    <!--USERNAME--><input name="username" type="text" class="input username" value="Nombre de usuario" onfocus="this.value = ''" /><!--END USERNAME-->
                    <!--PASSWORD--><input name="password" type="password" class="input password" value="Contraseña" onfocus="this.value = ''" /><!--END PASSWORD-->
                </div>
                <!--END CONTENT-->

                <!--FOOTER-->
                <div class="footer">
                    <center><input type="submit" name="submit" value="Acceder" class="button" /></center>
                </div>
                <!--END FOOTER-->

            </form>
            <!--END LOGIN FORM-->

        </div>
        <!--END WRAPPER-->

        <!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

        <!--Jquery JS-->
        <script src="../jquery/jquery-2.0.0.min.js" type="text/javascript"></script> 
        <!--Bootstrab JS-->
        <script src="../bootstrap-3.1.1/js/bootstrap.js" type="text/javascript"></script>

        <script type="text/javascript">
        $(document).ready(function() {
            $(".username").focus(function() {
                $(".user-icon").css("left", "-48px");
            });
            $(".username").blur(function() {
                $(".user-icon").css("left", "0px");
            });

            $(".password").focus(function() {
                $(".pass-icon").css("left", "-48px");
            });
            $(".password").blur(function() {
                $(".pass-icon").css("left", "0px");
            });

        });
        </script>

    </body>
</html>
