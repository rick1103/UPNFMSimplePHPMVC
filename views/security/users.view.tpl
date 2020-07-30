<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Gestión de Usuarios</h2>
      </div>

      <div class="titulo2">
          <h3 class="centrar-texto">Mantenimiento de Usuarios</h3>
      </div>
  </div>
</section>

  
  <div class="contenedor">
    
    
            <input type="email" name="fltEmail"  class="buscador sombra" id="fltEmail" placeholder="Buscar" />
    
    <div class="contenedor-tabla">
      <table class="listado-tabla">
        <thead >
          <tr >
            <th>Correo</th>
            <th>Nombre</th>
            <th class="sd-hide">Tipo</th>
            <th class="sd-hide">Estado</th>
            <th><a href="index.php?page=user&usrcod=0&mode=INS" class="btn depth-1 s-margin">
              <span class="ion-plus-circled"></span>
              </a></th>
          </tr>
        </thead>
        <tbody class="zebra">
          {{foreach usuarios}}
          <tr>
            <td>{{useremail}}</td>
            <td>{{username}}</td>
            <td class="sd-hide">{{usertipo}}</td>
            <td class="sd-hide">{{userest}}</td>
            <td class="th-a-icono">
              <a href="index.php?page=user&usrcod={{usercod}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
              <a href="index.php?page=user&usrcod={{usercod}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
            </td>
          </tr>
          {{endfor usuarios}}
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
