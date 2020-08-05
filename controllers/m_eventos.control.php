<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();

    $info["eventos"] = obtenerEventos_calendario();

    renderizar("m_eventos",$info);
  }

//   addCssRef("public/css/colorbox.css");
addJsRef("public/js/app.js");
  run();
?>