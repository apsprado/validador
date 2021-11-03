@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Editar Usuário</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Usuário</li>
                    <li class="breadcrumb-item active" aria-current="page">Editar Usuário</li>
                </ol>
            </nav>
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
            <form action="{{route('usuarios.atualizar', $user->id)}}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }} 
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
                            <label for="dm-profile-edit-job-title">Grupo Cadastrado</label>
                            <input type="text" class="form-control" id="Grupocad" name="grupocad" placeholder="Escolha seu grupo.." value="{{$user->grupo->nome}}" disabled> 
                        </div>
                        <div class="form-group">
                            <label for="Grupouser">Grupo:</label>
                            <select class="form-control" id="Grupouser" name="grupouser" >
                                <option value="">SELECIONE O NOVO GRUPO</option>
                                @foreach($grupo as $fonte)
                                <option value="{{ $fonte->id }}" >
                                    {{$fonte->nome}}
                                </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="SetorCad">Orgão Cadastrado:</label>
                            <input type="text" class="form-control" id="orgaocad" name="orgaocad" value="{{$user->orgao->nome_orgao}}" disabled />
                        </div>
                        <div class="form-group">
                            <label for="Setor">Orgão:</label>
                            <select class="form-control" id="orgao" name="orgao" >
                                <option value="">SELECIONE O ORGÃO</option>
                                @foreach($orgao as $key)
                                <option value="{{ $key->id }}">
                                    {{$key->nome_orgao}}
                                </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="cargo">Cargo:</label>
                            <input type="text" class="form-control" id="cargo" name="cargo" value="{{$user->cargo}}"/>
                        </div>
                        <div class="form-group">
                            <label for="ramal">Ramal:</label>
                            <input type="text" class="form-control" id="ramal" name="ramal" value="{{$user->ramal}}" pattern="[0-9]{4}" maxlength="4" />
                        </div>
                        <div class="form-group">
                            <label>Sua Foto</label>
                            <div class="push">
                                @if ( file_exists( 'media/avatars/'.$user->email.'.jpg' ) )
                                    <img class="img-avatar" src="<?php echo asset('media/avatars/'.$user->email.'.jpg') ?>" alt="" />
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
