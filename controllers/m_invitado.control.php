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
    $info["invitado_id"] = "";
    // Variables de bases de datos


    $modeDsc = array(
      "INS"=>"Nuevo Almacén",
      "DSP" => "Detalle de %s %s",
      "UPD" => "Actualizando %s %s",
      "DEL" => "Eliminado %s %s",
    );

    if (isset($_GET["mode"])) {
        $info["mode"] = $_GET["mode"];
    }
    
    if (isset($_GET["invitado_id"])) {
        $info["invitado_id"] = intval($_GET["invitado_id"]);
    }

    if (isset($_POST["btnCancelar"])) {
        header("location:index.php?page=m_invitados");
        die();
    }

    if (isset($_POST["btnGuardar"])) {
        $info["nombre_invitado"] = $_POST["nombre_invitado"];
        $info["apellido_invitado"] = $_POST["apellido_invitado"];
        $info["descripcion"] = $_POST["descripcion"];
        $info["url_imagen"] = $_POST["url_imagen"];

        switch($info["mode"]){
        case "INS":
            agregarInvitado(
                $info["nombre_invitado"],
                $info["apellido_invitado"],
                $info["descripcion"],
                $info["url_imagen"] 
            );
            redirectWithMessage("Almacén Agregado Satisfactoriamente", "index.php?page=m_invitados");
            break;
        case "UPD":
            actualizarInvitado(
                $info["nombre_invitado"],
                $info["apellido_invitado"],
                $info["descripcion"],
                $info["url_imagen"],
                $info["invitado_id"]
            );
            redirectWithMessage("Almacén Actualizado Satisfactoriamente", "index.php?page=m_invitados");
            break;
        case "DEL":
            eliminarAlmacen(
                $info["invitado_id"]
            );
            redirectWithMessage("Almacén Eliminado Satisfactoriamente", "index.php?page=m_invitados");
            break;
        }
    }
    // echo "<pre>";
    // print_r($info);
    // echo "</pre>";
    if (isset($modeDsc[$info["mode"]])) {
        if ($info["mode"] != 'INS') {
            $almtmp = obtenerInvitadoXId($info["invitado_id"]);
            $info["nombre_invitado"] = $almtmp["nombre_invitado"];
            $info["apellido_invitado"] = $almtmp["apellido_invitado"];
            $info["descripcion"] = $almtmp["descripcion"];
            $info["url_imagen"] = $almtmp["url_imagen"];

            $info["modedsc"] = sprintf(
                $modeDsc[$info["mode"]],
                $info["invitado_id"],
                $info["almdsc"]
            );
        }
    } else {
        redirectWithMessage("Error algo pasó", "index.php?page=m_invitados");
    }

    renderizar("m_invitado",$info);
}
// Correr el controlador
run();
