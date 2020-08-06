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
    $info["ID_Registrado"] = "";
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
    
    if (isset($_GET["ID_Registrado"])) {
        $info["ID_Registrado"] = intval($_GET["ID_Registrado"]);
    }

    if (isset($_POST["btnCancelar"])) {
        header("location:index.php?page=m_registrados");
        die();
    }


    if (isset($_POST["btnGuardar"])) {
        $info["ID_Registrado"] = $_POST["ID_Registrado"];
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
                $info["ID_Registrado"]
            );
            redirectWithMessage("Almacén Actualizado Satisfactoriamente", "index.php?page=m_registrados");
            break;
        case "DEL":
            eliminarAlmacen(
                $info["ID_Registrado"]
            );
            redirectWithMessage("Almacén Eliminado Satisfactoriamente", "index.php?page=m_registrados");
            break;
        }
    }
    
    if (isset($modeDsc[$info["mode"]])) {
        if ($info["mode"] != 'INS') {
            $almtmp = obtenerRegistradoXId((int)$info["ID_Registrado"]);

            $info["nombre_registrado"] = $almtmp["nombre_registrado"];
            $info["apellido_registrado"] = $almtmp["apellido_registrado"];
            $info["email_registrado"] = $almtmp["email_registrado"];
            $info["fecha_registro"] = $almtmp["fecha_registro"];
            $info["pases_articulos"] = json_decode($almtmp["pases_articulos"],true);
            $info["talleres_registrados"] = json_decode($almtmp["talleres_registrados"],true);
            $info["total_pagado"] = $almtmp["total_pagado"];
            $info['un_dia']=$info["pases_articulos"]['un_dia'];
            $info['pase_completo']=$info["pases_articulos"]['pase_completo'];
            $info['pase_2dias']=$info["pases_articulos"]['pase_2dias'];
            $info['camisas']=$info["pases_articulos"]['camisas'];
            $info['etiquetas']=$info["pases_articulos"]['etiquetas'];


            // $info["modedsc"] = sprintf(
            //     $modeDsc[$info["mode"]],
            //     $info["ID_Registrado"],
            //     $info["almdsc"]
            // );
        }
    } else {
        redirectWithMessage("Error algo pasó", "index.php?page=m_registrados");
    }

    // echo "<pre>";
    // print_r($info);
    // echo "</pre>";

    renderizar("m_registrado",$info);
}
// Correr el controlador
run();
