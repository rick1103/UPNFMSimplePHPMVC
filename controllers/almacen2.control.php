<?php
require_once "models/almacenes2.model.php";

function run()
{
    $arrDataView = array();
    $arrDataView["mode2"] = "INS";
    $arrDataView["modedsc2"] = "";
    $arrDataView["almcod2"] = "";
    $arrDataView["almdsc2"] = "";
    $arrDataView["almtip2"] = "WRH";
    $arrDataView["almest2"] = "ACT";
    $arrDataView["almtip_WRH2"] = "";
    $arrDataView["almtip_RTL2"] = "";
    $arrDataView["almtip_TRS2"] = "";
    $arrDataView["almest_PLN2"] = "";
    $arrDataView["almest_ACT2"] = "";
    $arrDataView["almest_INA2"] = "";

    $modeDSC2 = array(
        "INS"=>"Nuevo Almacen",
        "DSP"=>"Detalle de %s %s",
        "UPD" => "Actualizando %s %s",
        "DEL" => "Eliminando %s %s",
    );

    if(isset($_POST["btnGuardar2"])){
        $arrDataView["almdsc2"] = $_POST["almdsc2"];
        $arrDataView["almtip2"] = $_POST["almtip2"];
        $arrDataView["almest2"] = $_POST["almest2"];

        switch($arrDataView["mode"]){
            case "INS":
                agregarAlmacen2(
                    $arrDataView["almdsc2"],
                    $arrDataView["almtip2"],
                    $arrDataView["almest2"],
                );
                redirectWithMessage("Almacen Agregado Satisfactoriamente", "index.php?page=almacenes2");
            break;
            case "DEL":
                    eliminarAlmacen(
                        $arrDataView["almcod2"]
                    );
                    redirectWithMessage("Almacen Eliminado Satisfactoriamente", "index.php?page=almacenes2");
                    break;
            case "UPD":
                actualizarAlmacen2(
                    $arrDataView["almdsc2"],
                    $arrDataView["almtip2"],
                    $arrDataView["almest2"],
                    $arrDataView["almcod2"]
                );
                redirectWithMessage("Almacen Actualizado Satisfactoriamente", "index.php?page=almacenes2");
                    break;

        }
    }

    if(isset($modeDSC2[$arrDataView["mode2"]])){
        if($arrDataView["mode2"]!= 'INS'){
            $almtp2 = obtenerAlmacenXId2($arrDataView["almcod2"]);
            $arrDataView["almdsc2"]=$almtp2["almdsc2"];
            $arrDataView["almtip"] = $almtip2["almtip2"];
            $arrDataView["almest2"] = $almtp2["almest2"];
            $arrDataView["modedsc2"]= sprintf(
                $modeDSC2[$arrDataView["mode"]],
                $arrDataView["almcod2"],
                $arrDataView["almdsc2"]
            );
        }
            $arrDataView["almtip_WRH2"] = ($arrDataView["almtip2"] == "WRH") ? "selected" : "";
            $arrDataView["almtip_RTL2"] = ($arrDataView["almtip2"] == "RTL") ? "selected" : "";
            $arrDataView["almtip_TRS2"] = ($arrDataView["almtip2"] == "TRS") ? "selected" : "";
            $arrDataView["almest_PLN2"] = ($arrDataView["almest2"] == "PLN") ? "selected" : "";
            $arrDataView["almest_ACT2"] = ($arrDataView["almest2"] == "ACT") ? "selected" : "";
            $arrDataView["almest_INA2"] = ($arrDataView["almest2"] == "INA") ? "selected" : "";
        
    } else {
        redirectWithMessage("Error algo pasó", "index.php?page=almacenes2");
    }
    renderizar("almacen2", $arrDataView);
}
run();
?>
