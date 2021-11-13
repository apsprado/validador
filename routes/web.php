<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


// Example Routes
Route::view('/', 'landing');
Route::match(['get', 'post'], '/dashboard', function(){
    return view('dashboard');
});
Route::view('/pages/slick', 'pages.slick');
Route::view('/pages/datatables', 'pages.datatables');
Route::view('/pages/blank', 'pages.blank');

Route::post('/usuarios/salvarUsuario', "UsersController@SalvarUsuario")->name('usuarios.salvarUsuario');

// LOGIN
Route::get('/', "UsersController@index")->name('login');
Route::post('/login', "UsersController@entrar");
// FINAL - LOGIN

// SAIR
Route::get('/sair', function () {
  Auth::logout();
  return redirect()->route('login');
})->name('sair');
Route::get('/unauthorized', function () {
  return view('erp.unauthorized');
});
Route::get('/naocadastrado', function () {
  return view('erp.naocadastrada');
});
// FINAL - SAIR

// MÓDULO AUTENTICAÇÃO
Route::group(['middleware' => ['auth']], function () {

  // MÓDULO ADMINISTRATIVO.

    // CONTAS USUARIO
      Route::get('/contausuario', "UsersController@conta")->name('contausuario');
      Route::post('/contausuario/atualizar', "UsersController@updateconta")->name('contausuario.update');
     
      // CRIAÇÃO E EDIÇÃO DOS USUARIOS
      Route::get('/usuarios/listar', "UsersController@all")->name('usuarios.listar');
      Route::get('/usuarios/ramal', "UsersController@ramal2")->name('usuarios.ramal');
      Route::get('/usuarios/cadastrar', "UsersController@create")->name('usuarios.cadastrar');
      Route::post('/usuarios/cadastrar', "UsersController@store")->name('usuarios.salvar');
      Route::get('/usuarios/editar/{id}', "UsersController@edit")->name('usuarios.editar');
      Route::post('/usuarios/editar/{id}', "UsersController@update")->name('usuarios.atualizar');
      Route::get('/usuarios/alterarSenha/{id}', "UsersController@alterar")->name('usuarios.alterar');
      Route::get('/usuarios/inativarAtivar/{id}', "UsersController@inativarAtivar")->name('usuarios.inativarAtivar');
    
      // GRUPOS
      Route::get('/autorizacao/grupos', "AutorizacaoController@listarGrupo")->name('grupoUsuario');
      Route::get('/autorizacao/grupos/excluir/{id}', "AutorizacaoController@excluirGrupo")->name('grupoUsuario.excluir');
      Route::post('/autorizacao/grupos/salvar', "AutorizacaoController@cadastrarGrupo")->name('grupoUsuario.salvar');
    
      // PERMISSÕES DOS GRUPOS
      Route::get('/autorizacao/grupos/permissoes/inserir/{id}', "AutorizacaoController@listarPermissoesGrupo")->name('grupo.permissoes.inserir');
      Route::get('/autorizacao/grupos/permissoes/excluir/{id}', "AutorizacaoController@excluirPermissoesGrupo")->name('grupo.permissoes.excluir');
      Route::post('/autorizacao/grupos/permissoes/salvar', "AutorizacaoController@cadastrarPermissoesGrupo")->name('grupo.permissoes.salvar');
    
      // PERMISSÕES
      Route::get('/autorizacao/permissao', "AutorizacaoController@listarPermissao")->name('permissao');
      Route::get('/autorizacao/permissao/excluir/{id}', "AutorizacaoController@excluirPermissao")->name('permissao.excluir');
      Route::post('/autorizacao/permissao/salvar', "AutorizacaoController@cadastrarPermissao")->name('permissao.salvar');

      // ORGÃO
      Route::get('/orgao', "OrgaoController@index")->name('orgao.index');
      Route::get('/orgao/create', "OrgaoController@create")->name('orgao.create');
      Route::post('/orgao/store', "OrgaoController@store")->name('orgao.store');
      //Route::get('/orgao/{id}', "OrgaoController@show")->name('orgao.show');
      Route::get('/orgao/{id}/edit', "OrgaoController@edit")->name('orgao.edit');
      Route::put('/orgao/{id}/edit', "OrgaoController@update")->name('orgao.update');
      Route::delete('/orgao/destroy/{id}', "OrgaoController@destroy")->name('orgao.destroy');
      Route::get('/orgao/inativarAtivar/{id}', "OrgaoController@inativarAtivar")->name('orgao.inativarAtivar');

      // ATIVIDADE ECONÔMICA
      Route::get('/atividade', "AtividadeController@index")->name('atividade.index');
      Route::get('/atividade/create', "AtividadeController@create")->name('atividade.create');
      Route::post('/atividade/store', "AtividadeController@store")->name('atividade.store');
      //Route::get('/atividade/{id}', "atividadeController@show")->name('atividade.show');
      Route::get('/atividade/{id}/edit', "AtividadeController@edit")->name('atividade.edit');
      Route::put('/atividade/{id}/edit', "AtividadeController@update")->name('atividade.update');
      Route::delete('/atividade/destroy/{id}', "AtividadeController@destroy")->name('atividade.destroy');
      Route::get('/atividade/InativarAtivarAtividade/{id}', "AtividadeController@InativarAtivarAtividade")->name('atividade.InativarAtivarAtividade');
    

       // MUNICÍPIOS
       Route::get('/municipio', "MunicipioController@index")->name('municipio.index');
       Route::get('/municipio/create', "MunicipioController@create")->name('municipio.create');
       Route::post('/municipio/store', "MunicipioController@store")->name('municipio.store');
       //Route::get('/municipio/{id}', "MunicipioController@show")->name('municipio.show');
       Route::get('/municipio/{id}/edit', "MunicipioController@edit")->name('municipio.edit');
       Route::put('/municipio/{id}/edit', "MunicipioController@update")->name('municipio.update');
       Route::delete('/municipio/destroy/{id}', "MunicipioController@destroy")->name('municipio.destroy');
       Route::get('/municipio/InativarAtivarMunicipio/{id}', "MunicipioController@InativarAtivarMunicipio")->name('municipio.InativarAtivarMunicipio');


        // NATUREZA JURIDICA
        Route::get('/natureza_juridica', "NaturezaJuridicaController@index")->name('natureza_juridica.index');
        Route::get('/natureza_juridica/create', "NaturezaJuridicaController@create")->name('natureza_juridica.create');
        Route::post('/natureza_juridica/store', "NaturezaJuridicaController@store")->name('natureza_juridica.store');
        //Route::get('/natureza_juridica/{id}', "NaturezaJuridicaController@show")->name('natureza_juridica.show');
        Route::get('/natureza_juridica/{id}/edit', "NaturezaJuridicaController@edit")->name('natureza_juridica.edit');
        Route::put('/natureza_juridica/{id}/edit', "NaturezaJuridicaController@update")->name('natureza_juridica.update');
        Route::delete('/natureza_juridica/destroy/{id}', "NaturezaJuridicaController@destroy")->name('natureza_juridica.destroy');
        Route::get('/natureza_juridica/InativarAtivarNaturezaJuridica/{id}', "NaturezaJuridicaController@InativarAtivarNaturezaJuridica")->name('natureza_juridica.InativarAtivarNaturezaJuridica');
  

         // VALIDADOR DE URL
         Route::get('/validador', "ValidadorController@index")->name('validador.index');
         Route::get('/validador/create', "ValidadorController@create")->name('validador.create');
         Route::post('/validador/store', "ValidadorController@store")->name('validador.store');
         Route::get('/validador/{id}/show', "ValidadorController@show")->name('validador.show');
         Route::get('/validador/{id}/edit', "ValidadorController@edit")->name('validador.edit');
         Route::put('/validador/{id}/edit', "ValidadorController@update")->name('validador.update');
         Route::get('/validador/{id}/destroy', "ValidadorController@destroy")->name('validador.destroy');
         Route::get('/validador/refresh', "ValidadorController@refresh")->name('validador.refresh');
         Route::get('/validador/testeURL', "ValidadorController@testeUrl")->name('validador.testeUrl');
        
  // FINAL - MÓDULO ADMINISTRATIVO.


});