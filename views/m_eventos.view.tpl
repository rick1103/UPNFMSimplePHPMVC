<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Gestión de Eventos</h2>
      </div>

      <div class="titulo2">
          <h3 class="centrar-texto">Mantenimiento de Eventos</h3>
      </div>
  </div>
</section>



<div class="contenedor">
  
        <input type="text" name="fltEmail"  class="buscador sombra" id="fltEmail" placeholder="Buscar Evento" value="{{fltDsc}}" />
        

  <div class="contenedor-tabla">
    <table class="listado-tabla">
      <thead>
        <tr>
          <th>Evento</th>
          <th>Impartido por:</th>
          <th>Categoria</th>
          <th>Fecha</th>
          <th><a href="index.php?page=m_evento&evento_id&mode=INS" style="color: white;">
            <span class="ion-plus-circled"></span>
            </a></th>
        </tr>
      </thead>
      <tbody class="">
        {{foreach eventos}}
        <tr>
        
          <td>{{nombre_evento}}</td>
          <td>{{nombre_invitado}} {{apellido_invitado}}</td>

          <td>{{cat_evento}}</td>
          <td>{{fecha_evento}}</td>
          <td class="th-a-icono">
            <a href="index.php?page=m_evento&evento_id={{evento_id}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
            <a href="index.php?page=m_evento&evento_id={{evento_id}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
          </td>
        </tr>
        {{endfor eventos}}
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
