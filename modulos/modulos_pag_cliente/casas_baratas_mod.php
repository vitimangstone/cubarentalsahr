<div class="casas_lujosas">
<!--    <div class="encabezado2">
        <span class="texto_encabezado">Las 10 casas más baratas de Pa'Qba</span>
    </div>-->
    <table class="contenedor_img_lujosas">
        <tr>
            <?php
            $negocios = mostrar_negocios_baratos();
            while ($row = mysqli_fetch_array($negocios)) {
                echo "<td>";
                echo "<a href = \"perfil.php?var=" . $row['id_negocio'] . "\">";
                echo "<div class =\"cont_img1\">";
                echo "<img class = \"foto\" src = \"control_imagen_paginado.php?id=" . $row['id_negocio'] . "\">";
                echo "</div>";
                echo "</a>";
                echo "</td>";
            }
            ?>
        </tr>
    </table>
</div>