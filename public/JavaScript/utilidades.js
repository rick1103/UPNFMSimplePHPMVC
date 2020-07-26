function validar() {
    var nombre, email, telefono, mensaje, expresion;
    
    nombre = document.getElementById("nombre").value;
    email = document.getElementById("email").value;
    telefono = document.getElementById("telefono").value;
    mensaje = document.getElementById("mensaje").value;
    expresion = /\w+@\w+\.+[a-z]/;

    if(nombre==="" || email==="" || telefono==="" || mensaje===""){
        alert("Los campos de contacto son obligatorios");
        return false;
    }
    else if(nombre.length>50){
        alert("El nombre es muy largo");
        return false;
    }
    else if(email.length>40){
        alert("El email es muy largo");
        return false;
    }
    else if(!expresion.test(email)){
        alert("El correo no es valido");
        return false;
    }
    else if(telefono.length>20){
        alert("El teléfono es muy largo");
        return false;
    }
    else if(mensaje.length>5000){
        alert("El mensaje es muy largo");
        return false;
    }
    else if(isNaN(telefono)){
        alert("El teléfono ingresado no es un número");
        return false;
    }
}

var btnAbrirEmergente = document.getElementById('btn-maestro1'),
    btnAbrirEmergente2 = document.getElementById('btn-maestro2'),
    btnAbrirEmergente3 = document.getElementById('btn-maestro3'),
    btnAbrirEmergente4 = document.getElementById('btn-maestro4'),
    btnAbrirEmergente5 = document.getElementById('btn-maestro5'),
    btnAbrirEmergente6 = document.getElementById('btn-maestro6'),
    btnAbrirEmergente7 = document.getElementById('btn-maestro7'),
    btnAbrirEmergente8 = document.getElementById('btn-maestro8'),
    btnAbrirEmergente9 = document.getElementById('btn-maestro9'),
    btnAbrirEmergente10 = document.getElementById('btn-maestro10'),
    btnAbrirEmergente11 = document.getElementById('btn-maestro11'),
    btnAbrirEmergente12 = document.getElementById('btn-maestro12'),
    btnAbrirEmergente13 = document.getElementById('btn-maestro13'),
    btnAbrirEmergente14 = document.getElementById('btn-maestro14'),
    btnAbrirEmergente15 = document.getElementById('btn-maestro15'),

    fondo = document.getElementById('fondo'),
    fondo2 = document.getElementById('fondo2'),
    fondo3 = document.getElementById('fondo3'),
    fondo4 = document.getElementById('fondo4'),
    fondo5 = document.getElementById('fondo5'),
    fondo6 = document.getElementById('fondo6'),
    fondo7 = document.getElementById('fondo7'),
    fondo8 = document.getElementById('fondo8'),
    fondo9 = document.getElementById('fondo9'),
    fondo10 = document.getElementById('fondo10'),
    fondo11 = document.getElementById('fondo11'),
    fondo12 = document.getElementById('fondo12'),
    fondo13 = document.getElementById('fondo13'),
    fondo14 = document.getElementById('fondo14'),
    fondo15 = document.getElementById('fondo15'),

    emergente = document.getElementById('emergente'),
    emergente2 = document.getElementById('emergente2'),
    emergente3 = document.getElementById('emergente3'),
    emergente4 = document.getElementById('emergente4'),
    emergente5 = document.getElementById('emergente5'),
    emergente6 = document.getElementById('emergente6'),
    emergente7 = document.getElementById('emergente7'),
    emergente8 = document.getElementById('emergente8'),
    emergente9 = document.getElementById('emergente9'),
    emergente10 = document.getElementById('emergente10'),
    emergente11 = document.getElementById('emergente11'),
    emergente12 = document.getElementById('emergente12'),
    emergente13 = document.getElementById('emergente13'),
    emergente14 = document.getElementById('emergente14'),
    emergente15 = document.getElementById('emergente15'),


    btnSalir = document.getElementById('btn-salir'),
    btnSalir2 = document.getElementById('btn-salir2'),
    btnSalir3 = document.getElementById('btn-salir3'),
    btnSalir4 = document.getElementById('btn-salir4'),
    btnSalir5 = document.getElementById('btn-salir5'),
    btnSalir6 = document.getElementById('btn-salir6'),
    btnSalir7 = document.getElementById('btn-salir7'),
    btnSalir8 = document.getElementById('btn-salir8'),
    btnSalir9 = document.getElementById('btn-salir9'),
    btnSalir10 = document.getElementById('btn-salir10'),
    btnSalir11 = document.getElementById('btn-salir11'),
    btnSalir12 = document.getElementById('btn-salir12'),
    btnSalir13 = document.getElementById('btn-salir13'),
    btnSalir14 = document.getElementById('btn-salir14'),
    btnSalir15 = document.getElementById('btn-salir15');
    
    btnAbrirEmergente.addEventListener('click' , function(){
        fondo.classList.add('visible');
        emergente.classList.add('visible');
    });
    btnSalir.addEventListener('click' , function(){
        fondo.classList.remove('visible');
        emergente.classList.remove('visible');
    });


    btnAbrirEmergente2.addEventListener('click' , function(){
        fondo2.classList.add('visible');
        emergente2.classList.add('visible');
    });
    btnSalir2.addEventListener('click' , function(){
        fondo2.classList.remove('visible');
        emergente2.classList.remove('visible');
    });


    btnAbrirEmergente3.addEventListener('click' , function(){
        fondo3.classList.add('visible');
        emergente3.classList.add('visible');
    });
    btnSalir3.addEventListener('click' , function(){
        fondo3.classList.remove('visible');
        emergente3.classList.remove('visible');
    });


    btnAbrirEmergente4.addEventListener('click' , function(){
        fondo4.classList.add('visible');
        emergente4.classList.add('visible');
    });
    btnSalir4.addEventListener('click' , function(){
        fondo4.classList.remove('visible');
        emergente4.classList.remove('visible');
    });


    btnAbrirEmergente5.addEventListener('click' , function(){
        fondo5.classList.add('visible');
        emergente5.classList.add('visible');
    });
    btnSalir5.addEventListener('click' , function(){
        fondo5.classList.remove('visible');
        emergente5.classList.remove('visible');
    });


    btnAbrirEmergente6.addEventListener('click' , function(){
        fondo6.classList.add('visible');
        emergente6.classList.add('visible');
    });
    btnSalir6.addEventListener('click' , function(){
        fondo6.classList.remove('visible');
        emergente6.classList.remove('visible');
    });


    btnAbrirEmergente7.addEventListener('click' , function(){
        fondo7.classList.add('visible');
        emergente7.classList.add('visible');
    });
    btnSalir7.addEventListener('click' , function(){
        fondo7.classList.remove('visible');
        emergente7.classList.remove('visible');
    });


    btnAbrirEmergente8.addEventListener('click' , function(){
        fondo8.classList.add('visible');
        emergente8.classList.add('visible');
    });
    btnSalir8.addEventListener('click' , function(){
        fondo8.classList.remove('visible');
        emergente8.classList.remove('visible');
    });


    btnAbrirEmergente9.addEventListener('click' , function(){
        fondo9.classList.add('visible');
        emergente9.classList.add('visible');
    });
    btnSalir9.addEventListener('click' , function(){
        fondo9.classList.remove('visible');
        emergente9.classList.remove('visible');
    });


    btnAbrirEmergente10.addEventListener('click' , function(){
        fondo10.classList.add('visible');
        emergente10.classList.add('visible');
    });
    btnSalir10.addEventListener('click' , function(){
        fondo10.classList.remove('visible');
        emergente10.classList.remove('visible');
    });


    btnAbrirEmergente11.addEventListener('click' , function(){
        fondo11.classList.add('visible');
        emergente11.classList.add('visible');
    });
    btnSalir11.addEventListener('click' , function(){
        fondo11.classList.remove('visible');
        emergente11.classList.remove('visible');
    });


    btnAbrirEmergente12.addEventListener('click' , function(){
        fondo12.classList.add('visible');
        emergente12.classList.add('visible');
    });
    btnSalir12.addEventListener('click' , function(){
        fondo12.classList.remove('visible');
        emergente12.classList.remove('visible');
    });


    btnAbrirEmergente13.addEventListener('click' , function(){
        fondo13.classList.add('visible');
        emergente13.classList.add('visible');
    });
    btnSalir13.addEventListener('click' , function(){
        fondo13.classList.remove('visible');
        emergente13.classList.remove('visible');
    });

    btnAbrirEmergente14.addEventListener('click' , function(){
        fondo14.classList.add('visible');
        emergente14.classList.add('visible');
    });
    btnSalir14.addEventListener('click' , function(){
        fondo14.classList.remove('visible');
        emergente14.classList.remove('visible');
    });

    btnAbrirEmergente15.addEventListener('click' , function(){
        fondo15.classList.add('visible');
        emergente15.classList.add('visible');
    });
    btnSalir15.addEventListener('click' , function(){
        fondo15.classList.remove('visible');
        emergente15.classList.remove('visible');
    });