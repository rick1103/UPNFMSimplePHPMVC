<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();


    $info["registrados"] = obtenerRegistrados();
    // echo "<pre>";
    // echo var_dump($info);
    // echo "</pre>";

    renderizar("m_registrados",$info);
  }

//   addCssRef("public/css/colorbox.css");
addJsRef("public/js/app.js");
  run();
?>