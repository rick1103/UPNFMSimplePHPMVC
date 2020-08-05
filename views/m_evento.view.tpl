

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
   
    <form action="index.php?page=m_evento&mode={{mode}}&evento_id={{evento_id}}" method="POST" class="contenedor_log" style="margin-top:1rem;">
    <div>
        <div class="separado">
            <label class="separado-l" for="evento_id">Código</label>
            <input class="separado-l" type="number" name="evento_id" id="evento_id" value="{{evento_id}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="nombre_evento">Nombre de Evento</label>
            <input class="separado-l" type="text" name="nombre_evento" id="nombre_evento" value="{{nombre_evento}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="fecha_evento">Fecha del Evento</label>
            <input class="separado-l" type="date" name="fecha_evento" id="fecha_evento" value="{{fecha_evento}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="hora_evento">Hora del Evento</label>
            <input class="separado-l" type="time" name="hora_evento" id="hora_evento" value="{{hora_evento}}" />
        </div>

        <select name="id_cat_evento" id="id_cat_evento" required>
            <option value="">-- Seleccione una Categoria</option>
            {{foreach categoria}}
            <option value="{{id_categoria}}">{{cat_evento}}</option>
            {{endfor categoria}}
        </select>

        <select name="id_inv" id="id_inv" required>
            <option value="">-- Seleccione un Invitado</option>
            {{foreach invitados}}
            <option value="{{invitado_id}}">{{nombre_invitado}} {{apellido_invitado}}</option>
            {{endfor invitados}}
        </select>
        
        
        <div class="separado">
            <label class="separado-l" for="clave">clave de evento</label>
            <input class="separado-l" type="text" name="clave" id="clave" value="{{clave}}" />
        </div>
        
        
        
        <div class="separado">
            <button class="pointer boton separado-l" type="submit" name="btnGuardar">Guardar</button>
            &nbsp;
            <button class="pointer boton separado-l" type="submit" name="btnCancelar">Cancelar</button>
        </div>
        </div>
    </form>

</div>
