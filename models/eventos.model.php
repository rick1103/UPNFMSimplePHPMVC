<?php
require_once 'libs/dao.php';

function obtenerFechas()
    {
        $sqlstr = " SELECT fecha_evento ";
        $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
        $sqlstr .=" INNER JOIN invitados ON eventos.id_inv=invitados.invitado_id order by fecha_evento asc;";
        return obtenerRegistros($sqlstr);
   }

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
  function obtenerRegistrados()
   {

    
       $sqlstr = " SELECT ID_Registrado, nombre_registrado, apellido_registrado, email_registrado, fecha_registro, pases_articulos, talleres_registrados, nombre_regalo, total_pagado FROM registrados INNER JOIN regalos ON registrados.regalo=regalos.id_regalo ;";
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



function agregarInvitado($nom,$ape,$desc,$url){
    $sqlins = "INSERT INTO invitados (nombre_invitado, apellido_invitado, descripcion, url_imagen) values ('%s', '%s', '%s','%s' )";

    return ejecutarNonQuery(
        sprintf(
            $sqlins,
            $nom,
            $ape,
            $desc,
            $url
        )
        );
}
function agregarEvento($nom_e,$fech,$hora,$id_cat,$id_inv, $clave){
     
    $sqlins = "INSERT INTO eventos (nombre_evento, fecha_evento, hora_evento, id_cat_evento, id_inv, clave) values ('%s', '%s', '%s', %d, %d,'%s' )";

    return ejecutarNonQuery(
        sprintf(
            $sqlins,
            $nom_e,
            $fech,
            $hora,
            $id_cat,
            $id_inv, 
            $clave
        )
        );
}



function obtenerCategoriaporDiayEvento($fecha, $categoria){
    $sqlstr = " SELECT nombre_evento, hora_evento ";
        $sqlstr .=" from eventos INNER JOIN categoria_evento ON eventos.id_cat_evento = categoria_evento.id_categoria ";
        $sqlstr .=" where eventos.fecha_evento = '%s' and categoria_evento.cat_evento='%s' ";
    return obtenerRegistros(
        sprintf(
            $sqlstr,
            $fecha,
            $categoria
        )
    );
}



function actualizarInvitado($almdsc, $almt, $almest, $cuarto, $almcod){
    $sqlupd = "UPDATE invitados set nombre_invitado='%s', apellido_invitado='%s', descripcion='%s', url_imagen='%s' where invitado_id=%d";

    return ejecutarNonQuery(
        sprintf(
            $sqlupd,
            $almdsc,
            $almt,
            $almest,
            $cuarto,
            $almcod
        )

    );


}

function actualizarEvento($nom, $fech, $hora, $id_cat, $id_inv,$clave, $id_ev){

   

    $sqlupd = " UPDATE  eventos  SET  nombre_evento ='%s', fecha_evento ='%s', hora_evento ='%s', id_cat_evento =%d, id_inv =%d, clave ='%s' where evento_id=%d";


    return ejecutarNonQuery(
        sprintf(
            $sqlupd,
            $nom,
            $fech,
            $hora,
            $id_cat,
            $id_inv,
            $clave, 
            $id_ev
        )
    );


}


function obtenerInvitadoXId ($almcod)
{
    $sqlstr = "SELECT * from invitados where invitado_id=%d;";
    return obtenerUnRegistro(
        sprintf(
            $sqlstr,
            $almcod
        )
    );
}

function obtenerEventoXId ($almcod)
{
    $sqlstr = "SELECT * from eventos where evento_id=%d;";
    return obtenerUnRegistro(
        sprintf(
            $sqlstr,
            $almcod
        )
    );
}

function obtenerRegistradoXId ($almcod)
{
    $sqlstr = "SELECT * from registrados where id_registrado=%d;";
    return obtenerUnRegistro(
        sprintf(
            $sqlstr,
            $almcod
        )
    );
}


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
