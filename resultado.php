<?php
require 'conexion.php';

// Obtener datos del formulario
$p1 = $_POST['p1'];
$p2 = $_POST['p2'];
$p3 = $_POST['p3'];
$p4 = $_POST['p4'];
$p5 = $_POST['p5'];
$p6 = $_POST['p6'];
$p7 = $_POST['p7'];
$p8 = $_POST['p8'];
$p9 = $_POST['p9'];
$p10 = $_POST['p10'];

// Insertar en la base de datos
$sql = "INSERT INTO encuesta_cafete (p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssssssss", $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9, $p10);

if ($stmt->execute()) {
    echo "<h2>Gracias por responder la encuesta.</h2>";
} else {
    echo "Error: " . $stmt->error;
}
echo '<br><a href="index.html"><button>Volver al Inicio</button></a>';

$stmt->close();
$conn->close();
?>
