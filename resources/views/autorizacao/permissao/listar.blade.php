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
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Permissões</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Autorização</li>
                    <li class="breadcrumb-item active" aria-current="page">Permissões</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- END Hero -->

<!-- Page Content -->
<div class="content">

    <!-- Todas as Permissões -->
    <!-- Dynamic Table with Export Buttons -->
    <div class="block block-rounded">

        @if (session('sucesso'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{session('sucesso')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @elseif (session('delete'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            {{session('delete')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @elseif (session('erro'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{session('erro')}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        <div class="block-header block-header-default">
            <h3 class="block-title">Todas as Permissões</h3>
        </div>
        <div class="block-content block-content-full">
            <!-- DataTables init on table by adding .js-dataTable-buttons class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _js/pages/be_tables_datatables.js -->
            <table class="table table-bordered table-striped table-vcenter js-dataTable-full">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 80px;">#</th>
                        <th>URL</th>
                        <th class="d-none d-sm-table-cell" style="width: 30%;">Descrição</th>
                        <th style="width: 15%;">Ação</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($permissao as $key)
                    <tr>
                        <td class="text-center">{{$key->id}}</td>
                        <td class="font-w600">{{$key->nome}}</td>
                        <td class="d-none d-sm-table-cell">{{$key->descricao}}</td>
                        <td> 
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="Delete" onclick="return myFunction({{$key->id}})">
                                <i class="fa fa-times"></i>
                            </button>
                        </td>
                    </tr>
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Dynamic Table with Export Buttons -->
    <!-- END Todas as Permissões -->



    <!-- Cadastro de Permissões -->
    <div class="block block-rounded">

        @if (session('erro'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{session('erro')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        <div class="block-header block-header-default">
            <h3 class="block-title">Cadastro de Permissões</h3>
        </div>
        <div class="block-content block-content-full">
            <form class="" action="{{route('permissao.salvar')}}" method="post">
                {{ csrf_field() }}
                {{-- <div class="row">
                    <div class="form-group col-sm-12">
                    <label for="tipop">Tipo de permissão:</label>
                    <select class="form-control" id="tppermissao" name="tppermissao" required>
                        <option value="" selected>Selecione</option>
                        <option value="1">Rotas</option>
                        <option value="2">Definir manualmente</option>
                    </select>
                    </div>
                </div> --}}
                <div class="row">
                    <div class="form-group col-sm-12"
                    {{-- id="rotas" --}}
                    >
                        <label for="Permi">Permissão:</label>
                        <select class="form-control" id="nome" name="nome" required>
                            <option value="">SELECIONE A PERMISSÃO (NOME DA ROTA)</option>
                            @foreach($listPermissao as $key)
                            <option value="{{ $key[0] }}">
                                • URL: {{$key[0]}}
                                << >>
                                ACTION: {{$key[1]}}
                            </option>
                            @endforeach
                        </select>
                    </div>
                    {{-- <div class="form-group col-sm-12" id="manual">
                        <label for="Permi">Inserir Permissão:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="Desc" />
                    </div> --}}
                </div>
                <div class="row">
                    <div class="form-group col-sm-12">
                        <label for="Descricao">Descrição:</label>
                        <input type="text" class="form-control"
                        onkeyup="this.value = this.value.toUpperCase();"
                        id="descricao" name="descricao" placeholder="Descrição"
                        value="" />
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Cadastrar Permissão</button>
                    {{-- <br><br>
                    <a href="{{route('permissao')}}">Listar Permissões</a> --}}
                </div>
            </form>
        </div>
    </div>
    <!-- END Cadastro de Permissões -->
</div>

<script>
    function myFunction(i) {

        //var idK = element.id;
        var c = confirm('Tem certeza que deseja deletar?');
        if( c == true){
            var a = "/autorizacao/permissao/excluir/"
            var b = i
            window.location.href = a.concat(b)
        }
    }
</script>
@endsection
