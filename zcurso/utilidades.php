<?php
    date_default_timezone_set('America/Guatemala');
    function salto($cant=1){
        for($i=0; $i<$cant; $i++)
        {
            echo "<br/>";
        }
       
    }

    function ih($indice, $cadena=""){  
        return $cadena="<h". $indice.">";   
        }

    function fh($indice, $cadena=""){  
        return $cadena="</h". $indice.">"; }
?>