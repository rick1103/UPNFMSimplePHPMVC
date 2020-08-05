<h1>{{modedsc}}</h1>
<section>
  <form action="index.php?page=m_invitado&mode={{mode}}&inv_id={{invitado_id}}" method="POST">
      <div>
        <label for="invitado_id">Código</label>
        <input type="number" name="invitado_id" id="invitado_id" value="{{invitado_id}}" />
      </div>
      <div>
        <label for="nombre_invitado">Nombre</label>
        <input type="text" name="nombre_invitado" id="nombre_invitado" value="{{nombre_invitado}}" />
      </div>


      <div>
        <label for="apellido_invitado">Apellido</label>
        <input type="text" name="apellido_invitado" id="apellido_invitado" value="{{apellido_invitado}}" />
      </div>


      <div>
        <label for="descripcion">Descrpcion</label>
        <input type="text" name="descripcion" id="descripcion" value="{{descripcion}}" />
      </div>
      
      
      
      <div>
        <label for="url_imagen">URL- Imagen</label>
        <input type="text" name="url_imagen" id="url_imagen" value="{{url_imagen}}" />
      </div>
      
      
      
      <div>
        <button type="submit" name="btnGuardar">Guardar</button>
        &nbsp;
        <button type="submit" name="btnCancelar">Cancelar</button>
      </div>
  </form>
</section>
