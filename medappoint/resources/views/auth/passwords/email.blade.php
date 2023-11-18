@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center bg-primary text-white" style="background: none; border: none;">
                    <h4>{{ __('Recuperar contraseña ') }}</h4>
                </div>

                <div class="card-body custom-card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf
                        <div class="form-group">
                            <label for="email" class="col-form-label">{{ __('Para restablecer la contraseña, introduce la dirección de correo electrónico que utilizaste para iniciar sesión en el portal.') }}</label>
                            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required placeholder="Correo electrónico">
                            @if ($errors->has('email'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <a href="login" class="btn btn-outline-secondary btn-block">Cancelar</a>
                            </div>
                            <div class="col-md-6 mt-2 mt-md-0">
                                <button type="submit" class="btn btn-outline-primary btn-block">{{ __('Recuperar') }}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection