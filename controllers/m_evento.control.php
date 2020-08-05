<?php 

require_once 'models/eventos.model.php';
function run()
{
    $info = array();
    // Determinar vector
    $info["mode"] = "INS";
    // Determinar si vamos actualiza, borrar o solo ver
    $info["modedsc"] = "";
    // Que nos agregue el nombre del almacen
    $info["evento_id"] = "";
    // Variables de bases de datos
    $info["invitados"]=obtenerInvitados();
    $info["categoria"]=obtenerCategoriaEventos();


    $modeDsc = array(
      "INS"=>"Nuevo Almacén",
      "DSP" => "Detalle de %s %s",
      "UPD" => "Actualizando %s %s",
      "DEL" => "Eliminado %s %s",
    );

    if (isset($_GET["mode"])) {
        $info["mode"] = $_GET["mode"];
    }
    
    if (isset($_GET["evento_id"])) {
        $info["evento_id"] = intval($_GET["evento_id"]);
    }

    if (isset($_POST["btnCancelar"])) {
        header("location:index.php?page=m_eventos");
        die();
    }


    if (isset($_POST["btnGuardar"])) {
        $info["evento_id"] = $_POST["evento_id"];
        $info["nombre_evento"] = $_POST["nombre_evento"];
        $info["fecha_evento"] = $_POST["fecha_evento"];
        $info["hora_evento"] = $_POST["hora_evento"];
        $info["id_cat_evento"] = (int)$_POST["id_cat_evento"];
        $info["id_inv"] = (int)$_POST["id_inv"];
        $info["clave"] = $_POST["clave"];
        


        switch($info["mode"]){

            
        case "INS":
            agregarEvento(
                $info["nombre_evento"],
                $info["fecha_evento"],
                $info["hora_evento"],
                (int)$info["id_cat_evento"],
                (int)$info["id_inv"],
                $info["clave"]
            );
            // echo "<pre>";
            // var_dump($info);
            // echo "</pre>";
            redirectWithMessage("Almacén Agregado Satisfactoriamente", "index.php?page=m_eventos");
            break;
        case "UPD":
            actualizarEvento(
                $info["nombre_evento"],
                $info["fecha_evento"],
                $info["hora_evento"],
                (int)$info["id_cat_evento"],
                (int)$info["id_inv"],
                $info["clave"],
                $info["evento_id"]
            );
            redirectWithMessage("Almacén Actualizado Satisfactoriamente", "index.php?page=m_eventos");
            break;
        case "DEL":
            eliminarAlmacen(
                $info["evento_id"]
            );
            redirectWithMessage("Almacén Eliminado Satisfactoriamente", "index.php?page=m_eventos");
            break;
        }
    }
    // echo "<pre>";
    // print_r($info);
    // echo "</pre>";
    if (isset($modeDsc[$info["mode"]])) {
        if ($info["mode"] != 'INS') {
            $almtmp = obtenerEventoXId((int)$info["evento_id"]);
            $info["nombre_evento"] = $almtmp["nombre_evento"];
            $info["fecha_evento"] = $almtmp["fecha_evento"];
            $info["hora_evento"] = $almtmp["hora_evento"];
            $info["id_cat_evento"] = $almtmp["id_cat_evento"];
            $info["id_inv"] = $almtmp["id_inv"];
            $info["clave"] = $almtmp["clave"];


            // $info["modedsc"] = sprintf(
            //     $modeDsc[$info["mode"]],
            //     $info["evento_id"],
            //     $info["almdsc"]
            // );
        }
    } else {
        redirectWithMessage("Error algo pasó", "index.php?page=m_eventos");
    }

    renderizar("m_evento",$info);
}
// Correr el controlador
run();
