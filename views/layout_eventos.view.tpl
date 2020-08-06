<!doctype html>
<html class="no-js" lang="es">

<head>
  <meta charset="utf-8">
  <title>{{page_title}}</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 
  <link rel="shortcut icon" href="public/imgs/logo_upnfm.png" type="image/x-icon">
  <link rel="stylesheet" href="public/css/all.css">
  <link rel="stylesheet" href="public/css/normalize.css">
  <link rel="stylesheet" href="public/css/main.css">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,700;1,400&family=Oswald:wght@300;400;700&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
    {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
    {{endfor css_ref}}
  <meta name="theme-color" content="#fafafa">
</head>

<header class="site-header">
  <div class="hero">
    <div class="contenido-header">
      <nav class="redes-sociales">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-pinterest"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </nav>
      <div class="informacion-evento">
        <div class="clearfix">
          <p class="fecha"><i class="fas fa-calendar-alt"></i>10/10/2020</p>
          <p class="ciudad"><i class="fas fa-map-marker-alt"></i>Tegucigalpa UPNFM</p>
        </div>
        <h1 class="nombre-sitio">ETI-UPNFM</h1>
        <p class="slogan">La mejor conferencia de <span>Educacion Tecnica Industrial</span></p>

      </div>
    </div>
  </div>
</header>
<div class="barra">
    <div class="contenedor clearfix">
      <div class="logo">
        <img src="public/imgs/letras_upnfm.png" alt="ETI-UPNFM" srcset="">
      </div>
  
      <div class="menu-movil">
        <span></span>
        <span></span>
        <span></span>
      </div>
  
      <nav class="navegacion-principal clearfix">
        <a href="index.php" class="">INICIO</a>
        <a href="index.php?page=eventos" class="">conferencia</a>
        <a href="index.php?page=calendario" class="">calendario</a>
        <a href="index.php?page=invitados" class="">invitados</a>
        <a href="paypal/index.html" class="">Donaciones</a>
        <a href="index.php?page=registro">reservaciones</a>
      </nav>
    </div><!-- contenedor-->
  </div><!-- Barra-->

    {{{page_content}}}



{{foreach js_ref}}
                <script src="{{uri}}"></script>
{{endfor js_ref}}