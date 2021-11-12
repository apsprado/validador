@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Validador de URLs</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Validador de URLs</li>
                    <li class="breadcrumb-item active" aria-current="page">Status da URL</li>
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
                <h2 class="content-heading pt-0">
                    <i class="fa fa-fw fa-city-circle text-muted mr-1"></i>Status da URL
                </h2>
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Identificação.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="nome">Nome do Site</label>
                            <input type="text" class="form-control" id="nome" name="nome" value="{{isset($validador->nome) ? $validador->nome : '' }}" readonly>
                        </div>
                        <div class="form-group">
                            <label for="url">URL</label>
                            <input type="url" class="form-control" id="url" name="url"  value="{{isset($validador->url) ? $validador->url : '' }}" readonly>
                        </div>   
                        <div class="form-group">
                            <label for="url">Status</label>
                            <input type="text" class="form-control" id="status" name="status"  value="{{isset($validador->status_code) ? $validador->status_code : '' }}" readonly>
                        </div>
                        <div class="form-group">
                            <label for="url">Resposta</label>
                            <input type="text" class="form-control" id="resposta" name="resposta" value="{{isset($validador->resposta) ? $validador->resposta : '' }}" readonly>
                        </div>
                        <div class="form-group">
                            <label for="url">Data Última Verificação</label>
                            <input type="text" class="form-control" id="data" name="data" value="{{isset($validador->url_verified_at) ? $validador->url_verified_at : '' }}" readonly>
                        </div>                       
                    </div>
                </div>
                <!-- END User Profile -->
                <!-- Submit -->
                <div class="row push">
                    <div class="col-lg-8 col-xl-5 offset-lg-4">
                        <div class="form-group">
                            <button type="submit" class="btn btn-alt-warning" onclick="window.history.go(-1); return false;">
                                <i class="fa fa-backward mr-1"></i> Voltar
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
