<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Gestión de Roles</h2>
      </div>

      <div class="titulo2">
          <h3 class="centrar-texto">Mantenimiento de Roles</h3>
      </div>
  </div>
</section>



<div class="contenedor">
  
        <input type="text" name="fltEmail"  class="buscador sombra" id="fltEmail" placeholder="Buscar Roles" value="{{fltDsc}}" />
        

  <div class="contenedor-tabla">
    <table class="listado-tabla">
      <thead>
        <tr>
          <th>Código</th>
          <th>Nombre</th>
          <th class="">Estado</th>
          <th><a href="index.php?page=rol&rolescod&mode=INS" class="btn depth-1 s-margin">
            <span class="ion-plus-circled"></span>
            </a></th>
        </tr>
      </thead>
      <tbody class="">
        {{foreach roles}}
        <tr>
          <td>{{rolescod}}</td>
          <td>{{rolesdsc}}</td>
          <td class="sd-hide">{{rolesest}}</td>
          <td class="th-a-icono">
            <a href="index.php?page=rol&rolescod={{rolescod}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
            <a href="index.php?page=rol&rolescod={{rolescod}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
          </td>
        </tr>
        {{endfor roles}}
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
