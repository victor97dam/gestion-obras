
<?php
$btn_dw = (isset($tipo_presupuesto) && $tipo_presupuesto == 'C') ? ' btn-warning ' : ' btn-dark ';
 echo "<div class='btn-group'>";
if (isset($estado_presupuesto) && $estado_presupuesto != null) {   
   
    echo "<button class='btn $btn_dw text-center' disabled='disabled'>";
    if ($estado_presupuesto == 'A') echo '<i class="fas fa-lock-open" ></i>';
    if ($estado_presupuesto == 'F') echo '<i class="fas fa-lock" ></i>';
    echo "</button>";
}
if (isset($titulo) && $titulo != null) {  
    
echo "<button class='btn $btn_dw text-center text-uppercase' disabled='disabled'>$titulo ";
//if (isset($action)) echo " : $action";
echo "</button>";
}
echo "</div>";
if (isset($obra_activa) && $obra_activa != null) {   
    echo "<div class='btn-group'><button class='btn btn-light text-center' disabled='disabled'><strong>$obra_activa</strong></button>";
    echo "<button class='btn btn-light text-center' disabled='disabled'>";
    if (isset($estado_obra_activa) && $estado_obra_activa == 'A') echo '<i class="fas fa-lock-open" ></i>';
    if (isset($estado_obra_activa) && $estado_obra_activa == 'F') echo '<i class="fas fa-lock" ></i>';
    echo "</button>";
    echo "</div>";
}


?>