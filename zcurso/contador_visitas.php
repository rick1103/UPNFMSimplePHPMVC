<?php
require_once 'utilidades.php';

$archivo=fopen('visitas.txt','r+');
$visita = fgets($archivo);

if($visita==""){
    $visita= 0;
}
$visita++;

echo ih(1)."Esta pagina ha sido visitada ".$visita." veces".fh(1);

fseek($archivo, 0);//va al principio del archivo

fputs($archivo, $visita);
fclose($archivo);



?>