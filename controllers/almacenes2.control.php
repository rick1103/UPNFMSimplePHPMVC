<?php

require_once 'models/almacenes2.model.php';

function run(){
    $arrDataview2 = array();

    $arrDataview2["almacenes2"] = obtenerAlmacenes2();
    renderizar("almacenes2", $arrDataview2);
}

run();


?>