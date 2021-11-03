@extends('layouts.simple')
@section('content')
    <!-- Page Content -->
    <div class="bg-image" style="background-image: url('media/photos/photo22@2x.jpg');">
        <div class="row no-gutters bg-primary-op">
            <!-- Main Section -->
            <div class="hero-static col-md-6 d-flex align-items-center bg-white">
                <div class="p-3 w-100">
                    <!-- Header -->
                    <div class="mb-3 text-center">
                        <a class="link-fx font-w700 font-size-h1" href="index.html">
                            <span class="text-dark">CONV</span><span class="text-primary">ENIADOS</span>
                        </a>
                        <p class="text-uppercase font-w700 font-size-sm text-muted">JUCESE</p>
                    </div>
                    <!-- END Header -->

                    <!-- Sign In Form -->
                    <!-- jQuery Validation (.js-validation-signin class is initialized in js/pages/op_auth_signin.min.js which was auto compiled from _js/pages/op_auth_signin.js) -->
                    <!-- For more info and examples you can check out https://github.com/jzaefferer/jquery-validation -->
                    <div class="row no-gutters justify-content-center">
                        <div class="col-sm-8 col-xl-6">
                            <form class="js-validation-signin" action="/login" method="POST">
                             {{csrf_field()}}
                                <div class="py-3">
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-lg form-control-alt"  id="email" name="email" placeholder="Usuário" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg form-control-alt" id="password" name="password"  placeholder="Senha" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-block btn-hero-lg btn-hero-primary">
                                        <i class="fa fa-fw fa-sign-in-alt mr-1"></i> Entrar
                                    </button>
                                    <p class="mt-3 mb-0 d-lg-flex justify-content-lg-between">
                                        <a class="btn btn-sm btn-light d-block d-lg-inline-block mb-1" href="op_auth_reminder.html">
                                            <i class="fa fa-exclamation-triangle text-muted mr-1"></i> Esqueci a minha senha!
                                        </a>
                                    </p>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END Sign In Form -->

                    <!-- ERROS AQUI -->
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if (session('msg'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            {{session('msg')}}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    <!-- FIM ERROS AQUI -->

                </div>
            </div>
            <!-- END Main Section -->
            <!-- Meta Info Section -->
            <div class="hero-static col-md-6 d-none d-md-flex align-items-md-center justify-content-md-center text-md-center">
                <div class="p-3">
                    <div class="display-3 font-w700 text-white mb-2">
                        <img src="media/logos/logo-white.png">
                    </div>
                    <p class="display-4 font-w700 text-white mb-2">
                        JUCESE CONVENIADOS
                    </p>
                    <p class="font-size-lg font-w600 text-white-75 mb-0">
                        Todos os Direitos Reservados &copy; <span data-toggle="year-copy"></span>
                    </p>
                </div>
            </div>
            <!-- END Meta Info Section -->
        </div>
    </div>
    <!-- END Page Content -->                
@endsection
