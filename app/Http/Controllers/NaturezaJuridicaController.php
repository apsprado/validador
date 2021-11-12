<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Auth;
use App\Models\NaturezaJuridica;
use App\Models\ConveniadosLog;

class AtividadeController extends Controller
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
			$atividade = Atividade::all();
			Log::info('Acesso: atividade - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: atividade',
				'conteudo' => $atividade,
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return view('atividade.index', compact('atividade') );

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade',
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
			Log::info('Acesso:  atividade.create - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: atividade.create',
					'conteudo' => 'Cadastro de Atividade',
					'operacao' => 'create',
					'user_id' => Auth::user()->id
				]);	

				return view('atividade.form');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.create - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade.create',
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
                'nome' => request('nome'),
                'codigo' => request('codigo'),
                'co_secao' => request('co_secao'),
                'ativo' => request('ativo')
            ];
            
            Atividade::create($data);
			
			Log::info('Acesso:  atividade.store - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: atividade.store',
					'conteudo' => 'Nova Atividade Economica',
					'operacao' => 'store',
					'user_id' => Auth::user()->id
				]);	

			return redirect()->route('atividade.index')->with('sucesso', 'Registro salvo com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.store - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade.store',
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
			$atividade = atividade::where('id', $id)->first();
            Log::info('Acesso: atividade.edit - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: atividade.edit',
				'conteudo' => $atividade,
				'operacao' => 'edit',
				'user_id' => Auth::user()->id
			]);		
			
			return view('atividade.form', compact('atividade'));

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.edit - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade.edit',
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
                'nome' => request('nome'),
                'codigo' => request('codigo'),
                'co_secao' => request('co_secao'),
                'ativo' => request('ativo')
            ];
            
            Atividade::where('id', $id)->update($data);
			
			Log::info('Acesso:  atividade.update - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: atividade.update',
					'conteudo' => 'Atualização de Atividade Economica',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('atividade.index')->with('sucesso', 'Registro atualizado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade.update',
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
            $atividade = Atividade::where('id', $id)->first();
			Atividade::where('id', $id)->delete();

			Log::info('Acesso:  atividade.destroy - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: atividade.destroy',
					'conteudo' => 'Atividade Economica Deletada: ' .$atividade,
					'operacao' => 'destroy',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('atividade.index')->with('sucesso', 'Registro deletado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.destroy - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: atividade.destroy',
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
    public function InativarAtivarAtividade($id)
	{

        try
		{
            $atividade = Atividade::find($id);
            if ($atividade->ativo == 1)
            {
                $atividade->ativo = 0;
                $msg = 'Atividade Economica Inativado';
            }else
            {
                $atividade->ativo = 1;
                $msg = 'Atividade Economica Ativado';
            }
    
            $atividade->save();
			
			Log::info('Acesso:  atividade.InativarAtivarAtividade - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: atividade.InativarAtivarAtividade',
					'conteudo' => 'Atualização de status da Atividade Economica',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->back()->with('sucesso', $msg);
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: atividade.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: atividade.InativarAtivarAtividade',
				'conteudo' => $e->getMessage(),
				'operacao' => 'update',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
        
    }

}
