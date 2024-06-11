<?php
include('conexion2.php'); 
    $nombre = $_POST["name"];
    $email = $_POST["email"];
    $asunto = $_POST["subject"];
    $mensaje = $_POST["message"];
    $sql = "INSERT INTO mensajes (nombre, email, asunto, mensaje) VALUES ('$nombre', '$email', '$asunto', '$mensaje')";
    if ($con->query($sql) === TRUE) {
        echo "Mensaje enviado correctamente.";  
                            } else {
        echo "Error al enviar el mensaje: " . $con->error;
    }

?>