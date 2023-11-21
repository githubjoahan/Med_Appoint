<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="eZzGLWV0IFw9hrEiIEA13dedUFWCvmPsOfSzkwKo">

    <title>Med Appoint</title>

    <!-- Scripts -->
    <script src="https://myappointment.com.mx/public/js/app.js" defer=""></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="https://myappointment.com.mx/public/css/app.css" rel="stylesheet">
</head>

<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                <a href="https://myappointment.com.mx/public" class="navbar-brand">
                    Med Appoint
                </a> <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                    class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
                <div id="navbarSupportedContent" class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto"></ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="https://myappointment.com.mx/public/login"
                                class="nav-link">Login</a></li>
                        <li class="nav-item"><a href="https://myappointment.com.mx/public/register"
                                class="nav-link">Register</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <main class="py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header text-center bg-primary text-white"
                                style="background: none; border: none;">
                                <h4>Recuperar contraseña</h4>
                            </div>
                            <div class="card-body custom-card-body">
                                <form method="POST" action="sendMail.php">
                                    <input type="hidden" name="_token" value="eZzGLWV0IFw9hrEiIEA13dedUFWCvmPsOfSzkwKo">
                                    <div class="form-group">
                                        <label for="email" class="col-form-label">Para restablecer
                                            la contraseña, introduce la dirección de correo electrónico que utilizaste
                                            para iniciar sesión en el portal.
                                        </label>
                                        <input id="email" type="email"  name="email" value="" required="required" placeholder="Correo electrónico"
                                            class="form-control">
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-md-6"><a href="login"
                                                class="btn btn-outline-secondary btn-block">Cancelar</a></div>
                                        <div class="col-md-6 mt-2 mt-md-0"><button type="submit"
                                                class="btn btn-outline-primary btn-block">Recuperar</button></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

</body>

</html>
