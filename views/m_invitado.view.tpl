

<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Invitado</h2>
      </div>

      <div class="titulo2">
          <h2 class="centrar-texto">{{modeDesc}}</h2>
      </div>
  </div>
</section>

<div class="contenedor">
   
    <form action="index.php?page=m_invitado&mode={{mode}}&invitado_id={{invitado_id}}" method="POST" class="contenedor_log" style="margin-top:1rem;">
    <div>
        <div class="separado">
            <label class="separado-l" for="invitado_id">Código</label>
            <input class="separado-l" type="number" name="invitado_id" id="invitado_id" value="{{invitado_id}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="nombre_invitado">Nombre</label>
            <input class="separado-l" type="text" name="nombre_invitado" id="nombre_invitado" value="{{nombre_invitado}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="apellido_invitado">Apellido</label>
            <input class="separado-l" type="text" name="apellido_invitado" id="apellido_invitado" value="{{apellido_invitado}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="descripcion">Descrpcion</label>
            <input class="separado-l" type="text" name="descripcion" id="descripcion" value="{{descripcion}}" />
        </div>
        
        
        
        <div class="separado">
            <label class="separado-l" for="url_imagen">URL- Imagen</label>
            <input class="separado-l" type="text" name="url_imagen" id="url_imagen" value="{{url_imagen}}" />
        </div>
        
        
        
        <div class="separado">
            <button class="pointer boton separado-l" type="submit" name="btnGuardar">Guardar</button>
            &nbsp;
            <button class="pointer boton separado-l" type="submit" name="btnCancelar">Cancelar</button>
        </div>
        </div>
    </form>

</div>
