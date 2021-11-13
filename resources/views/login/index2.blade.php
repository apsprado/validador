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
                            <span class="text-dark">XP</span><span class="text-primary">TO</span>
                        </a>
                        <p class="text-uppercase font-w700 font-size-sm text-muted">VALIDADOR DE URLs</p>
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
                                        <button type="button" class="btn btn-info push mb-1" data-toggle="modal" data-target="#modal-block-vcenter"><i class="fa fa-user mr-1"></i>Criar Conta</button>
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
                    @if (session('sucesso'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{session('sucesso')}}
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
                       Validador de URLs
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
    
<div class="modal" id="modal-block-vcenter" tabindex="-1" role="dialog" aria-labelledby="modal-block-vcenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="block block-themed block-transparent mb-0">
                <div class="block-header bg-primary-dark">
                    <h3 class="block-title">Criar Conta</h3>
                    <div class="block-options">
                        <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                            <i class="fa fa-fw fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="block-content">
                    <form action="{{route('usuarios.salvarUsuario')}}" method="POST" enctype="multipart/form-data">
                        {{ csrf_field() }} 
                        <!-- User Profile -->
                        <div class="row push">
                            <div class="block-content block-content-full px-lg-5 px-xl-6 py-4 py-md-5 py-lg-6 bg-body-extra-light">
                                <div class="mb-4">
                                    <div class="input-group input-group-lg">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="E-mail" required>
                                        <span class="input-group-text">
                                        <i class="fa fa-envelope-open"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <div class="input-group input-group-lg">
                                        <input type="text" class="form-control" id="Nome" name="nome" placeholder="Nome" required>
                                        <span class="input-group-text">
                                        <i class="fa fa-user-circle"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <div class="input-group input-group-lg">
                                        <input type="password" class="form-control" id="Password" name="Password" placeholder="Senha" required>
                                        <span class="input-group-text">
                                        <i class="fa fa-asterisk"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END User Profile -->
                        <div class="block-content block-content-full text-right bg-light">
                            <button type="button" class="btn btn-sm btn-light" data-dismiss="modal">Fechar</button>
                            <button type="submit" class="btn btn-sm btn-primary">Salvar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
