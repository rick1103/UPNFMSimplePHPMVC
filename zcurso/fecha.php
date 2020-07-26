<?php
   require_once "utilidades.php";
   
// Se mide en segundos desde que se creo UNIX 1 DE ENERO DE 1970 
// Tambien se llama TIMESTAMP UNIX


    echo "<h1>Tiempo en formato Timestamp: ".time()."</h1>";
    salto();
    echo ih(1).date('d/m/y h:i:s').fh(1);

    salto();

    $proximaSemana=time()+(7*24*60*60);

    echo ih(1)."Hoy es ".date('d/m/y')." y dentro de una semana sera: ".date('d/m/y', $proximaSemana).fh(1);

    salto();
    echo ih(1)."Devuelve vector de DATE()".fh(1);
    print_r(getdate());


    

?>
