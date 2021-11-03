<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Auth;
use App\Models\Orgao;
use App\Models\ConveniadosLog;

class OrgaoController extends Controller
{

    /**
     * 
     * Construtor de eventos de LOGs.
     * 
     */
    protected $conveniados_log;

	public function __construct(ConveniadosLog $conveniados_log)
	{
		$this->conveniados_log = $conveniados_log;
	}

    /**
     * Display a listing of the resource.
     * Exibe uma lista do recurso.
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try
		{
			$orgao = Orgao::all();
			Log::info('Acesso: orgao - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: orgao',
				'conteudo' => $orgao,
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return view('orgao.index', compact('orgao') );

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao',
				'conteudo' => $e->getMessage(),
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    /**
     * Show the form for creating a new resource.
     * Mostra o formulário de criação de um novo recurso.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        try
		{
			Log::info('Acesso:  orgao.create - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: orgao.create',
					'conteudo' => 'Cadastro de Orgão',
					'operacao' => 'create',
					'user_id' => Auth::user()->id
				]);	

				return view('orgao.form');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.create - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao.create',
				'conteudo' => $e->getMessage(),
				'operacao' => 'create',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    /**
     * Store a newly created resource in storage.
     * Armazene um recurso recém-criado no armazenamento.
     * 
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try
		{
            $data = [
                'nome_orgao' => request('nome_orgao'),
                'sigla_orgao' => request('sigla_orgao'),
                'cnpj' => request('cnpj'),
                'responsavel' => request('responsavel'),
                'email' => request('email'),
                'telefone' => request('telefone'),
                'ativo' => request('ativo')
            ];
            
            Orgao::create($data);
			
			Log::info('Acesso:  orgao.store - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: orgao.store',
					'conteudo' => 'Novo Orgão',
					'operacao' => 'store',
					'user_id' => Auth::user()->id
				]);	

			return redirect()->route('orgao.index')->with('sucesso', 'Registro salvo com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.store - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao.store',
				'conteudo' => $e->getMessage(),
				'operacao' => 'store',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    /**
     * Display the specified resource.
     * Exibe o recurso especificado.
     * 
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     * Mostra o formulário para editar o recurso especificado.
     * 
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try
		{
			$orgao = Orgao::where('id', $id)->first();
            Log::info('Acesso: orgao.edit - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: orgao.edit',
				'conteudo' => $orgao,
				'operacao' => 'edit',
				'user_id' => Auth::user()->id
			]);		
			
			return view('orgao.form', compact('orgao'));

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.edit - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao.edit',
				'conteudo' => $e->getMessage(),
				'operacao' => 'edit',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    /**
     * Update the specified resource in storage.
     * Atualize o recurso especificado no armazenamento.
     * 
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try
		{
            $data = [
                'nome_orgao' => request('nome_orgao'),
                'sigla_orgao' => request('sigla_orgao'),
                'cnpj' => request('cnpj'),
                'responsavel' => request('responsavel'),
                'email' => request('email'),
                'telefone' => request('telefone'),
                'ativo' => request('ativo')
            ];
            
            Orgao::where('id', $id)->update($data);
			
			Log::info('Acesso:  orgao.update - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: orgao.update',
					'conteudo' => 'Atualização Orgão',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('orgao.index')->with('sucesso', 'Registro atualizado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao.update',
				'conteudo' => $e->getMessage(),
				'operacao' => 'update',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    /**
     * Remove the specified resource from storage.
     * Remova o recurso especificado do armazenamento.
     * 
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        try
		{
            $orgao = Orgao::where('id', $id)->first();
			Orgao::where('id', $id)->delete();

			Log::info('Acesso:  orgao.destroy - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: orgao.destroy',
					'conteudo' => 'Orgão Deletado: ' .$orgao,
					'operacao' => 'destroy',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('orgao.index')->with('sucesso', 'Registro deletado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.destroy - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: orgao.destroy',
				'conteudo' => $e->getMessage(),
				'operacao' => 'destroy',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }


    /**
     * 
     * Muda o status Ativo/Inativo.
     * 
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function inativarAtivar($id)
	{

        try
		{
            $orgao = Orgao::find($id);
            if ($orgao->ativo == 1)
            {
                $orgao->ativo = 0;
                $msg = 'Orgão Inativado';
            }else
            {
                $orgao->ativo = 1;
                $msg = 'Orgão Ativado';
            }
    
            $orgao->save();
			
			Log::info('Acesso:  orgao.inativarAtivar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: orgao.inativarAtivar',
					'conteudo' => 'Atualização de status Orgão',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->back()->with('sucesso', $msg);
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: orgao.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: orgao.inativarAtivar',
				'conteudo' => $e->getMessage(),
				'operacao' => 'update',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
        
    }

}
