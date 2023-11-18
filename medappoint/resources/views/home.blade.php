@extends('layouts.panel')

@section('content')
<div class="row">
  <div class="col-md-12 mb-4">
    <div class="card">
      <div class="card-header">Bienvenido! a <strong>Med Appoint</strong></div>
      <div>
        <img src="img/Banner.jpg" width="100%">
      </div>

       <div class="row">
        <div class="col-xl-3 col-md-6">
          <div class="card card-stats">
           
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <h5 class="card-title text-uppercase text-muted mb-0">ESPECIALIDADES</h5>
                  <a class="nav-link" href="../public/specialties">
                    <i class="ni ni-single-copy-04" title="Especialidad" data-toggle="tooltip"></i>
                  </a>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                    <i class="ni ni-planet"></i>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6">
          <div class="card card-stats">
           
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <h5 class="card-title text-uppercase text-muted mb-0">MEDICOS</h5>
                  <a class="nav-link" href="../public/doctors">
                    <i class="ni ni-single-copy-04" title="Medico" data-toggle="tooltip"></i>
                  </a>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                    <i class="ni ni-ambulance"></i>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6">
          <div class="card card-stats">
     
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <h5 class="card-title text-uppercase text-muted mb-0">PACIENTES</h5>
                  <a class="nav-link" href="../public/patients">
                    <i class="ni ni-single-copy-04" title="Paciente" data-toggle="tooltip"></i>
                  </a>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                    <i class="ni ni-single-02"></i>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6">
          <div class="card card-stats">
          
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <h5 class="card-title text-uppercase text-muted mb-0">CITAS MEDICAS</h5>
                  <a class="nav-link" href="../public/appointments">
                    <i class="ni ni-single-copy-04" title="Citas Medicas" data-toggle="tooltip"></i>
                  </a>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                    <i class="ni ni-time-alarm"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection