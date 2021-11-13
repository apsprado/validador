<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\Permissao;
use App\Models\Gruposuser;
use App\Models\User;
use App\Models\Permissaogrupo;
use Route;

class AutorizacaoController extends Controller
{

    //PERMISSAO
    public function cadastrarPermissao(Request $request)
    {
        try
        {
            Permissao::create($request->all());
            return redirect()->back()->with('sucesso', 'Permissão adicionada.');
        }
        catch(\Illuminate\Database\QueryException $e)
        {
            return redirect()->back()->with('delete', 'Permissão ja cadastrada.');
        }
        catch(PDOException $e)
        {
            return redirect()->back()->with('delete', 'Algo errado aconteceu, tente novamente!');
        }

    }

    public function excluirPermissao($id)
    {
        $nome = Permissao::find($id);
        if (Permissaogrupo::where('permissoes_id',$nome->id)->exists()){
            return redirect()->back()->with('erro', 'Não é possivel deletar a permissão, pôs está sendo usada em um grupo.');
        }else{
            $nome->delete();
            return redirect()->back()->with('delete', 'Permissão deletada.');
        }

    }

    public function listarPermissao()
    {
        //$routeUri = Route::current()->uri();

        $permissao = Permissao::all()->sortBy('nome');
        foreach ($permissao as $todaspermi => $chave) {
            $minhasurl[] = $chave->nome;
        }
        

        $allurl = Route::getRoutes();
        foreach ($allurl as $allpermi => $key) {
            if (!in_array($key->uri(), $minhasurl)) {
                $listPermissao[] = [$key->uri(), $key->getName()];
            }
        }

        return view('autorizacao.permissao.listar', compact('permissao', 'listPermissao'));
    }


    //GRUPOS
    public function cadastrarGrupo(Request $req)
    {
        try
        {
            Gruposuser::create($req->all());
            return redirect()->back()->with('sucesso', 'Grupo criado.');
        }
        catch(\Illuminate\Database\QueryException $e)
        {
            return redirect()->back()->with('erro', 'Grupo ja cadastrada.');
        }
        catch(PDOException $e)
        {
            return redirect()->back()->with('erro', 'Algo errado aconteceu, tente novamente!');
        }

    }

    public function excluirGrupo($id)
    {
        $nome = Gruposuser::find($id);
        if (Permissaogrupo::where('grupouser_id',$nome->id)->exists()) {
            return redirect()->back()->with('error', 'Não é possivel deletar grupo, pôs ele contém permissões.');
        } elseif(User::where('grupoid',$nome->id)->exists()) {
            return redirect()->back()->with('error', 'Não é possivel deletar grupo, pôs há usuário(s) cadastrado(s).');
        } else{
          $nome->delete();
          return redirect()->back()->with('delete', 'Permissão deletada.');
        }
    }

    public function listarGrupo()
    {
        $grupos = Gruposuser::all();
        return view('autorizacao.grupo.listar', compact('grupos'));
    }


    //GRUPOPERMISSOES
    public function listarPermissoesGrupo($idgrupo)
    {
        $permGrupo = Permissao::join('permissao_grupo', function ($join) {
            $join->on('permissoes.id', '=', 'permissao_grupo.permissoes_id');
            })
            ->where('permissao_grupo.grupouser_id', '=', $idgrupo)
            ->select('permissoes.id');

        $permissoes = Permissao::whereNotIn('id', $permGrupo)->orderBy('descricao', 'ASC')->get();

        $grupo = Gruposuser::where('id', $idgrupo)->get();
        foreach($grupo as $val => $v){
            $nome = $v['nome'];
        }

        $permissoesCadastradas = Permissaogrupo::join('permissoes', function ($j) {
             $j->on('permissoes.id', '=', 'permissao_grupo.permissoes_id');
        })
        ->where('permissao_grupo.grupouser_id', '=', $idgrupo)
        ->select('permissoes.nome','permissoes.descricao','permissao_grupo.*')
        ->orderBy('permissoes.descricao', 'asc')
        ->get();

        $id = $idgrupo;

        // $categoriasCadastradas = Gestor::join('jucese_patrimonio.categoria', function($join){
        //     $join->on('jucese_patrimonio.gestor.id_categoria', '=', 'jucese_patrimonio.categoria.id');
        // }) ->where('jucese_patrimonio.gestor.id_grupo', '=', $idgrupo)
        // ->select('jucese_patrimonio.gestor.id', 'jucese_patrimonio.categoria.descricao')
        // ->get();

        // $catGestor = Categoria::join('jucese_patrimonio.gestor', function ($join) {
        //     $join->on('jucese_patrimonio.categoria.id', '=', 'jucese_patrimonio.gestor.id_categoria');
        // })->where('jucese_patrimonio.gestor.id_grupo', '=', $idgrupo)->select('jucese_patrimonio.categoria.id');

        // $categoria = Categoria::whereNotIn('id', $catGestor)->get();

        //return view('autorizacao.grupo.permissoes.inserir', compact('permissoes', 'permissoesCadastradas', 'id', 'nome', 'categoria', 'categoriasCadastradas'));
        return view('autorizacao.grupo.permissoes.inserir', compact('permissoes', 'permissoesCadastradas', 'id', 'nome'));
    }

    public function cadastrarPermissoesGrupo(Request $r)
    {

        $reque = $r->input('permissao_id');
        foreach($reque as $key => $val){
           Permissaogrupo::create([
                'grupouser_id' => $r->input('grupouser_id'),
                'permissoes_id' => $val
           ]);
        }
        return redirect()->back()->with('sucesso', 'ok');
    }

    public function excluirPermissoesGrupo($id)
    {
        $permissaoGrup = Permissaogrupo::find($id);
        $permissaoGrup->delete();

        return redirect()->back()->with('delete', 'Permissão deletada.');
    }
   

}
