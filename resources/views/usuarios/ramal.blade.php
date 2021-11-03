@extends('layouts.backend')

@section('content')
<section>
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
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
                <div class="col-12">
                    <div class="row">
                        <div class="col-8">
                            <span class="text-muted">Transferir Ligações: <b>[Flash] + Nº Ramal Desejado.</b></span>
                            </br>
                            <span class="text-muted">Puxar Ligações: <b>[*] + 41 + Nº Ramal Desejado.</b></span>
                            </br>
                            <span class="text-muted">TELEFONISTA: <b>3234-4100</b></span>
                            <span class="text-muted">ATENDIMENTO: <b>3234-4144 | 3234-4129</b></span>
                        </div>
                        <div class="col-4">
                        </div>
                    </div>
                    <div class="table-data__tool">
                        <div class="table-data__tool-left"></div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-8">
                                    <strong>RAMAL</strong>
                                </div>
                                <div class="col-4 text-right">
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive table-responsive-data2">
                                        <table class="table" id="tabel">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th>Nome</th>
                                                    <th>Email</th>
                                                    <th>Ramal</th>
                                                    <th>Setor</th>
                                                    <th>Cargo</th>                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($users as $key)
                                                <tr>
                                                    <td>{{$key->name}}</td>
                                                    <td>{{$key->email}}</td>
                                                    <td>{{$key->ramal}}</td>
                                                    <td>{{$key->setor->setor}}</td>
                                                    <td>{{$key->cargo}}</td>                                  
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready( function () {
        $('#tabel').DataTable({
            paging: false,

            language: {
            search: "Buscar:",
            zeroRecords: "Nenhum registro encontrado.",
            info: "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            infoEmpty: "Mostrando 0 até 0 de 0 registros",
            lengthMenu: "Mostrar _MENU_ entradas",
            infoFiltered: "(filtrado de _MAX_ registros)",
            paginate: {
                first: "Primeiro",
                previous: "Anterior",
                next: "Proximo",
                last: "Ultimo"
            },
            emptyTable: "Nenhum registro encontrado."
            }
        });
    });
</script>
@endsection
