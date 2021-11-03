@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Conta de Usuário</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Conta de Usuário</li>
                    <li class="breadcrumb-item active" aria-current="page">Editar</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- END Hero -->
<!-- Hero -->
<div class="bg-image" style="background-image: url('media/photos/photo17@2x.jpg');">
    <div class="bg-black-75">
        <div class="content content-full">
            <div class="py-5 text-center">
                <a class="img-link" href="#">
                    @if ( file_exists( 'media/avatars/'.auth()->user()->email.'.jpg' ) )
                    <img class="img-avatar img-avatar96 img-avatar-thumb" src="<?php echo asset('media/avatars/'.auth()->user()->email.'.jpg') ?>" alt="" />
                    @else
                        <img class="img-avatar img-avatar96 img-avatar-thumb" src="media/avatars/avatar10.jpg" alt="">
                    @endif
                </a>
                <h1 class="font-w700 my-2 text-white">{{$user->name}}</h1>
                <h2 class="h4 font-w700 text-white-75"> {{$user->grupo->nome}}</h2>
            </div>
        </div>
    </div>
</div>
<!-- END Hero -->

<!-- Page Content -->
<div class="content content-full content-boxed">
        
    @if (session('sucesso'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{session('sucesso')}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @elseif (session('erro'))
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        {{session('erro')}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif

    <div class="block block-rounded">
        <div class="block-content">
            <form action="{{route('contausuario.update')}}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}  <input type="hidden" name="id" value="{{$user->id}}" />
                <!-- User Profile -->
                <h2 class="content-heading pt-0">
                    <i class="fa fa-fw fa-user-circle text-muted mr-1"></i> Perfil do Usuário
                </h2>
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            As informações vitais da sua conta. Seu nome de usuário ficará publicamente visível.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="dm-profile-edit-username">Login</label>
                            <input type="text" class="form-control" id="Email" name="email" placeholder="Digite seu e-mail.." value="{{$user->email}}" disabled >
                        </div>
                        <div class="form-group">
                            <label for="dm-profile-edit-name">Nome</label>
                            <input type="text" class="form-control" id="Nome" name="nome" placeholder="Digite seu Nome.." value="{{$user->name}}">
                        </div>
                        <div class="form-group">
                            <label for="dm-profile-edit-job-title">Grupo</label>
                            <input type="text" class="form-control" id="Grupocad" name="grupocad" placeholder="Escolha seu grupo.." value="{{$user->grupo->nome}}" disabled> 
                        </div>
                        <div class="form-group">
                            <label for="dm-profile-edit-company">Orgão</label>
                            <input type="text" class="form-control" id="dm-profile-edit-company" name="dm-profile-edit-company" value="{{$user->orgao->nome_orgao}}" readonly>
                        </div>
                        <div class="form-group">
                            <label>Sua Foto</label>
                            <div class="push">
                                @if ( file_exists( 'media/avatars/'.auth()->user()->email.'.jpg' ) )
                                    <img class="img-avatar" src="<?php echo asset('media/avatars/'.auth()->user()->email.'.jpg') ?>" alt="" />
                                @else
                                    <img class="img-avatar" src="media/avatars/avatar10.jpg" alt="">
                                @endif
                            </div>
                            <div class="custom-file">
                                <!-- Populating custom file input label with the selected filename (data-toggle="custom-file-input" is initialized in Helpers.coreBootstrapCustomFileInput()) -->
                                <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="avatar" name="avatar">
                                <label class="custom-file-label" for="dm-profile-edit-avatar">Escolha uma nova foto!</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END User Profile -->

                <!-- Change Password -->
                <h2 class="content-heading pt-0">
                    <i class="fa fa-fw fa-asterisk text-muted mr-1"></i> Mudar Senha
                </h2>
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Alterar sua senha de login é uma maneira fácil de manter sua conta segura.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group row">
                            <div class="col-12">
                                <label for="dm-profile-edit-password-new">Nova Senha</label>
                                <input type="password" class="form-control" id="Nsenha" name="nsenha">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-12">
                                <label for="dm-profile-edit-password-new-confirm">Confirmar Nova Senha</label>
                                <input type="password" class="form-control" id="Csenha" name="csenha">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Change Password -->

                <!-- Submit -->
                <div class="row push">
                    <div class="col-lg-8 col-xl-5 offset-lg-4">
                        <div class="form-group">
                            <button type="submit" class="btn btn-alt-primary">
                                <i class="fa fa-check-circle mr-1"></i> Atualizar Perfil
                            </button>
                        </div>
                    </div>
                </div>
                <!-- END Submit -->
            </form>
        </div>
    </div>
</div>
<!-- END Page Content --> 
@endsection
