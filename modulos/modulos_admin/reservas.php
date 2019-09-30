<?php
require ("../modulos_pag_login/conexion_mod.php");
conexion();
?>
<html lang="en">
    <?php
    require ('./head.php');
    ?>
    <body>
        <div id="body_container" class="container">
            <?php
            require ('./navbar.php');
            ?><br><br><br><br>

            <div class="panel panel-default">
                <div style="background-color: #B81900;border-top-left-radius: 5px;border-top-right-radius: 5px;" class="panel-heading">
                    <h3 style="color: white;" class="panel-title">Reservas</h3>
                </div>
                <div id="itemContainer6" class="panel-body">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Casa</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php
                            $reservas = mostrar_reservas();
                            while ($row = mysqli_fetch_array($reservas)) {

                                $negocioNombre = mostrar_nombre_negocio($row['id_negocio']);
                                echo ' 
                            <tr style="cursor:pointer;" data-toggle="modal" data-target="#descripcion' . $row['id_reservacion'] . '"> 
                            <td class="text-center">' . $row['id_reservacion'] . '</td>
                            <td class="text-center">' . $row['nombre_completo'] . '</td>
                            <td class="text-center">' . $negocioNombre . '</td> 
                            </tr>';

                                echo '  <div style="background-color: rgba(0, 0, 0, 0.9);" class="modal fade" id="descripcion' . $row['id_reservacion'] . '" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-md">
                                <div class="modal-content">
                                    <div style="background-color: #B81900;border-top-left-radius: 5px;border-top-right-radius: 5px;color:white;" class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Reserva de ' . $row['nombre_completo'] . ' </h4>
                                    </div>
                                    <div class="modal-body"> 
                                    <div class="row">
                                    <div class="col-md-6">
                                    <p class="text-center">' . $row['nombre_completo'] . '</p>
                                    </div>
                                    <div class="col-md-6">
                                    <p class="text-center">' . $row['correo'] . '</p>
                                    </div>
                                    </div>
                                     
                                    </div>
                                    <div class="modal-footer">
                                        <button style="border-color: #B81900;background-color: #B81900;color: #FFF;" type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                    </div>

                                </div>
                            </div>';
                            }
                            ?>

                        </tbody>
                    </table>
                </div>           
            </div>

            <?php
            require ('./scripts.php');
            ?>
        </div>

    </body>
</html>


