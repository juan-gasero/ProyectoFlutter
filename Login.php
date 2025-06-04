<?php

   session_start();

   if(isset($_SESSION['usuario'])){
    header("location:bienvenido.php");
   }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login y registro</title>
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
  <main>
    <div class="contenedor__todo">

      <div class="caja__trasera">

        <div class="caja__trasera-login">
           <h3>¿Ya tienes una cuenta?</h3>
           <p>Inicia sesion para entrar a la pagina</p>
           <button id="btn__iniciar-sesion">Iniciar Sesion</button>
        </div>

        <div class="caja__trasera-registro">
          <h3>¿Aun no tienes cuenta?</h3>
          <p>Registrate para que puedes iniciar sesion</p>
          <button id="btn__iniciar-registrarse">Registrarse</button>
       </div>

      </div>

      <div class="contenedor__login-registre">
        <form action="php/login_usuario_be.php" method = "POST" class="formulario__login">
          <h2>Iniciar sesion</h2>
          <input type="text" placeholder="Correo Electronico" name = "correo">
          <input type="password" placeholder="Contraseña" name = "contrasena">
          <button>Entrar</button>
        </form>

        <form action="php/registro_usuario_be.php" method="POST" class="formulario__registro">
            <h2>Registrarse</h2>
            <input type="text" placeholder="Nombre Completo" name= "nombre_completo">
            <input type="text" placeholder="Correo Electronico" name = "correo">
            <input type="text" placeholder="Usuario" name = "usuario">
            <input type="password" placeholder="Contraseña" name = "contrasena">
            <button>Registrarse</button>
        </form>
      </div>

    </div>
  </main>
   <script src="js/script.js"></script>
</body>
</html>
