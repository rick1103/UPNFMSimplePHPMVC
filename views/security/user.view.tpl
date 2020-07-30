<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Usuario</h2>
      </div>

      <div class="titulo2">
          <h2 class="centrar-texto">{{modeDesc}}</h2>
      </div>
  </div>
</section>



<div class="contenedor ">
  {{if haserrores}}
    <ul>
      {{foreach errores}}
        <li class="showerrors">
          {{this}}
        </li>
      {{endfor errores}}
    </ul>
  {{endif haserrores}}
  <form action="index.php?page=user" method="post" class="contenedor_log" style="margin-top:1rem;">
    <input type="hidden" name="mode" value="{{mode}}"  />
    <input type="hidden" name="tocken" value="{{tocken}}"  />
    <input type="hidden" name="usrcod" value="{{usrcod}}"  />
    <div class="row">
    <div class="centrar-texto">
        <h2>{{modeDesc}}</h2>
    </div>
    <div class="separado">
      <label class="separado-l">Correo Electrónico</label>
      <input class="separado-l" {{readonly}} type="text" name="txtCorreo" id="txtCorreo" value="{{useremail}}" placeholder="correo@electron.ico" />
    </div>
    <div class="separado">
      <label class="separado-l">Nombre Completo</label>
      <input class="separado-l" {{readonly}} type="text" name="txtName" id="txtName" value="{{username}}" placeholder="Nombre Completo" />
    </div>
    <div class="separado">
      <label class="separado-l">Tipo de Usuario</label>
        <span class="select separado-l"><select {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbTipo" name="cmbTipo">
          {{foreach tipoUsuarios}}
            <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor tipoUsuarios}}
      </select></span>
    </div>
    <div class="separado">
      <label class="separado-l">Estado</label>
      <span class="select separado-l"><select {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbEstado" name="cmbEstado">
        {{foreach estadoUsuarios}}
          <option value="{{codigo}}" {{selected}}>{{valor}}</option>
        {{endfor estadoUsuarios}}
      </select> </span>
    </div>
    {{ifnot readonly}}
    <div class="separado">
      <label class="separado-l">Contraseña</label>
      <input class="separado-l" {{readonly}} type="password" name="txtPswd" id="txtPswd" value="" placeholder="Contraseña" />

    </div>
    {{endifnot readonly}}
    <div class="separado">
      <div class="">
        {{ifnot readonly}}
        <button id="btnConfirm" class="pointer boton separado-l">Confirmar</button>
        {{endifnot readonly}}
        <button id="btnCancel" class="pointer boton separado-l">Cancelar</button>
      </div>
    </div>
    </div>
  </form>
</div>
{{ifnot isinsert}}
<div class="contenedor centrar-texto">
  <h2>Roles Por Usuario</h2>

<div class="contenedor-tabla">
  <table class="listado-tabla">
    <thead>

      <tr>
          <th colspan="3">
            <form action="index.php?page=user" method="post"  id="frmAddRol">
            {{ifnot readonly}}
              <span class="">
                <select name="rolescod" class="selected">
                  {{foreach rolesavailable}}
                    <option value="{{rolescod}}">{{rolesdsc}}</option>
                  {{endfor rolesavailable}}
                </select>
              </span>
              <input type="hidden" name="usrcod" value="{{usercod}}"  />
              <input type="hidden" name="btnAddRol" value="AddRol"  />
              <input type="hidden" name="mode" value="{{mode}}"  />
              <input type="hidden" name="tocken" value="{{tocken}}"  />
            {{endifnot readonly}}
            {{if readonly}}
              Roles
            {{endif readonly}}
            {{ifnot readonly}}
            <span class="col-sm-2 right">
            <a href id="btnAddRol" class="">
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
      {{foreach rolesassign}}
      <tr>
        <td>
          {{rolescod}}
        </td>
        <td>
           {{rolesdsc}}
        </td>
        <td class="right">
          {{ifnot readonly}}
          <form action="index.php?page=user" method="post">
            <input type="hidden" name="usrcod" value="{{usercod}}"  />
            <input type="hidden" name="rolescod" value="{{rolescod}}"  />
            <input type="hidden" name="mode" value="{{mode}}"  />
            <input type="hidden" name="tocken" value="{{tocken}}"  />
            <input type="hidden" name="btnDelRol" value="DelRol"  />
            <a href id="btnDelRol" class="btn depth-1 s-margin">
              <span class="ion-minus-circled"></span>
            </a>
          </form>
          {{endifnot readonly}}
          {{if readonly}}
            &nbsp;
          {{endif readonly}}
        </td>
      </tr>
      {{endfor rolesassign}}
    </tbody>
  </table>
</div>

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
          window.location.assign("index.php?page=users");
          });
      {{ifnot isinsert}}
      $("#btnAddRol").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#frmAddRol").submit();
        });
      $("#btnDelRol").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $(this).parent("form").submit();
        });

      {{endifnot isinsert}}
    });
</script>
