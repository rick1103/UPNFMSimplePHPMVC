<?php
require_once 'libs/dao.php';



function obtenerEventos_calendario()
    {
        $sqlstr = " SELECT evento_id, nombre_evento, fecha_evento, hora_evento, cat_evento, icono, nombre_invitado, apellido_invitado ";
        $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
        $sqlstr .=" INNER JOIN invitados ON eventos.id_inv=invitados.invitado_id order by fecha_evento asc ";
        return obtenerRegistros($sqlstr);
   }

   function obtenerInvitados()
   {
       $sqlstr = " SELECT * from invitados";
       return obtenerRegistros($sqlstr);
  }




// function obtenerAlmacenXId($almcod){
//     $sqlstr = "SELECT * from almacenes where almcod=%d";
//     return obtenerUnRegistro(
//         sprintf(
//             $sqlstr,
//             $almcod
//         )
//     );
// }

// function agregarAlmacen($almdsc,$almtip,$almest){
//     $sqlins = "INSERT INTO almacenes(almdsc, almtyp, almest) values ('%s', '%s', '%s')";

//     return ejecutarNonQuery(
//         sprintf(
//             $sqlins,
//             $almdsc,
//             $almtip,
//             $almest

//         )
//         );
// }

// function actualizarAlmacen($almdsc, $almt, $almest, $almcod){
//     $sqlupd = "UPDATE almacenes set almdsc='%s', almtyp='%s', almest='%s' where almcod=%d";

//     return ejecutarNonQuery(
//         sprintf(
//             $sqlupd,
//             $almdsc,
//             $almtyp,
//             $almest,
//             $almcod
//         )

//     );
// }

// function eliminarAlmacen($almcod){
//     $sqldel = "DELETE FROM almacenes where almcod where almcod=%d;";
//     return ejecutarNonQuery(
//         sprintf(
//             $sqldel,
//             $almcod
//         )

//     );

// }



?>
