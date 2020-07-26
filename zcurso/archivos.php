<?php
    require_once "utilidades.php";
    $archivo = file_get_contents('archivo1.txt');
    echo ih(1)."Este es un txt: ".$archivo.fh(1);
    salto(2);

    echo ih(1)."La funcion readfile() devuelve el numero de caracteres de un archivo".fh(2);
    $num = readfile('archivo1.txt');
    echo "El numero de caracteres del archivo es: ".$num;
    salto(4);


    echo ih(1)."La Funcion file permite leer el contenido de un archivo y devuelve el contenido en un vector fila por fila".fh(1);
    $tabla = file('archivo1.txt');
    foreach ($tabla as $linea){
        echo ih(2).$linea.fh(2);
    }
    salto(2);


    $cont = " LINEA AGREGADA DESDE CODIGO";
    file_put_contents('archivo1.txt', $cont);
    echo ih(1)."file_put_contents('archivo', variable) para subir".file_get_contents('archivo1.txt').fh(1);


?>