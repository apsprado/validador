@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Orgão</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Orgão</li>
                    <li class="breadcrumb-item active" aria-current="page"></li>
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
            @if(isset($orgao))
                <form action="{{route('orgao.update', $orgao->id)}}" method="post">
                <input type="hidden" name="_method" value="put">
            @else
                <form action="{{route('orgao.store')}}" method="post">
            @endif

                {{ csrf_field() }} 
                <!-- User Profile -->
                <h2 class="content-heading pt-0">
                    <i class="fa fa-fw fa-city-circle text-muted mr-1"></i>Orgão
                </h2>
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Aqui são as informações importantes para identificação do Orgão.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="orgao-nome">Nome do Orgão</label>
                            <input type="text" class="form-control" id="nome_orgao" name="nome_orgao" placeholder="Digite o nome do Orgão.." value="{{isset($orgao->nome_orgao) ? $orgao->nome_orgao : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="orgao-sigla">Sigla Orgão</label>
                            <input type="text" class="form-control" id="sigla_orgao" name="sigla_orgao" placeholder="Sigla do Orgão.." maxlength="10" value="{{isset($orgao->sigla_orgao) ? $orgao->sigla_orgao : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="orgao-cnpj">CNPJ</label>
                            <input type="text" class="form-control" id="cnpj" name="cnpj" placeholder="CNPJ" value="{{isset($orgao->cnpj) ? $orgao->cnpj : '' }}" required> 
                        </div>
                        <div class="form-group">
                            <label for="responsavel">Responsavel:</label>
                            <input type="text" class="form-control" id="responsavel" name="responsavel" value="{{isset($orgao->responsavel) ? $orgao->responsavel : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="email">E-mail:</label>
                            <input type="email" class="form-control" id="email" name="email" value="{{isset($orgao->email) ? $orgao->email : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="telefone">Telefone:</label>
                            <input type="tel" class="form-control" id="telefone" name="telefone" value="{{isset($orgao->telefone) ? $orgao->telefone : '' }}" required>
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input" name="ativo" id="ativo"  value="1" {{isset($orgao->ativo) ? 'checked' : ''}}>
                            <label class="custom-control-label" for="ativo">Ativo</label>
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
                                <i class="fa fa-check-circle mr-1"></i> Salvar
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
