<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();

    $info["invitados"] = obtenerInvitados();

    renderizar("m_invitados",$info);
  }

//   addCssRef("public/css/colorbox.css");
addJsRef("public/js/app.js");
  run();
?>