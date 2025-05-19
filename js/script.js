document.getElementById("btn__iniciar-registrarse").addEventListener("click", registro);
document.getElementById("btn__iniciar-sesion").addEventListener("click", Iniciarsesion);
window.addEventListener("resize", anchoPagina);

var contenedor__login_registre = document.querySelector(".contenedor__login-registre");
var formulario_login = document.querySelector(".formulario__login");
var formulario_registro = document.querySelector(".formulario__registro");

var caja__trasera_login = document.querySelector(".caja__trasera-login");
var caja__trasera_registro = document.querySelector(".caja__trasera-registro");

function anchoPagina(){
    if(window.innerWidth > 850){
        caja__trasera_login.style.display = "block";
        caja__trasera_registro.style.display = "block";
    }else{
        caja__trasera_registro.style.display = "block";
        caja__trasera_registro.style.opacity = "1";
        caja__trasera_login.style.display = "none";
        formulario_login.style.display = "block";
        formulario_registro.style.display = "none";
        contenedor__login_registre.style.left = "0px";
    }
}

anchoPagina();

function Iniciarsesion(){

    if(window.innerWidth > 850){
    formulario_registro.style.display = "none";
    contenedor__login_registre.style.left = "10px";
    formulario_login.style.display = "block";
    caja__trasera_registro.style.opacity = "1";
    caja__trasera_login.style.opacity = "0";
     }else{
        formulario_registro.style.display = "none";
        contenedor__login_registre.style.left = "0px";
        formulario_login.style.display = "block";
        caja__trasera_registro.style.display = "block";
        caja__trasera_login.style.display = "none";

     }
}


function registro(){

    if(innerWidth > 850){
        formulario_registro.style.display = "block";
        contenedor__login_registre.style.left = "410px";
        formulario_login.style.display = "none";
        caja__trasera_registro.style.opacity = "0";
        caja__trasera_login.style.opacity = "1";

    }else{
     formulario_registro.style.display = "block";
     contenedor__login_registre.style.left = "0px";
     formulario_login.style.display = "none";
     caja__trasera_registro.style.display = "none";
     caja__trasera_login.style.display = "block";
     caja__trasera_login.style.opacity = "1";
    }
}


