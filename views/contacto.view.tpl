
    <section class="relleno">
        <h1 class="fw-400 centrar-texto">Departamento de Técnica Industrial</h1>

        <div class="titulos-nosotros-padre seccion-especial">
            <div class="titulo1">
                <h2 class="fw-400 centrar-texto">Contacto</h2>
            </div>

            <div class="titulo2">
                <h3 class="centrar-texto">Para dudas y consultas puedes contactarnos llenando el siguiente formulario o llamandonos a los telefonos: </h3>
                <h3>2239-8842 / 2235-8349 / 2239-8002 / 2235-6062</h3>
            </div>
        </div>
    </section>

    <main class="seccion-especial2">
        <h2 class="fw-400">Contactanos</h2>

        <h3 class="centrar-texto">Llenar formulario de contacto</h3>
        
        <form class="contacto-fin" action="" method="post" class="consultas" onsubmit="return validar();">
            <fieldset>
                <legend>Información Personal</legend>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" placeholder="Tu nombre" required>

                <label for="email">E-mail</label>
                <input type="email" id="email" placeholder="Tu correo electrónico" required>

                <label for="telefono">Teléfono</label>
                <input type="tel" id="telefono" placeholder="Tu teléfono" required>

                <label for="mensaje">Mensaje</label>
                <textarea name="" id="mensaje">Llena tu consulta</textarea>
            </fieldset>

            <fieldset>
                <legend>Forma de contacto</legend>
                
                <p>¿Como desea ser contactado?</p>

                <label for="forma-contacto">Forma de Contactarlo</label>
                <select id="forma contacto">
                    <option value="" disabled selected>--seleccione--</option>
                    <option value="telefono">Teléfono</option>
                    <option value="e-mail">Correo Electrónico</option>
                </select>

                <p>Sí eligió teléfono, elija fecha y hora que desea ser contactado</p>

                <label for="fecha">Fecha</label>
                <input type="date" id="fecha" required>

                <label for="hora">Hora</label>
                <input type="time" id="hora" min="9:00" max="16:00" required>

            </fieldset>
            <input type="submit" value="Registrar" class="boton boton-interno enviar">

        </form>

    </main>
