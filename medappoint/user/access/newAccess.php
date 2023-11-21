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
    <link href="https://myappointment.com.mx/public/vendor/nucleo/css/nucleo.css" rel="stylesheet">
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
<div class="container mt--8 pb-5">
    <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
            <div class="card">
            <div class="card-header text-center bg-primary text-white" style="background: none; border: none;"><h4>Reestablecer contraseña</h4></div>
                <div class="card-body px-lg-5 py-lg-5">


                    <form role="form" method="POST" action="saveReset.php">
                        <input type="hidden" name="_token" value="eZzGLWV0IFw9hrEiIEA13dedUFWCvmPsOfSzkwKo">

                        <div class="form-group mb-3 focused">

                        <label>Correo:</label>
                            <div class="input-group input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                </div>
                                <input class="form-control" placeholder="Ingresa tu correo electronico" type="email" name="email" value="" required="" autofocus="">

                            </div>
                        </div>

                        <div class="form-group">
                        <label>Contraseña:</label>
                            <div class="input-group input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                </div>
                                <input class="form-control" placeholder="Ingresa tu contraseña" type="password" name="password" required="">

                            </div>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary my-4">Reestablecer y guardar</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
            </div>
        </main>
    </div>

</body>


<style>
   label{    display: inline-block;
    margin-bottom: 0.5rem;
    font-size: smaller;
    font-weight: 700;
    color: #030325;
}
</style>

</html>
