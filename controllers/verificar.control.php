<?php
require_once 'models/eventos.model.php';
function productos_json($boletos, $camisas=0, $etiquetas=0){
  $dias = array(0=>'un_dia', 1=>'pase_completo', 2=>'pase_2dias');
  $total_boletos= array_combine($dias, $boletos);
  // var_dump($total_boletos);
  $json = array();
  foreach($total_boletos as $key => $boletos){
    if((int) $boletos>0){
      $json[$key]=(int) $boletos;
    }
  }
  $camisas = (int) $camisas;
  if($camisas > 0){
    $json['camisas']=$camisas;
  }
  $camisas = (int) $camisas;
  if($camisas > 0){
    $json['camisas']=$camisas;
  }
  $etiquetas = (int) $etiquetas;
  if($etiquetas > 0){
    $json['etiquetas']=$etiquetas;
  }
  return json_encode($json);
}
function eventos_json($eventos){
  $eventos_json = array();
  foreach($eventos as $evento){
    $eventos_json['eventos'][]=$evento;
  }
  return json_encode($eventos_json); 
}
function run(){ 
  $info=array();
  if(isset($_POST['submit'])){
    $info['exitoso']= false;
    $info['error']= false;
    $info['nombre']= $_POST['nombre'];
    $info['apellido']=$_POST['apellido'];
    $info['email']=$_POST['email'];
    $info['regalo']=$_POST['regalo'];
    $info['total']=$_POST['total_pedido'];
    $info['fecha'] = date('Y-m-d H:i:s');
      //pedidos
    $info["boletos"]=$_POST['boletos'];
    $info['camisas']=$_POST['pedido_camisas'];
    $info['etiquetas']=$_POST['pedido_etiquetas'];
    $info['pedido']=productos_json($info['boletos'], $info['camisas'],$info['etiquetas']);
    //eventos
    $info['eventos']=$_POST['registro'];
    $info['registro']=eventos_json($info['eventos']);


    agregarUsuarioEvento($info['nombre'],$info['apellido'], $info['email'], $info['fecha'], $info['pedido'],$info['registro'],$info['regalo'], $info['total']);
    header('location:index.php?page=verificar&exitoso=1');
  }

  if(isset($_GET['exitoso'])){
    if($_GET['exitoso']=="1"){
      $info['exitoso']=true;
    }
    else{
      $info['error']=true;
    }
  }
  renderizar("verificar", $info,"layout_eventos.view.tpl");
}
  addJsRef('public/js/main.js');
  run();
?>
