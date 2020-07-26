<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Departamento de Técnica Industrial</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="public/css/normalize.css">
    <link rel="stylesheet" href="public/css/styles.css">
    <link rel="shortcut icon" href="public/IMGs/logo_upnfm.png" type="image/x-icon">
</head>

<body>
    <header class="site-header inicio">
        <div class="contenedor contenedor-header-padre">
            <div class="contenedor-header-hijo">
                <a href="/"><img src="public/IMGs/encabprinc2.png" alt="Logo principal"></a>
            </div>

            <div class="contenedor-header-hijo-medio">
                <nav class="navegacion">
                    <a href="index.php?page=nosotros">Nosotros</a>
                    <a href="index.php?page=carreras">Carreras</a>
                    <a href="index.php?page=docentes">Docentes</a>
                    <a href="index.php?page=investigaciones">Investigacion</a>
                    <a href="index.php?page=extensiones">Extensiones</a>
                    <a href="index.php?page=contacto">Contacto</a>
                    <a href="index.php?page=login">Id</a>
                </nav>
            </div>

            <div class="contenedor-header-hijo titulos-padre">
                <div class="titulos-hijo">
                    <h1>Departamento de Técnica Industrial</h1>
                </div>

                <div class="titulos-hijo">
                    <h2>Técnica Industrial, Electrica, Electrónica, Madera</h2>
                </div>
            </div>        
        </div>
    </header>
    {{{page_content}}}

    

    <script src="JavaScript/utilidades.js"></script>
    
    <footer class="footer">
        <div class="contenedor-footer">
            <div class="final">
                <h2>Ubicación</h2>
                <p>Universidad Pedagógica Nacional Francisco Morazán</p>
                <p>Colonia el Dorado, Frente a Plaza Miraflores</p>

            </div>
            

            <div class="final">
                <a target="_blank" href="https://www.google.com/maps/@14.0758122,-87.18711,18z"><img class="ima"
                        src="public/imgs/direccion.png" alt="Dirección"></a>
                <div class="redes">
                    <div class="redes-hija">
                        <a target="_blank" href="https://www.facebook.com/"><img class="foo-ima"
                                src="public/imgs/logo-facebook-2.png" alt="Logo Facebook"></a>
                    </div>
                    <div class="redes-hija">
                        <a target="_blank" href="https://twitter.com/"><img class="foo-ima" src="public/imgs/logo-twitter-2.png"
                                alt="Logo Twitter"></a>
                    </div>
                    <div class="redes-hija">
                        <a target="_blank" href="https://web.telegram.org/"><img class="foo-ima"
                                src="public/imgs/logo-telegram-2.png" alt="Logo Telegram"></a>
                    </div>
                    <div class="redes-hija">
                        <a target="_blank" href="https://www.instagram.com/"><img class="foo-ima"
                                src="public/imgs/logo-instagram-2.png" alt="Logo Instagram"></a>
                    </div>
                </div>
            </div>

            <div class="final">
                <h2>Contactanos</h2>
                <p>Tel. 2239-8842 / 2235-8349 / 2239-8002 / 2235-6062</p>
                <p>Fax. 2231-1257</p>
            </div>
        </div>

        <p class="centro">Todos los derechos reservados &copy;</p>
    </footer>
</body>

</html>