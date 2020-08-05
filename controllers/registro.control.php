<?php
require_once 'models/eventos.model.php';
function run(){

  $info = array();
    $info["fecha"] = " ";
    $info["fecha"] = obtenerFechas();
    
    foreach($info["fecha"] as $cal){
        $fecha = $cal["fecha_evento"];
        $fechas[$fecha][]=$cal;
    }

    $info['fecha']=array_keys( $fechas );
    $info['cat']=obtenerCategoriaEventos();
    // echo "<pre>";
    // print_r($info['fecha']);
    // print_r($info['cat']);
    // echo "</pre>";
    
    $dias = array(
      0=> "vi",
      1=>"sa",
      2=> "do"
    );
    // for($i=0;$i<3;$i++){
    //   for($j=0;$j<3;$j++){
    //    $info[$dias[$i].$info['cat'][$j]['cat_evento']]=obtenerCategoriaporDiayEvento($info['fecha'][$i],$info['cat'][$j]['cat_evento']);
      
    //   }
    // }

    // echo "<pre>";
  
    // print_r($info);
    // echo "</pre>";

    $info= array();
    renderizar("registro",Array(),"layout_eventos.view.tpl");
  }

  addJsRef('public/js/main.js');
  run();
?>