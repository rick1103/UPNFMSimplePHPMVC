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
       $sqlstr = " SELECT * from invitados ;";
       return obtenerRegistros($sqlstr);
  }

  function obtenerCategoriaEventos()
   {
       $sqlstr = " SELECT * from categoria_evento ;";
       return obtenerRegistros($sqlstr);
  }
  function obtenerresumentaller()
  {
      $sqlstr = " SELECT evento_id, nombre_evento, fecha_evento, hora_evento, cat_evento, icono, nombre_invitado, apellido_invitado ";
      $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
      $sqlstr .=" INNER JOIN invitados ON eventos.id_inv=invitados.invitado_id where cat_evento='talleres' order by RAND() LIMIT 2;";
      return obtenerRegistros($sqlstr);
 }
 function obtenerresumenseminario()
  {
      $sqlstr = " SELECT evento_id, nombre_evento, fecha_evento, hora_evento, cat_evento, icono, nombre_invitado, apellido_invitado ";
      $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
      $sqlstr .=" INNER JOIN invitados ON eventos.id_inv=invitados.invitado_id where cat_evento='seminario' order by RAND() LIMIT 2;";
      return obtenerRegistros($sqlstr);
 }
 function obtenerresumenconferencias()
 {
     $sqlstr = " SELECT evento_id, nombre_evento, fecha_evento, hora_evento, cat_evento, icono, nombre_invitado, apellido_invitado ";
     $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
     $sqlstr .=" INNER JOIN invitados ON eventos.id_inv=invitados.invitado_id where cat_evento='conferencias' order by RAND() LIMIT 2;";
     return obtenerRegistros($sqlstr);
}




function agregarUsuarioEvento($nom,$ape,$email,$fec,$pas,$tal,$reg, $total){
    $sqlins = "INSERT INTO registrados (nombre_registrado, apellido_registrado, email_registrado, fecha_registro, pases_articulos, talleres_registrados, regalo, total_pagado) values ('%s', '%s', '%s','%s', '%s', '%s', %d , '%s')";

    return ejecutarNonQuery(
        sprintf(
            $sqlins,
            $nom,
            $ape,
            $email,
            $fec,
            $pas,
            $tal,
            $reg,
            $total
        )
        );
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
