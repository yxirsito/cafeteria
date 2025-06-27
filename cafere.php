<?php
require 'conexion2.php';

// Obtener los datos del formulario
$numero_orden = $_POST["numero_orden"];
$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$edad = $_POST["edad"];
$costo = $_POST["costo"];
$fecha_compra = $_POST["fecha_compra"];

// Consulta preparada para insertar los datos
$sql = "INSERT INTO registrar (numero_orden, nombre, apellido, edad, costo, fecha_compra)
        VALUES ('$numero_orden', '$nombre', '$apellido', '$edad', '$costo', '$fecha_compra')";

if ($conn->query($sql) === TRUE) {
    echo "Se registró tu compra y datos.<br><br>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Botón para volver al inicio
echo '<br><a href="index.html"><button>Volver al Inicio</button></a>';
?>
