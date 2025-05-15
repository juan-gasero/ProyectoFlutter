<?php
$servername = "localhost";
$username = "root"; // usuario
$password = ""; // Por defecto, la contraseña está vacía
$dbname = "recetario";
// Crear conexión a server
$conn = new mysqli($servername, $username, $password, $dbname);
// Verificar conexión a server
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}else{
    echo "<h1>Conexion exitosa</h1>";
}
?>

