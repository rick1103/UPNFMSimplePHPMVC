

<section class="relleno">
  <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

  <div class="titulos-nosotros-padre seccion-especial">
      <div class="titulo1">
          <h2 class="fw-400 centrar-texto">Registrado</h2>
      </div>

      <div class="titulo2">
          <h2 class="centrar-texto">{{modeDesc}}</h2>
      </div>
  </div>
</section>

<div class="contenedor">
   
    <form action="index.php?page=m_registrado&mode={{mode}}&ID_Registrado={{ID_Registrado}}" method="POST" class="contenedor_log" style="margin-top:1rem;">
    <div>
        <div class="separado">
            <label class="separado-l" for="ID_Registrado">Código</label>
            <input class="separado-l" type="number" name="ID_Registrado" id="ID_Registrado" value="{{ID_Registrado}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="nombre_registrado">Nombre Registrado</label>
            <input class="separado-l" type="text" name="nombre_registrado" id="nombre_registrado" value="{{nombre_registrado}}" />
        </div>



        <div class="separado">
            <label class="separado-l" for="apellido_registrado">Apellido Registrado</label>
            <input class="separado-l" type="text" name="apellido_registrado" id="apellido_registrado" value="{{apellido_registrado}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="email_registrado">Email</label>
            <input class="separado-l" type="text" name="email_registrado" id="email_registrado" value="{{email_registrado}}" />
        </div>


        <div class="separado">
            <label class="separado-l" for="fecha_registro">Fecha de Registro</label>
            <input class="separado-l" type="text" name="fecha_registro" id="fecha_registro" value="{{fecha_registro}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="total_pagado">Total Pagado</label>
            <input class="separado-l" type="text" name="total_pagado" id="total_pagado" value="{{total_pagado}}" />
        </div>

        
        
        <div class="separado">
            <label class="separado-l" for="pase_2dias">Pases de un Dia</label>
            <input class="separado-l" type="text" name="un_dia" id="un_dia" value="{{un_dia}}" />
        </div>
        
        <div class="separado">
            <label class="separado-l" for="pase_2dias">Pases de 2 Dias</label>
            <input class="separado-l" type="text" name="pase_2dias" id="pase_2dias" value="{{pase_2dias}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="pase_completo">Pases Completos</label>
            <input class="separado-l" type="text" name="pase_completo" id="pase_completo" value="{{pase_completo}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="camisas">Camisas</label>
            <input class="separado-l" type="text" name="camisas" id="camisas" value="{{camisas}}" />
        </div>

        <div class="separado">
            <label class="separado-l" for="etiquetas">Etiquetas</label>
            <input class="separado-l" type="text" name="etiquetas" id="etiquetas" value="{{etiquetas}}" />
        </div>
        
        
        <div class="separado">
            &nbsp;
            <button class="pointer boton separado-l" type="submit" name="btnCancelar">Regresar</button>
        </div>
        </div>
    </form>

</div>
