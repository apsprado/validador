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

//FORM EXTERNO USUARIO
Route::post('/usuarios/salvarUsuario', "UsersController@SalvarUsuario")->name('usuarios.salvarUsuario');

// LOGIN
Route::get('/', "UsersController@index")->name('login');
Route::post('/login', "UsersController@entrar");
// FINAL - LOGIN

// SAIR
Route::get('/sair', function () { Auth::logout(); return redirect()->route('login'); })->name('sair');
Route::get('/unauthorized', function () { return view('erp.unauthorized'); });
Route::get('/naocadastrado', function () { return view('erp.naocadastrada'); });
// FINAL - SAIR


// MÓDULO AUTENTICAÇÃO
Route::group(['middleware' => ['auth']], function () {

  // MÓDULO ADMINISTRATIVO.

      // CONTAS USUARIO
      Route::get('/contausuario', "UsersController@conta")->name('contausuario');
      Route::post('/contausuario/atualizar', "UsersController@updateconta")->name('contausuario.update');
     
      // CRIAÇÃO E EDIÇÃO DOS USUARIOS
      Route::get('/usuarios/listar', "UsersController@all")->name('usuarios.listar');
      Route::get('/usuarios/cadastrar', "UsersController@create")->name('usuarios.cadastrar');
      Route::post('/usuarios/cadastrar', "UsersController@store")->name('usuarios.salvar');
      Route::get('/usuarios/editar/{id}', "UsersController@edit")->name('usuarios.editar');
      Route::post('/usuarios/editar/{id}', "UsersController@update")->name('usuarios.atualizar');
      Route::get('/usuarios/alterarSenha/{id}', "UsersController@alterar")->name('usuarios.alterar');

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