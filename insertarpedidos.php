<?php
include('conexion2.php');

// Recibir y sanitizar los datos del formulario
$nombre = $_POST["nombre"];
$correo = $_POST["correo"];
$direccion = $_POST["direccion"];
$fecha = $_POST["fecha"];
$hora = $_POST["hora"];
$tarjeta = $_POST["tarjeta"];
$carne = $_POST["carne"];
$pollo = $_POST["pollo"];
$santaClara =$_POST["santaClara"];
$refresco = $_POST["refrescos"];

// Insertar los datos en la base de datos
$sql = "INSERT INTO ordenes (nombre, correo, direccion, fecha, hora, tarjeta, carne, pollo, santaClara, refresco) 
        VALUES ('$nombre', '$correo', '$direccion', '$fecha', '$hora', '$tarjeta', '$carne', '$pollo', '$santaClara', '$refresco')";

if ($con->query($sql) === TRUE) {
    echo "Orden enviada correctamente.";  
} else {
    echo "Error al enviar la orden: " . $con->error;
}
?>
