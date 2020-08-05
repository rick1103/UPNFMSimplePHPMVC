<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();


    $info["registrados"] = obtenerRegistrados();

    renderizar("m_registrados",$info);
  }

//   addCssRef("public/css/colorbox.css");
addJsRef("public/js/app.js");
  run();
?>