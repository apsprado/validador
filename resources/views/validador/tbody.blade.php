<div class="block-content block-content-full" id="some_div"> 
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
