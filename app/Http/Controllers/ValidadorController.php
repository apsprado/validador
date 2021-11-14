<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Carbon\Carbon;
use Auth;
use App\Models\Validador;
use App\Models\ConveniadosLog;

class ValidadorController extends Controller
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
			$validador = Validador::where('user_id', Auth::user()->id)->get();
			Log::info('Acesso: validador.index - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: validador.index',
				'conteudo' => $validador,
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return view('validador.index', compact('validador') );

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.index - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.index',
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
			Log::info('Acesso:  validador.create - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: validador.create',
					'conteudo' => 'Cadastro de URL',
					'operacao' => 'create',
					'user_id' => Auth::user()->id
				]);	

				return view('validador.form');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.create - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.create',
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
                'url' => request('url'),
                'user_id' => Auth::user()->id
            ];
            
            Validador::create($data);
			
			Log::info('Acesso:  validador.store - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: validador.store',
					'conteudo' => 'Nova URL',
					'operacao' => 'store',
					'user_id' => Auth::user()->id
				]);	

			return redirect()->route('validador.index')->with('sucesso', 'Registro salvo com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.store - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.store',
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
		try
		{
			$validador = Validador::where('id', $id)->where('user_id', Auth::user()->id)->first();
            Log::info('Acesso: validador.show - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: validador.show',
				'conteudo' => $validador,
				'operacao' => 'show',
				'user_id' => Auth::user()->id
			]);		
			
			return view('validador.show', compact('validador'));

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.show - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.show',
				'conteudo' => $e->getMessage(),
				'operacao' => 'show',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
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
			$validador = Validador::where('id', $id)->first();
            Log::info('Acesso: validador.edit - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: validador.edit',
				'conteudo' => $validador,
				'operacao' => 'edit',
				'user_id' => Auth::user()->id
			]);		
			
			return view('validador.form', compact('validador'));

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.edit - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.edit',
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
                'url' => request('url')
            ];
            
            Validador::where('id', $id)->update($data);
			
			Log::info('Acesso:  validador.update - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: validador.update',
					'conteudo' => 'Atualização de URL',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('validador.index')->with('sucesso', 'Registro atualizado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.update',
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
            $validador = Validador::where('id', $id)->first();
			Validador::where('id', $id)->delete();

			Log::info('Acesso:  validador.destroy - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: validador.destroy',
					'conteudo' => 'URL Deletada: ' .$validador,
					'operacao' => 'destroy',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('validador.index')->with('sucesso', 'Registro deletado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: validador.destroy - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: validador.destroy',
				'conteudo' => $e->getMessage(),
				'operacao' => 'destroy',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }


	
	public function refresh()
	{
		$validador = Validador::where('user_id', Auth::user()->id)->get();
		// $json = json_encode($validador);
		// return response()->json($json);
		return view('validador.tbody', compact('validador'));
	}

}
