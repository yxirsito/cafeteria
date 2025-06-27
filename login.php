<?php
session_start();
require 'conexion.php';

$usuario = $_POST['usuario'];
$contrasena = $_POST['password'];

// Consulta segura usando prepared statements
$stmt = $conn->prepare("SELECT * FROM usuarios WHERE usuario = ? AND password = ?");
$stmt->bind_param("ss", $usuario, $contrasena);
$stmt->execute();
$resultado = $stmt->get_result();

if ($resultado->num_rows === 1) {
    $_SESSION['usuario'] = $usuario;
    header("Location: index.html");
    exit();
} else {
    echo "Usuario o contraseña incorrectos.";
}

$stmt->close();
$conn->close();
?>
