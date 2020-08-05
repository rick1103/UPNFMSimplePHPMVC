

<section class="seccion contenedor">
  <h2>La mejor conferencia de diseño web en español</h2>
  
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus placeat porro fugit, doloribus animi, voluptatibus nisi perspiciatis, ex quo voluptas excepturi dolorum reiciendis tenetur. Architecto animi similique sint dolores perferendis.</p>

</section><!--Seccion-->


<section class="programa">
  <div class="contenedor-video">
    <video autoplay loop poster="public/imgs/bg-talleres.jpg">
      <!-- Hay que poner mp4 de primero, por que si no apple se mete a pedo y registra un error -->
      <source src="public/video/video.mp4" type="video/mp4">
      <source src="public/video/video.webm" type="video/webm">
      <source src="public/video/video.ogv" type="video/ogg">
        <!-- Para flash no, muy viejo -->
    </video>
  </div><!--contenedor video-->
  <div class="contenido-programa">
    <div class="contenedor">
      <div class="programa-evento">
        <h2>Eventos UPNFM </h2>
        <nav class="menu-programa">
        {{foreach categoria_evento}}
          <a href="#{{cat_evento}}"><i class="fas {{icono}}"></i>{{cat_evento}}</a>
          {{endfor categoria_evento}}
        </nav>
        



        <div id="Seminario" class="info-curso ocultar clearfix">
        {{foreach resumen_seminario}}
          <div class="detalle-evento">
            <h3>{{nombre_evento}}</h3>
            <p><i class="fas fa-clock"></i>{{hora_evento}} hrs</p>
            <p><i class="fas fa-calendar"></i>{{fecha_evento}}</p>
            <p><i class="fas fa-user"></i>{{nombre_invitado}} {{apellido_invitado}}</p>
          </div><!--detalle del evento-->
        {{endfor resumen_seminario}}
        </div><!--info-curso ocultar clearfix-->

        <div id="Talleres" class="info-curso ocultar clearfix">
          {{foreach resumen_taller}}
          <div class="detalle-evento">
            <h3>{{nombre_evento}}</h3>
            <p><i class="fas fa-clock"></i>{{hora_evento}} hrs</p>
            <p><i class="fas fa-calendar"></i>{{fecha_evento}}</p>
            <p><i class="fas fa-user"></i>{{nombre_invitado}} {{apellido_invitado}}</p>
          </div><!--detalle del evento-->
        {{endfor resumen_taller}}
        </div><!--info-curso ocultar clearfix-->



        <div id="Conferencias" class="info-curso ocultar clearfix">
          {{foreach resumen_conferencias}}
          <div class="detalle-evento">
            <h3>{{nombre_evento}}</h3>
            <p><i class="fas fa-clock"></i>{{hora_evento}} hrs</p>
            <p><i class="fas fa-calendar"></i>{{fecha_evento}}</p>
            <p><i class="fas fa-user"></i>{{nombre_invitado}} {{apellido_invitado}}</p>
          </div><!--detalle del evento-->
        {{endfor resumen_conferencias}}
        </div><!--info-curso ocultar clearfix-->


      </div><!--pograma-evento-->
    </div><!--contenedor-->
  </div><!--contenido-programa-->
</section><!--Programa-->


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

<div class="contador parallax">
  <div class="contenedor">
    <ul class="resumen-evento clearfix">
      <li><p class="numero">6</p>invitados</li>
      <li><p class="numero">14</p>talleres</li>
      <li><p class="numero">3</p>dias</li>
      <li><p class="numero">6</p>conferencias</li>
    </ul>
  </div>
</div>



<section class="precios seccion">
  <h2>precios</h2>
  <div class="contenedor">
    <ul class="lista-precios clearfix">
      <li>
        <div class="tabla-precio">
          <h3>pase por dia</h3>
          <p class="numero">$30</p>
          <ul>
            <li>Bocadillo Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
            <a href="#" class="button hollow">comprar</a>
          </ul>
        </div>
      </li><!--Fin de li loco-->
      <li>
        <div class="tabla-precio">
          <h3>pase por 2 dias</h3>
          <p class="numero">$45</p>
          <ul>
            <li>Bocadillo Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
            <a href="#" class="button">comprar</a>
          </ul>
        </div>
      </li><!--Fin de li loco-->
      <li>
        <div class="tabla-precio">
          <h3>pase por dia</h3>
          <p class="numero">$30</p>
          <ul>
            <li>Bocadillo Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
            <a href="#" class="button hollow">comprar</a>
          </ul>
        </div>
      </li><!--Fin de li loco-->

    </ul>
  </div>
</section>

<div id="mapa" class="mapa">
</div>

<section class="seccion">
  <h2>testimoniales</h2>
  <div class="testimoniales contenedor clearfix">
    <div class="testimonial">
      <blockquote>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia adipisci eius deleniti praesentium modi repudiandae, maxime fugit, voluptatibus minus aliquid ab itaque veniam odio? Dolorem obcaecati expedita odit voluptates itaque.</p>
        <footer class="info-testimonial clearfix">
          <img src="public/imgs/testimonial.jpg" alt="imagen testimonial" srcset="">
          <cite>Rolando Zavala, el macizo <span>Ingeniero en sistemas</span></cite>
        </footer>
      </blockquote>
    </div><!--Fin de testimonial-->
    <div class="testimonial">
      <blockquote>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia adipisci eius deleniti praesentium modi repudiandae, maxime fugit, voluptatibus minus aliquid ab itaque veniam odio? Dolorem obcaecati expedita odit voluptates itaque.</p>
        <footer class="info-testimonial clearfix">
          <img src="public/imgs/testimonial.jpg" alt="imagen testimonial" srcset="">
          <cite>Rolando Zavala, el macizo <span>Ingeniero en sistemas</span></cite>
        </footer>
      </blockquote>
    </div><!--Fin de testimonial-->
    <div class="testimonial">
      <blockquote>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia adipisci eius deleniti praesentium modi repudiandae, maxime fugit, voluptatibus minus aliquid ab itaque veniam odio? Dolorem obcaecati expedita odit voluptates itaque.</p>
        <footer class="info-testimonial clearfix">
          <img src="public/imgs/testimonial.jpg" alt="imagen testimonial" srcset="">
          <cite>Rolando Zavala, el macizo <span>Ingeniero en sistemas</span></cite>
        </footer>
      </blockquote>
    </div><!--Fin de testimonial-->
  </div><!--Fin de TESTIMONIALES-->
</section>

<div class="newsletter parallax">
  <div class="contenido contenedor">
    <p>Registrate al Newsletter</p>
    <h3>ETI-UPNFM</h3>
    <a href="#" class="button transparente">registro</a>

  </div><!--contenido contenedor-->
</div><!--newsletter parallax-->

<section class="seccion">
  <h2>Faltan</h2>
  <div class="cuenta-regresiva contenedor ">
    <ul class="clearfix">
      <li><p class="numero">80</p>Dias</li>
      <li><p class="numero">15</p>horas</li>
      <li><p class="numero">40</p>minutos</li>
      <li><p class="numero">3</p>segundos</li>
    </ul>
  </div>
</section>