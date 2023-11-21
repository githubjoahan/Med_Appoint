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
$servername = "127.0.0.1";
$username = "myappoin_reset";
$password = "J(Qxa+sAyoIR";
$dbname = "myappoin_ejemplo";
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST['email']) && !empty($_POST['email'])) {

        $mail = $conn->real_escape_string($_POST['email']);

        $sql = "SELECT * FROM users WHERE email='$mail'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {

            while ($row = $result->fetch_assoc()) {
              $correo = $row["email"];
              $token = $row["remember_token"];


              $correo= $row["email"];
              $url= 'https://myappointment.com.mx/user/access/newAccess';
              $para =  $correo;
              $titulo = 'Med App | RECUPERAR CONTRASEÑA';
              $mensaje = '<html>
              <head>
                  <title>Recuperar Contraseña</title>
              </head>
              <body>
                  <p></p>
                  <p>Sigue las instrucciones a continuación para recuperar tu contraseña:</p><p></p>
                  <center><img style="width:50%; height:auto;" src="https://turquesa.baxground.com/recover.jpg"></center>

                  <ul>
                      <li>Paso 1: Accede a nuestro <a href=" '.$url.''."?token=".''.$token.'  ">formulario de recuperación de contraseña</a>.</li>
                      <li>Paso 2: Ingresa tu correo, tu nueva contraseña</li>
                      <li>Paso 3: Haz clic en "Guardar cambios".</li>
                      <li>Paso 4: Acceda a su cuenta con sus nuevas credenciales.</li>
                  </ul>
                  <p>Si no has solicitado la recuperación de contraseña, por favor ignora este mensaje.</p>
              </body>
              </html>';
              $cabeceras = 'From: medical@myappointment.com.mx' . "\r\n" .
                  'Reply-To: medical@myappointment.com.mx' . "\r\n" .
                  'X-Mailer: PHP/' . phpversion();
              $cabeceras .= "\r\n" . 'MIME-Version: 1.0';
              $cabeceras .= "\r\n" . 'Content-Type: text/html; charset=ISO-8859-1';

              if (mail($para, $titulo, $mensaje, $cabeceras)) {

echo '
<script>
Swal.fire({
    icon: "success",
    title:  "Correo Enviado!",
    text: "Revise su correo electrónico, se le ha enviado un correo de recuperación 😊"
}).then((result) => {
    if (result.value) {
        setTimeout(function() {
            window.location.href = "https://myappointment.com.mx/user/access/reset";
        }, 400);
    }
});
</script>
';

              } else {
                  echo 'No se a podido enviar el correo de recuperació, intente mas tarde';
              }












            }
        } else {
            echo "0 results";
        }
    } else {
        echo "No se recibieron datos";
    }
} else {
    echo "Método invalido";
}

$conn->close();
?>

</body>
</html>
