<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">ROLES</h2>
      </div>

      <div class="titulo2">
          <h2 class="centrar-texto">{{modeDesc}}</h2>
      </div>
  </div>
</section>



  <div class="contenedor">
    {{if haserrores}}
      <ul >
        {{foreach errores}}
          <li class="showerrors">
            {{this}}
          </li>
        {{endfor errores}}
      </ul>
    {{endif haserrores}}
    <form action="index.php?page=rol" method="post" class="contenedor_log" style="margin-top:1rem;">
      <input type="hidden" name="mode" value="{{mode}}"  />
      <input type="hidden" name="tocken" value="{{tocken}}"  />
      <input type="hidden" name="rolescod" value="{{rolescod}}"  />
      <div class="row">
        <div class="separado">
          <label class="separado-l">Código del rol:</label>
          <input class="separado-l" {{readonly}} {{isupdate}} type="text" name="txtCodigo" id="txtCodigo" value="{{rolescod}}" placeholder="Codigo" />
        </div>
      <div class="separado">
        <label class="separado-l">Descripción:</label>
        <input class="separado-l" {{readonly}} type="text" name="txtName" id="txtName" value="{{rolesdsc}}" placeholder="Descripcion del Rol" />
      </div>
      <div class="separado">
        <label class="separado-l">Estado:</label>
        <span class="select separado-l"><select {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbEstado" name="cmbEstado">
          {{foreach estadoRol}}
            <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor estadoRol}}
        </select> </span>
      </div>

      <div class="separado">
        <div class="col-md-12 right">
          {{ifnot readonly}}
          <button id="btnConfirm "class="pointer boton separado-l"><span ></span>Confirmar</button>
          {{endifnot readonly}}
          <button id="btnCancel" class="pointer boton separado-l">Cancelar</button>
        </div>
      </div>
      </div>
    </form>
  </div>
{{ifnot isinsert}}
<div class="contenedor centrar-texto">
  <h2>Programas Por Rol</h2>
</div>


<div class="contenedor-tabla">
  <table class="listado-tabla">
    <thead>

      <tr>
          <th colspan="3">
            <form action="index.php?page=rol" method="post"  id="frmAddPrg">
            {{ifnot readonly}}
              <span class="select col-sm-10">
                <select name="programacod" class="selected">
                  {{foreach prgavailable}}
                    <option value="{{fncod}}">{{fndsc}}</option>
                  {{endfor prgavailable}}
                </select>
              </span>
              <input type="hidden" name="rolescod" value="{{rolescod}}"  />
              <input type="hidden" name="btnAddPgm" value="AddPrg"  />
              <input type="hidden" name="mode" value="{{mode}}"  />
              <input type="hidden" name="tocken" value="{{tocken}}"  />
            {{endifnot readonly}}
            {{if readonly}}
              Programas
            {{endif readonly}}
            {{ifnot readonly}}
            <span class="col-sm-2 right">
            <a href id="btnAddPgm" class="btn depth-1 s-margin">
              <span class="ion-plus-circled agrandar-boton"></span>
            </a>
            </span>
            {{endifnot readonly}}
            {{if readonly}}
            &nbsp;
            {{endif readonly}}
            </form>
          </th>
      </tr>

    </thead>
    <tbody>
      {{foreach prgassign}}
      <tr>
        <td>
          {{fncod}}
        </td>
        <td>
          {{fndsc}}
        </td>
        <td class="right">
          {{ifnot readonly}}
          <form action="index.php?page=rol" method="post">
            <input type="hidden" name="programacod" value="{{fncod}}"  />
            <input type="hidden" name="rolescod" value="{{rolescod}}"  />
            <input type="hidden" name="mode" value="{{mode}}"  />
            <input type="hidden" name="tocken" value="{{tocken}}"  />
            <input type="hidden" name="btnDelPgm" value="DelPrg"  />
            <a href id="btnDelPgm" class="btn depth-1 s-margin">
              <span class="ion-minus-circled"></span>
            </a>
          </form>
          {{endifnot readonly}}
          {{if readonly}}
            &nbsp;
          {{endif readonly}}
        </td>
      </tr>
      {{endfor prgassign}}
    </tbody>
  </table>
</div>
{{endifnot isinsert}}
<script>
  $().ready(function(){
      $("#btnConfirm").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        document.forms[0].submit();
        });
      $("#btnCancel").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          window.location.assign("index.php?page=roles");
          });

    {{ifnot isinsert}}
    $("#btnAddPgm").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        $("#frmAddPrg").submit();
      });
    $("#btnDelPgm").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        $(this).parent("form").submit();
      });
    {{endifnot isinsert}}
    });

</script>
