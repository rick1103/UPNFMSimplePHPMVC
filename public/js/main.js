
(function(){
    "use strict";
    var regalo = document.getElementById('regalo');
    document.addEventListener('DOMContentLoaded', function(){
        //campos datos usuario
        var nombre= document.getElementById('nombre');
        var apellido = document.getElementById('apellido');
        var email = document.getElementById('email');
        
        //Campos pases
        var pase_dia = document.getElementById('pase_dia');``
        var pase_dosdias = document.getElementById('pase_dosdias');
        var pase_completo = document.getElementById('pase_completo');

        //Botones y Divs

        var calcular = document.getElementById('calcular');
        var errorDiv = document.getElementById('error');
        var botonRegistro = document.getElementById('btnRegistro');
        var listaProductos = document.getElementById('listaProductos');
        var suma = document.getElementById('sumaTotal');
        //EXTRAS
        var camisas = document.getElementById('camisa_evento');
        var etiquetas = document.getElementById('etiquetas');



        calcular.addEventListener('click', calcularMontos);
        pase_dia.addEventListener('blur', mostrarDias);
        pase_dosdias.addEventListener('blur', mostrarDias);
        pase_completo.addEventListener('blur', mostrarDias);

        nombre.addEventListener('blur', validarCampos);
        apellido.addEventListener('blur', validarCampos);
        email.addEventListener('blur', validarCampos);

        function validarCampos(){
            if(this.value==''){
                errorDiv.style.display='block';
                errorDiv.innerHTML ="Este campo es obligatorio";
                this.style.border = '1px solid #fe4918';
                errorDiv.style.border = '1px solid #fe4918'
            }else{
                errorDiv.style.display= 'none';
                this.style.border = '1px solid #cccccc';
            }
        }

        function calcularMontos(event){
            event.preventDefault();
            if(regalo.value === ''){
                alert('Debes elegir un regalo');
                regalo.focus();
            }
            else{
                var boletosDia = parseInt(pase_dia.value, 10) || 0,
                    boletos_2Dias = parseInt(pase_dosdias.value, 10) || 0,
                    boletoCompleto = parseInt(pase_completo.value, 10) || 0,
                    cantCamisas = parseInt(camisas.value, 10) || 0,
                    cantEtiquetas = parseInt(etiquetas.value, 10) || 0;

                var totalPagar = (boletosDia*30)+(boletos_2Dias*45)+(boletoCompleto*60)+(cantCamisas*10)+(cantEtiquetas*2);
                 var listadoProductos = [];

                if(boletosDia>0){
                    listadoProductos.push(boletosDia+' Pases por dia');
                }
                if(boletos_2Dias>0){
                    listadoProductos.push(boletos_2Dias+' Pases por 2 dias');
                }
                if(boletoCompleto>0){
                    listadoProductos.push(boletoCompleto+' Pases Completos');
                }
                if(cantCamisas>0){
                    listadoProductos.push(cantCamisas+' Camisas');
                }
                if(cantEtiquetas>0){
                    listadoProductos.push(cantEtiquetas+' Etiquetas');
                }
                listaProductos.style.display="block";
                listaProductos.innerHTML = '';
                
                for(var i=0; i<listadoProductos.length; i++){

                
                    listaProductos.innerHTML += listadoProductos[i] + '<br/>'; 
                } 
                suma.innerHTML="$ "+totalPagar.toFixed(2);  
            }
        } 
        function mostrarDias() {
            var boletosDia = parseInt(pase_dia.value, 10) || 0,
            boletos_2Dias = parseInt(pase_dosdias.value, 10) || 0,
            boletoCompleto = parseInt(pase_completo.value, 10) || 0;

            var diasElegidos = [];
            if(boletosDia>0){
                diasElegidos.push('viernes');
            }
            else{
                document.getElementById('viernes').style.display='none';
            }
            if(boletos_2Dias>0){
                diasElegidos.push('viernes', 'sabado');
            }
            else{
                document.getElementById('sabado').style.display='none';
            }
            if(boletoCompleto>0){
                diasElegidos.push('viernes','sabado', 'domingo');
            }
            else{
                document.getElementById('domingo').style.display='none';
            }

            console.log(diasElegidos);

            for(var i=0; i<diasElegidos.length; i++){
                document.getElementById(diasElegidos[i]).style.display= "block";
            }


        } 

    });


})();


