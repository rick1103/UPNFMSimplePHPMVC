<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();

    $info["invitados"] = obtenerInvitados();

    renderizar("invitados",$info,"layout_eventos.view.tpl");
  }

//   addCssRef("public/css/colorbox.css");
  addJsRef("public/js/jquery.js");
  addJsRef("public/js/jquery.colorbox-min.js");
  addJsRef("public/js/plugins.js");

  run();
?>