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
    
  
  // FINAL - MÓDULO ADMINISTRATIVO.


});