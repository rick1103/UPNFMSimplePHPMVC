<?php
function run(){
    renderizar("eventos",Array(),"layout_eventos.view.tpl");
  }

 
  addJsRef('public/js/jquery.js');
  addJsRef('public/js/plugins.js');
  run();
?>