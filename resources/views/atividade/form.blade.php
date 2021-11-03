@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Atividade Econômica</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Atividade Econômica</li>
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
                    <i class="fa fa-fw fa-city-circle text-muted mr-1"></i>Atividade Econômica
                </h2>
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Aqui são as informações importantes para identificação da Atividade Econômica.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="nome">Nome da Atividade Econômica</label>
                            <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite o nome da Atividade Econômica.." value="{{isset($atividade->nome) ? $atividade->nome : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="codigo">Codigo</label>
                            <input type="text" class="form-control" id="codigo" name="codigo" placeholder="" maxlength="10" value="{{isset($atividade->codigo) ? $atividade->codigo : '' }}" required>
                        </div>
                        <div class="form-group">
                            <label for="secao">Seção</label>
                            <input type="text" class="form-control" id="co_secao" name="co_secao" placeholder="" value="{{isset($atividade->co_secao) ? $atividade->co_secao : '' }}" required> 
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input" name="ativo" id="ativo"  value="1" {{isset($atividade->ativo) ? 'checked' : ''}}>
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
