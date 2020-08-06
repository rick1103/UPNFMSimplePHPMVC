<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Gestión de Eventos</h2>
      </div>

      <div class="titulo2">
          <h3 class="centrar-texto">Personas Registradas en el Evento</h3>
      </div>
  </div>
</section>



<div class="contenedor">
  
        <input type="text" name="fltEmail"  class="buscador sombra" id="fltEmail" placeholder="Buscar Evento" value="{{fltDsc}}" />
        

  <div class="contenedor-tabla">
    <table class="listado-tabla">
      <thead>
        <tr>
          <th>Nombre</th>
          <th>Correo Electronico</th>
          <th>Regalo</th>
          <th>Pagado</th>
          <th><a href="index.php?page=m_registrado&ID_Registrado&mode=INS" style="color: white;">
            <span class="ion-plus-circled"></span>
            </a></th>
        </tr>
      </thead>
      <tbody class="">
        {{foreach registrados}}
        <tr>
        
          <td>{{nombre_registrado}}   {{apellido_registrado}}</td>
          <td>{{email_registrado}}</td>
          <td>{{nombre_regalo}}</td>
          <td>{{total_pagado}}</td>
          <td class="th-a-icono">
            <a href="index.php?page=m_registrado&ID_Registrado={{ID_Registrado}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
          </td>
        </tr>
        {{endfor registrados}}
      </tbody>
    </table>
  </div>
</div>









<script>
    $().ready(
    function(){
      $("#btnFiltro").click(
        function(e){
          e.preventDefault();
          e.stopPropagation();
          document.forms[0].submit();
        }
      );
    }

    );
</script>
