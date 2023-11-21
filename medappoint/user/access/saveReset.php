<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.32/dist/sweetalert2.all.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.32/dist/sweetalert2.min.css" rel="stylesheet">
</head>
<body>


<?php
// Establecer la zona horaria
date_default_timezone_set('America/Mexico_City');

$servername = "127.0.0.1";
$username = "myappoin_reset";
$password = "J(Qxa+sAyoIR";
$dbname = "myappoin_ejemplo";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['email'])) {
    $mail = $conn->real_escape_string($_POST['email']);
    $contrasena = $_POST['password'];
    $opciones = ['cost' => 12];

    $hashedPass = password_hash($contrasena, PASSWORD_BCRYPT, $opciones);

    $stmtUpdate = $conn->prepare("UPDATE users SET password=? WHERE email=?");
    $stmtUpdate->bind_param('ss', $hashedPass, $mail);

    if ($stmtUpdate->execute()) {

        echo '
<script>
Swal.fire({
    icon: "success",
    title:  "Datos actualizados!",
    text: "Ingrese con sus nuevas credenciales"
}).then((result) => {
    if (result.value) {
        setTimeout(function() {
            window.location.href = "";
        }, 600);
    }
});
</script>
';

    } else {
        echo "Error al actualizar los datos: " . $conn->error;
    }
} else {
    if ($_SERVER["REQUEST_METHOD"] != "POST") {
        echo "Error: El método no es POST. Método actual: " . $_SERVER["REQUEST_METHOD"] . "<br>";
    }
    if (!isset($_POST['email'])) {
        echo "Error: Dirección de correo electrónico no proporcionada en el formulario.<br>";
    }
}

$conn->close();
?>


</body>
</html>
