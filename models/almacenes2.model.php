<?php
require_once 'libs/dao.php';



function obtenerAlmacenes2()
    {
        $sqlstr2 = "SELECT * from almacenes2;";
        return obtenerRegistros($sqlstr2);

    }

function obtenerAlmacenXId2($almcod2){
    $sqlstr2 = "SELECT * from almacenes2 where almcod2=%d";
    return obtenerUnRegistro(
        sprintf(
            $sqlstr2,
            $almcod2
        )
    );
}

function agregarAlmacen2($almdsc2,$almtip2,$almest2){
    $sqlins2 = "INSERT INTO almacenes(almdsc2, almtyp2, almest2) values ('%s', '%s', '%s')";

    return ejecutarNonQuery(
        sprintf(
            $sqlins2,
            $almdsc2,
            $almtip2,
            $almest2

        )
        );
}

function actualizarAlmacen2($almdsc2, $almt2, $almest2, $almcod2){
    $sqlupd2 = "UPDATE almacenes2 set almdsc2='%s', almtyp2='%s', almest2='%s' where almcod2=%d";

    return ejecutarNonQuery(
        sprintf(
            $sqlupd2,
            $almdsc2,
            $almtyp2,
            $almest2,
            $almcod2
        )

    );
}

function eliminarAlmacen($almcod2){
    $sqldel = "DELETE FROM almacenes where almcod where almcod=%d;";
    return ejecutarNonQuery(
        sprintf(
            $sqldel,
            $almcod2
        )

    );

}



?>




