<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Gestión de Funciones</h2>
      </div>

      <div class="titulo2">
          <h3 class="centrar-texto">Mantenimiento de Funciones</h3>
      </div>
  </div>
</section>

<div class="contenedor">
  
      
        <input type="text" name="fltNombre"  class="buscador sombra" id="fltEmail" placeholder="Buscar Función" value="{{fltNombre}}" />


  <div class="contenedor-tabla">
    <table class="listado-tabla">
      <thead>
        <tr>
          <th>Código</th>
          <th>Descripción</th>
          <th class="sd-hide">Estado</th>
          <th class="sd-hide">Tipo</th>
          <th><a href="index.php?page=programa&fncod=&mode=INS" class="btn depth-1 s-margin">
            <span class="ion-plus-circled"></span>
            </a></th>
        </tr>
      </thead>
      <tbody class="zebra">
        {{foreach programas}}
        <tr>
          <td>{{fncod}}</td>
          <td>{{fndsc}}</td>
          <td class="">{{fnest}}</td>
          <td class="">{{fntyp}}</td>
          <td class="th-a-icono">
            <a href="index.php?page=programa&fncod={{fncod}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
            <a href="index.php?page=programa&fncod={{fncod}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
          </td>
        </tr>
        {{endfor programas}}
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
