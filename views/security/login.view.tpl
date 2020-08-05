<section class="relleno">
        <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

        <div class="titulos-nosotros-padre seccion-especial">
            <div class="titulo1">
                <h2 class="fw-400 centrar-texto">Investigaciones</h2>
            </div>

            <div class="titulo2">
                <h3 class="centrar-texto">Infórmate con nuestro área de investigaciones realizadas estratégicamente con investigación e innovación.</h3>
            </div>
        </div>
    </section>

<section class="contenedor contenedor_log">
  <form id="formLogin" action="index.php?page=login" method="POST" class="nada">
    <h1>Inicio de Sesión</h1>
    <input name="returnto" value="{{returnto}}" type="hidden" />
    <input name="tocken" value="{{tocken}}" type="hidden"/>
    <div class="separado">
      <label class="separado-l" for="txtEmail" >Correo Electrónico: </label>
      <input class="separado-l" type="text" name="txtEmail" id="txtEmail" value="{{txtEmail}}"  />
    </div>
    <div class="separado">
      <label class="separado-l" for="txtPswd">Contraseña: </label>
      <input class="separado-l" type="password" name="txtPswd" id="txtPswd" value=""  />
    </div><br/>
    <div class="contenedor-boton">
      <button class="boton pointer" id="btnSend"><span class="ion-log-in"></span>&nbsp;Iniciar Sesión</button>
    </div>
    {{if showerrors}}
        <div class="alert alert-danger">
          <ul style="margin-bottom:1em !important;">
            {{foreach errors}}
              <li>
                {{this}}
              </li>
            {{endfor errors}}
          </ul>
        </div>
    {{endif showerrors}}
  </form>
</section>
<script>
  $().ready(
    function(){
      $("#btnSend").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#formLogin").submit();
        });
    }
    );
</script>
