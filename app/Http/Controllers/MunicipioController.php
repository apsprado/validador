<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Auth;
use App\Models\Municipio;
use App\Models\ConveniadosLog;

class MunicipioController extends Controller
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
			$municipio = Municipio::all();
			Log::info('Acesso: municipio - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: Município',
				'conteudo' => $municipio,
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return view('municipio.index', compact('municipio') );

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: Município',
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
			Log::info('Acesso:  municipio.create - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: municipio.create',
					'conteudo' => 'Cadastro de Município',
					'operacao' => 'create',
					'user_id' => Auth::user()->id
				]);	

				return view('municipio.form');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.create - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: municipio.create',
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
                'uf' => request('uf'),
                'nome' => request('nome'),
                'ativo' => request('ativo')
            ];
            
            Municipio::create($data);
			
			Log::info('Acesso:  municipio.store - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: municipio.store',
					'conteudo' => 'Novo Município',
					'operacao' => 'store',
					'user_id' => Auth::user()->id
				]);	

			return redirect()->route('municipio.index')->with('sucesso', 'Registro salvo com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.store - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: municipio.store',
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
			$municipio = Municipio::where('id', $id)->first();
            Log::info('Acesso: municipio.edit - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: municipio.edit',
				'conteudo' => $municipio,
				'operacao' => 'edit',
				'user_id' => Auth::user()->id
			]);		
			
			return view('municipio.form', compact('municipio'));

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.edit - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: municipio.edit',
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
                'uf' => request('uf'),
                'nome' => request('nome'),
                'ativo' => request('ativo')
            ];
            
            Municipio::where('id', $id)->update($data);
			
			Log::info('Acesso:  municipio.update - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: municipio.update',
					'conteudo' => 'Atualização de Município',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('municipio.index')->with('sucesso', 'Registro atualizado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: municipio.update',
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
            $municipio = Municipio::where('id', $id)->first();
			Municipio::where('id', $id)->delete();

			Log::info('Acesso:  municipio.destroy - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: municipio.destroy',
					'conteudo' => 'Município Deletada: ' .$municipio,
					'operacao' => 'destroy',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->route('municipio.index')->with('sucesso', 'Registro deletado com sucesso!');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.destroy - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: municipio.destroy',
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
    public function InativarAtivarMunicipio($id)
	{

        try
		{
            $municipio = Municipio::find($id);
            if ($municipio->ativo == 1)
            {
                $municipio->ativo = 0;
                $msg = 'Município Inativado';
            }else
            {
                $municipio->ativo = 1;
                $msg = 'Município Ativado';
            }
    
            $municipio->save();
			
			Log::info('Acesso:  municipio.InativarAtivarMunicipio - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: municipio.InativarAtivarMunicipio',
					'conteudo' => 'Atualização de status do Município',
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

                return redirect()->back()->with('sucesso', $msg);
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: municipio.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: municipio.InativarAtivarMunicipio',
				'conteudo' => $e->getMessage(),
				'operacao' => 'update',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
        
    }

}
