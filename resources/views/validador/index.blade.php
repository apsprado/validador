@extends('layouts.backend')

    @section('css_before')
        <!-- Page JS Plugins CSS -->
        <link rel="stylesheet" href="{{ asset('js/plugins/datatables/dataTables.bootstrap4.css') }}">
        <link rel="stylesheet" href="{{ asset('js/plugins/datatables/buttons-bs4/buttons.bootstrap4.min.css') }}">
    @endsection

    @section('js_after')
        <!-- Page JS Plugins -->
        <script src="{{ asset('js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/buttons/buttons.print.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/buttons/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/buttons/buttons.flash.min.js') }}"></script>
        <script src="{{ asset('js/plugins/datatables/buttons/buttons.colVis.min.js') }}"></script>
        <script src="{{ asset('js/plugins/refresh/refresh.js') }}"></script>

        <!-- Page JS Code -->
        <script src="{{ asset('js/pages/tables_datatables.js') }}"></script>
    @endsection


@section('content')

<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Validador de URLs</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Validador de URLs</li>
                    <li class="breadcrumb-item active" aria-current="page">Listar</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- END Hero -->

<!-- Page Content -->
<div class="content">
        
        @if (session('sucesso'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{session('sucesso')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @elseif (session('delete'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{session('delete')}}
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

    <!-- Todas as URLS -->
    <div class="block block-rounded">
        <div class="block-header block-header-default">
            <h3 class="block-title">URLs Cadastradas</h3>
                <button type="button" id="btn" class="btn btn-info mr-1 mb-3">
                    <i class="fa fa-fw fa-plus mr-1"></i> Atualizar
                </button>
            <a href="{{route('validador.create')}}">
                <button type="button" class="btn btn-success mr-1 mb-3">
                    <i class="fa fa-fw fa-plus mr-1"></i> Novo
                </button>
            </a>

        </div>
        <div class="block-content block-content-full">
               <table class="table table-bordered table-striped table-vcenter js-dataTable-full">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 80px;">#</th>
                        <th>Nome</th>
                        <th>URL</th>
                        <th>Status</th>
                        <th>Resposta</th>
                        <th>Ultima Verificação</th>
                        <th style="width: 15%;">Ação</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($validador as $key)
                    <tr>
                        <td>{{$key->id}}</td>
                        <td>{{$key->nome}}</td>
                        <td>{{$key->url}}</td>
                        <td>{{$key->status->status}}</td>
                        <td>{{$key->status->status_description}}</td>
                        <td>{{$key->url_verified_at}}</td>
                        <td>
                            <a href="{{route('validador.show', $key->id)}}">
                            <button type="button" class="btn btn-sm btn-info" data-toggle="tooltip" data-placement="top" title="Visualizar" data-original-title="Visualizar">
                                <i class="fa fa-atlas"></i>
                            </button>
                            </a>
                            <a href="{{route('validador.edit', $key->id)}}">
                            <button type="button" class="btn btn-sm btn-warning" data-toggle="tooltip" data-placement="top" title="Editar" data-original-title="Editar">
                                <i class="fa fa-pencil-alt"></i>
                            </button>
                            </a>
                            <a href="{{route('validador.destroy', $key->id)}}">
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Deletar" data-original-title="Deletar">
                                <i class="fa fa-trash-alt"></i>
                            </button>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        
    </div>
    <!-- END Todas URLs -->
</div>
@endsection
