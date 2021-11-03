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
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Usuários</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Usuários</li>
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
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            {{session('delete')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif

    <!-- Todos os Usuarios -->
    <div class="block block-rounded">
        <div class="block-header block-header-default">
            <h3 class="block-title">Usuários</h3>
            <a href="{{route('usuarios.cadastrar')}}">
                <button type="button" class="btn btn-success mr-1 mb-3">
                    <i class="fa fa-fw fa-plus mr-1"></i> Novo Usuário
                </button>
            </a>
        </div>
        <div class="block-content block-content-full">
               <table class="table table-bordered table-striped table-vcenter js-dataTable-full">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 80px;">#</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Ramal</th>
                        <th>Orgao</th>
                        <th>Cargo</th>
                        <th>Grupo</th>
                        <th>Ativo</th>
                        <th style="width: 15%;">Ação</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($users as $key)
                    <tr>
                        <td>{{$key->id}}</td>
                        <td>{{$key->name}}</td>
                        <td>{{$key->email}}</td>
                        <td>{{$key->ramal}}</td>
                        <td>{{$key->orgao->nome_orgao}}</td>
                        <td>{{$key->cargo}}</td>
                        <td>{{$key->grupo->nome}}</td>
                        <td>
                            @if ($key->ativo == 1)
                            <span style="color: green;">Sim</span>
                            @else
                            <span style="color: red;">Não</span>
                            @endif
                        </td>
                        <td>
                            <button type="button" class="btn btn-sm btn-info" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Editar" onclick="return editar({{$key->id}})">
                                <i class="fa fa-pencil-alt"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-warning" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Redefinir Senha"
                                onclick="return redefinirSenha({{$key->id}})">
                                <i class="fa fa-key"></i>
                            </button>
                            @if ($key->ativo == 1)
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Inativar Usuário"
                                onclick="return myFunction({{$key->id}})">
                                <i class="fa fa-user-times"></i>
                            </button>
                            @else
                            <button type="button" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Ativar Usuário"
                                onclick="return myFunction({{$key->id}})">
                                <i class="fa fa-user-check"></i>
                            </button>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Todos os Usuarios -->
</div>



<script>
    function myFunction(i) {
            //var idK = element.id;
            var c = confirm('Tem certeza que deseja ativar/inativar?');
            if( c == true){
                var a = "/usuarios/inativarAtivar/"
                var b = i
                window.location.href = a.concat(b)
            }
        }


    function editar(i) {

            var a = "/usuarios/editar/"
            var b = i
            window.location.href = a.concat(b)

        }

    function redefinirSenha(i) {

            var c = confirm('Tem certeza que deseja alterar a senha do usuário? A senha será redefinida para 123456.');
            if( c == true){
                var a = "/usuarios/alterarSenha/"
                var b = i
                window.location.href = a.concat(b)
            }
        }

</script>

@endsection
