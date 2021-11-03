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

        <!-- Page JS Code -->
        <script src="{{ asset('js/pages/tables_datatables.js') }}"></script>
    @endsection


@section('content')

<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Orgãos</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Orgãos</li>
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

    <!-- Todos os Orgãos -->
    <div class="block block-rounded">
        <div class="block-header block-header-default">
            <h3 class="block-title">Orgãos</h3>
            <a href="{{route('orgao.create')}}">
                <button type="button" class="btn btn-success mr-1 mb-3">
                    <i class="fa fa-fw fa-plus mr-1"></i> Novo Orgão
                </button>
            </a>
        </div>
        <div class="block-content block-content-full">
               <table class="table table-bordered table-striped table-vcenter js-dataTable-full">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 80px;">#</th>
                        <th>Nome</th>
                        <th>Sigla</th>
                        <th>CNPJ</th>
                        <th>Responsavel</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Ativo</th>
                        <th style="width: 15%;">Ação</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($orgao as $key)
                    <tr>
                        <td>{{$key->id}}</td>
                        <td>{{$key->nome_orgao}}</td>
                        <td>{{$key->sigla_orgao}}</td>
                        <td>{{$key->cnpj}}</td>
                        <td>{{$key->responsavel}}</td>
                        <td>{{$key->email}}</td>
                        <td>{{$key->telefone}}</td>
                        <td>
                            @if ($key->ativo == 1)
                            <span style="color: green;">Sim</span>
                            @else
                            <span style="color: red;">Não</span>
                            @endif
                        </td>
                        <td>
                            <a href="{{route('orgao.edit', $key->id)}}">
                            <button type="button" class="btn btn-sm btn-info" data-toggle="tooltip" data-placement="top" title="Editar" data-original-title="Editar">
                                <i class="fa fa-pencil-alt"></i>
                            </button>
                            </a>
                            @if ($key->ativo == 1)
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Inativar"
                                onclick="return AtivarInativar({{$key->id}})">
                                <i class="fa fa-circle"></i>
                            </button>
                            @else
                            <button type="button" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Ativar"
                                onclick="return AtivarInativar({{$key->id}})">
                                <i class="fa fa-check-circle"></i>
                            </button>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Todos os Orgãos -->
</div>



<script>
    function AtivarInativar(i) {
        //var idK = element.id;
        var c = confirm('Tem certeza que deseja Ativou ou Inativar o Orgão?');
        if( c == true){
            var a = "/orgao/inativarAtivar/"
            var b = i
            window.location.href = a.concat(b)
        }
    }
</script>

@endsection
