<?php

  if(isset($_POST['submit'])){
    echo "<pre>";
    var_dump($_POST);
    echo "</pre>";
    unset($_POST['submit']);
  }





function run(){

    $info= array();
    renderizar("registro",Array(),"layout_eventos.view.tpl");
  }

  addJsRef('public/js/main.js');
  run();
?>