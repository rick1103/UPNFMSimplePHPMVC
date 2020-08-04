<?php

require_once 'models/eventos.model.php';
function run(){
    $calendario = array();
    $calendario["eventos"] = " ";
    $calendario["eventos"] = obtenerEventos_calendario();
    
    foreach($calendario["eventos"] as $cal){
        $fecha = $cal["fecha_evento"];
        $fechas[$fecha][]=$cal;
    }
    $calendario['fechas']=array_keys( $fechas ); 

    
   
    //     $calendario["eventos"]=$fechas;

    renderizar("invitados",$calendario,"layout_eventos.view.tpl");
  }

  run();
?>