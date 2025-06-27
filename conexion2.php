<?php
$servername = "localhost";
$username = "root";
$password = ""; // Cambia si tu MySQL tiene contraseña
$dbname = "sesion"; // Cambia por tu base real

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>

