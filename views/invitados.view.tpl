

<section class="invitados contenedor seccion">
  <h2>nuestros invitados</h2>
  <ul class="lista-invitados clearfix">
    {{foreach invitados}}
    <li>
      <div class="invitado">
        <a class="invitado-info" href="#invitado{{invitado_id}}">
        <img src="public/imgs/{{url_imagen}}" alt="" srcset="">
        <p>{{nombre_invitado}} {{apellido_invitado}}</p>
      </a>
      </div><!--Invitado-->
    </li>
    <div style="display: none;">
      <div class="invitado-info" id="invitado{{invitado_id}}">
        <h2>{{nombre_invitado}} {{apellido_invitado}}</h2>
        <img src="public/imgs/{{url_imagen}}" alt="">
        <p>{{descripcion}}</p>

      </div>   

    </div>

    {{endfor invitados}}
   
    </ul><!---->
</section><!--Invitados contenedor seccion-->
