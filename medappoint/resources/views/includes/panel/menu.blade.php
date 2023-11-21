<!-- Navigation -->
<h6 class="navbar-heading text-muted">
    @if (auth()->user()->role == 'admin')
    Gestionar Datos
    @else
    Menu
    @endif
</h6>
<ul class="navbar-nav">
    @if (auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="../public/home">
            <i class="ni ni-tv-2 text-red"></i> Dashboard
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/specialties">
            <i class="ni ni-planet text-blue"></i> Especialidades
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/doctors">
            <i class="ni ni-ambulance text-orange"></i> Medicos
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/patients">
            <i class="ni ni-single-02 text-silver"></i> Pacientes
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/appointments">
            <i class="ni ni-time-alarm text-yellow"></i> Citas Medicas
        </a>
    </li>

    @elseif (auth()->user()->role == 'patient')
    <li class="nav-item">
        <a class="nav-link" href="https://localhost/medappoint/public/appointments/create">
            <i class="ni ni-tv-2 text-red"></i> Reservar Cita Médica 
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="https://localhost/medappoint/public/appointments">
            <i class="ni ni-planet text-blue"></i> Mis citas  Médicas
        </a>
    </li>
 

    @elseif (auth()->user()->role == 'doctor')
    <li class="nav-item">
        <a class="nav-link" href="../public/schedule">
            <i class="ni ni-calendar-grid-58 text-danger"></i> Gestionar Horario
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/appointments">
            <i class="ni ni-time-alarm text-yellow"></i> Mis citas
        </a>
    </li>

    @else
    <li class="nav-item">
        <a class="nav-link" href="../public/appointments/create">
            <i class="ni ni-send text-danger"></i> Reservar Cita
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../public/appointments">
            <i class="ni ni-time-alarm text-yellow"></i> Mis citas
        </a>
    </li>
    @endif
    <li class="nav-item">
        <a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('formLogout').submit();">
            <i class="ni ni-key-25 text-info"></i> Cerrar Sesión
        </a>
        <form action="{{ route('logout') }}" method="POST" style="display:none;" id="formLogout">
            @csrf
        </form>
    </li>
</ul>
@if (auth()->user()->role == 'admin')
 <!-- Divider
 <hr class="my-3"> 
Heading
<h6 class="navbar-heading text-muted">Reportes</h6>
Navigation  -->
<!-- <ul class="navbar-nav mb-md-3">
    <li class="nav-item">
        <a class="nav-link" href="{{ url('/charts/appointments/line') }}">
            <i class="ni ni-collection text-orange"></i> Frecuencia de citas
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ url('/charts/doctors/column') }}">
            <i class="ni ni-spaceship text-red"></i> Medicos mas activos
        </a>
    </li>
</ul> -->
@endif
