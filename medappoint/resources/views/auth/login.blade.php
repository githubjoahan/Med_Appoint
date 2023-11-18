@extends('layouts.form')

@section('title', '')
@section('subtitle', '')


@section('content')
<div class="container mt--8 pb-5">
    <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
            <div class="card bg-secondary shadow border-0">
                <div class="card-body px-lg-5 py-lg-5">
                    @if ($errors->any())
                    <div class="alert alert-danger" role="alert">
                        {{ $errors->first() }}
                    </div>
                    @endif
                    <form role="form" method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group mb-3">
                            <div class="input-group input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                </div>
                                <input class="form-control" placeholder="Ingresa tu correo electronico" type="email" name="email" value="{{ old('email') }}" required autofocus>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                </div>
                                <input class="form-control" placeholder="Ingresa tu contraseña" type="password" name="password" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="ni ni-eye" id="toggle-password"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}">
                        </div>
                        
                        <!-- recordar sesion -->


                        <div class="text-center">
                            <button type="submit" class="btn btn-primary my-4">Ingresar</button>
                        </div>
                    </form>
                </div>
            </div>

            
            <!-- funcion poder restablecer contraseñas -->
            
           
      </div>





        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const togglePassword = document.querySelector('#toggle-password');
        const passwordInput = document.querySelector('#password');

        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            togglePassword.classList.toggle('ni-active');
        });
    });
</script>

@endsection