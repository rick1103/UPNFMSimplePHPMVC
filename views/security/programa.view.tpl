<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">FUNCIONES</h2>
      </div>

      <div class="titulo2">
          <h2 class="centrar-texto">{{modeDesc}}</h2>
      </div>
  </div>
</section>


<div class="contenedor">
  {{if haserrores}}
    <ul class="alert alert-danger depth-1 m-padding" style="list-style:none;">
      {{foreach errores}}
        <li class="showerrors">
          {{this}}
        </li>
      {{endfor errores}}
    </ul>
  {{endif haserrores}}
  <form action="index.php?page=programa" method="post" class="contenedor_log" style="margin-top:1rem;">
    <input type="hidden" name="mode" value="{{mode}}"  />
    <input type="hidden" name="tocken" value="{{tocken}}"  />
    <input type="hidden" name="programacod" value="{{fncod}}"  />
    <div class="row">
      <div class="separado">
        <label class="separado-l">Código del programa: </label>
        <input class="separado-l" {{readonly}} type="text" name="txtCodigo" id="txtCodigo" value="{{fncod}}" placeholder="Código de la función" />
      </div>
    <div class="separado">
      <label class="separado-l">Descripción del programa: </label>
      <input class="separado-l" {{readonly}} type="text" name="txtDescripcion" id="txtDescripcion" value="{{fndsc}}" placeholder="Descripción de la función" />
    </div>
    <div class="separado">
      <label class="separado-l">Estado</label>
      <span class="select separado-l"><select {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbEstado" name="cmbEstado">
        {{foreach estadoProgramas}}
          <option value="{{codigo}}" {{selected}}>{{valor}}</option>
        {{endfor estadoProgramas}}
      </select> </span>
    </div>

    <div class="separado">
      <label class="separado-l">Tipo de Programa</label>
        <span class="select separado-l"><select {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbTipo" name="cmbTipo">
          {{foreach tipoProgramas}}
            <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor tipoProgramas}}
      </select></span>
    </div>

    {{ifnot readonly}}
    {{endifnot readonly}}
    <div class="separado">
      <div class="col-md-12 right">
        {{ifnot readonly}}
        <button id="btnConfirm" class="pointer boton separado-l"><span class=""></span>Confirmar</button>
        {{endifnot readonly}}
        <button id="btnCancel" class="pointer boton separado-l">Cancelar</button>
      </div>
    </div>
    </div>
  </form>
</div>
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
          window.location.assign("index.php?page=programas");
          });
    });
</script>
