@extends('layouts.backend')
@section('content')
<!-- Hero -->
<div class="bg-body-light">
    <div class="content content-full">
        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
            <h1 class="flex-sm-fill font-size-h2 font-w400 mt-2 mb-0 mb-sm-2">Grupo Permissões</h1>
            <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Autorização</li>
                    <li class="breadcrumb-item active" aria-current="page">Grupo Permissões</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- END Hero -->


<!-- Page Content -->
<div class="content">
    <div class="row">
      <div class="col-md-6">
        <h2 class="content-heading">Permissões Não Cadastradas</h2>
          <!-- Permissões não cadastradas -->
          <div class="block block-rounded">
              <div class="block-header block-header-default">
                  <h3 class="block-title">GRUPO: <strong>{{$nome}}</strong></h3>
              </div>
              <div class="block-content block-content-full">
                <form class="" action="{{route('grupo.permissoes.salvar')}}" method="post">
                  {{ csrf_field() }}
                  <div class="row">
                    <div class="form-group col-sm-12">
                      @foreach($permissoes as $key)
                        <p>
                          <input type="checkbox" name="permissao_id[]" value="{{$key->id}}">
                          {{$key->descricao}}
                          {{-- - ({{$key->nome}}) --}}
                        </p>
                      @endforeach
                      <input type="hidden" name="grupouser_id" value="{{$id}}" />
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary">Adicionar Permissão</button>
                  </div>
                </form>
              </div>
          </div>
          <!-- END Permissões não cadastradas -->
      </div>

      <div class="col-md-6">
          <h2 class="content-heading">Permissões Cadastradas</h2>
          <!-- Permissões Cadastradas -->
          <div class="block block-rounded">
              <div class="block-header block-header-default">
                  <h3 class="block-title">GRUPO: <strong>{{$nome}}</strong></h3>
              </div>
              <div class="block-content block-content-full">
                <table class="table table-hover table-vcenter">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th class="d-none d-sm-table-cell" style="width: 15%;">URL</th>
                            <th class="text-center" style="width: 100px;">Ação</th>
                        </tr>
                    </thead>
                    <tbody>
                      @foreach($permissoesCadastradas as $key)
                        <tr>
                          <td class="font-w200">{{isset($key->descricao) ? $key->descricao : '-'}}</td>
                          <td class="font-w200">{{$key->nome}}</td>
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
          <!-- END Permissões Cadastradas -->
      </div>

    </div>

</div>

<script>
function myFunction(i) {
  //var idK = element.id;
  var c = confirm('Tem certeza que deseja deletar?');
  if( c == true){
    var a = "/autorizacao/grupos/permissoes/excluir/"
    var b = i
    window.location.href = a.concat(b)
  }
}

</script>

@endsection
