const formularioContactos = document.querySelector('#contacto'),
      listadoContatos = document.querySelector('#listado-contactos tbody'),
      inputBuscador = document.querySelector('#fltEmail');

    

      
eventListeners();

function eventListeners(){


    // buscador
    if(inputBuscador){
        inputBuscador.addEventListener('input', buscarContactos);
    }
    
    
    
}

// buscador de registros
function buscarContactos(e){
    const expresion = new RegExp(e.target.value, "i");
          registros = document.querySelectorAll('tbody tr');

          registros.forEach(registro =>{
              registro.style.display = 'none';
              
              console.log(registro.childNodes);
              if(registro.childNodes[0].textContent.replace(/\s/g, " ").search(expresion) != -1 || 
              registro.childNodes[1].textContent.replace(/\s/g, " ").search(expresion) != -1 ){
                registro.style.display = 'table-row';
              }
             // numeroContactos();
          });
}

// nuestra el numero de contactos
function numeroContactos(){
    
    const totalContactos = document.querySelectorAll('tbody tr'),
          contenedorNumero = document.querySelector('.total-contactos span');
    
        let total = 0;

    totalContactos.forEach(contacto => {
        if(contacto.style.display === '' || contacto.style.display === 'table-row'){
            total++;
        }
    });
    
    
    
    //console.log(total);
    contenedorNumero.textContent = total;
    
    
}