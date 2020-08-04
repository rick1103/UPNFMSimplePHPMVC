<div class="barra">
    <div class="contenedor clearfix">
  
      <nav class="navegacion-principal clearfix">

        {{foreach fechas}}
        <!-- <a href="#" class="" ><i class="fa fa-calendar"></i></a> -->
        <input type="button" value="{{this}}" id="{{this}}" class="button" name=""> 
            {{endfor fechas}}
        
        
      </nav>
    </div><!-- contenedor-->
  </div><!-- Barra-->


<section class="seccion contenedor">
    <h2>Calendario de Eventos</h2>

    <div class="calendario">

        {{foreach eventos}}
        <div class="dia {{fecha_evento}}">
            <p class="titulo">{{nombre_evento}}</p>
            <p class="hora"><i class="fa fa-clock"></i>{{fecha_evento}} {{hora_evento}}</p>
            <p><i class="fa {{icono}}"></i>{{cat_evento}}</p>
            <p><i class="fa fa-user"></i>{{nombre_invitado}} {{apellido_invitado}}</p>
        </div>
        {{endfor eventos}}
    </div>

</section>
