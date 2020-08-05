
<?php

require_once 'models/eventos.model.php';
function run(){
    $info = array();

    $info["invitados"] = obtenerInvitados();
    $info["categoria_evento"]=obtenerCategoriaEventos();
    $info["resumen_taller"]=obtenerresumentaller();
    $info["resumen_seminario"]=obtenerresumenseminario();
    $info["resumen_conferencias"]=obtenerresumenconferencias();

    renderizar("eventos",$info,"layout_eventos.view.tpl");
  }
  
//   addCssRef("public/css/colorbox.css");
  addJsRef("public/js/jquery.js");
  addJsRef("public/js/jquery.colorbox-min.js");
  addJsRef("public/js/plugins.js");

  run();
?>