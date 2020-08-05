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
    $info["id_registrado"] = "";
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
    
    if (isset($_GET["id_registrado"])) {
        $info["id_registrado"] = intval($_GET["id_registrado"]);
    }

    if (isset($_POST["btnCancelar"])) {
        header("location:index.php?page=m_registrados");
        die();
    }


    if (isset($_POST["btnGuardar"])) {
        $info["id_registrado"] = $_POST["id_registrado"];
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
            redirectWithMessage("Almacén Agregado Satisfactoriamente", "index.php?page=m_registrados");
            break;
        case "UPD":
            actualizarEvento(
                $info["nombre_registrado"],
                $info["apellido_registrado"],
                $info["email_registrado"],
                $info["fecha_registro"],
                $info["pases_articulos"],
                $info["talleres_registrado"],
                $info["tatal_pagado"],
                $info["id_registrado"]
            );
            redirectWithMessage("Almacén Actualizado Satisfactoriamente", "index.php?page=m_registrados");
            break;
        case "DEL":
            eliminarAlmacen(
                $info["id_registrado"]
            );
            redirectWithMessage("Almacén Eliminado Satisfactoriamente", "index.php?page=m_registrados");
            break;
        }
    }
    echo "<pre>";
    print_r($info);
    echo "</pre>";
    if (isset($modeDsc[$info["mode"]])) {
        if ($info["mode"] != 'INS') {
            $almtmp = obtenerRegistradoXId((int)$info["id_registrado"]);
            $info["nombre_registrado"] = $almtmp["nombre_registrado"];
            $info["apellido_registrado"] = $almtmp["apellido_registrado"];
            $info["email_registrado"] = $almtmp["email_registrado"];
            $info["fecha_registro"] = $almtmp["fecha_registro"];
            $info["pases_articulos"] = $almtmp["pases_articulos"];
            $info["talleres_registrado"] = $almtmp["talleres_registrado"];
            $info["tatal_pagado"] = $almtmp["tatal_pagado"];


            // $info["modedsc"] = sprintf(
            //     $modeDsc[$info["mode"]],
            //     $info["id_registrado"],
            //     $info["almdsc"]
            // );
        }
    } else {
        redirectWithMessage("Error algo pasó", "index.php?page=m_registrados");
    }

    renderizar("m_evento",$info);
}
// Correr el controlador
run();
