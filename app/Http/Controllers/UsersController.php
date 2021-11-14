<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use Illuminate\Support\Facades\File;
use Route;
use App\Models\User;
use App\Models\Permissao;
use App\Models\ConveniadosLog;
use DB;
use Exception;
use Illuminate\Support\Facades\Log;
use PhpParser\Node\Stmt\TryCatch;

class UsersController extends Controller
{

	protected $conveniados_log;

	public function __construct(ConveniadosLog $conveniados_log)
	{
		$this->conveniados_log = $conveniados_log;
	}

	public function all()
	{
		try
		{
			$users = User::all();
			//$users = User::where('ativo', 1)->get();
			Log::info('Acesso: usuario.listar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: usuario.listar',
				'conteudo' => $users,
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return view('usuarios.listar', compact('users') );

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuario.listar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: usuario.listar',
				'conteudo' => $e->getMessage(),
				'operacao' => 'index',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
       
	}


	public function entrar(Request $r)
	{
		$r->validate([
			'email' => 'required|email',
			'password' => 'required'
    	]);

    	$credenciais = ['email' => $r->email, 'password' => $r->password];

    if (Auth::attempt($credenciais)){
				//////////////////////////////////////////////////////////////////////////
				$grupo = Auth::user()->grupoid;
				$permGrupo = Permissao::join('permissao_grupo', function ($join) {
						$join->on('permissoes.id', '=', 'permissao_grupo.permissoes_id');
						})
						->where('permissao_grupo.grupouser_id', '=', $grupo)
						->select('permissoes.nome')->get();

				$nomes[] = null;

				foreach ($permGrupo as $key => $value) {
					$nomes[] = $value['nome'];
				}
				
				//Patrimonio
				$patrimonio = array('erp/patrimonio/atendimentos','erp/patrimonio/novoAtendimento','patrimonio/material','patrimonio/material/etiqueta','patrimonio/movimentacao','erp/patrimonio/gestaoAtendimentos');
				//Fim Patrimonio

				// Subsistema Patrimonio
				$patrimonio = count(array_intersect($nomes,$patrimonio));
				// Fim patrimonio

				\Session::put('permissoes', [
					'nomes' => $nomes,
					'patrimonio' => $patrimonio
				]);
				///////////////////////////////////////////////////////////////////////////
        $ativo = Auth::user()->ativo;
        if ($ativo != 1){
			
				Log::info('Acesso: login - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: login',
					'conteudo' => 'Usuário inativado',
					'operacao' => 'login',
					'user_id' => Auth::user()->id
				]);		

            return redirect()->back()->with('msg', 'Usuário inativado, entre em contato com o administrador.');
        
		}else{
			
				Log::info('Acesso: contausuario - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
				
				$this->conveniados_log->create([
					'local' => 'Acesso: /contausuario',
					'conteudo' => 'acesso ao sistema',
					'operacao' => 'login',
					'user_id' => Auth::user()->id
				]);		

            return redirect()->intended('/contausuario');
        }
    
	}else{

				Log::warning('Erro: /contausuario - ');
				
				$this->conveniados_log->create([
					'local' => 'Erro: contausuario',
					'conteudo' => 'Usuário e/ou senha incorretos.',
					'operacao' => 'login',
					'user_id' => '0'
				]);		

        	return redirect()->back()->with('msg', 'Usuário e/ou senha incorretos.');
    }
	}

	/**
	 * Mostra uma lista de registros
	 *
	 * @return Response
	 */
	public function index()
	{
		//Auth::logout();
		return view('login.index2', [ 'rota' => Route::getRoutes()]);
	}

	/**
	 * Exibe um formulário de criação de registro
	 *
	 * @return Response
	 */
	public function create()
	{
		try
		{

			
			
			Log::info('Acesso:  usuarios.cadastrar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: usuarios.cadastrar',
					'conteudo' => 'Cadastro de Usuário',
					'operacao' => 'create',
					'user_id' => Auth::user()->id
				]);	

			return view('usuarios.cadastrar');
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuarios.cadastrar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: usuarios.cadastrar',
				'conteudo' => $e->getMessage(),
				'operacao' => 'create',
				'user_id' => Auth::user()->id
			]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
	}

	/**
	 * Armazena um novo registro
	 *
	 * @return Response
	 */
	public function store(Request $r)
	{
		$avatar = $r->file('avatar');
		$filename = $r->input('email') . '.' . $avatar->getClientOriginalExtension();
		$avatar->move(public_path('media/avatars/'), $filename);
		
        $credenciais = [
            'name' => $r->input('nome'),
            'email' => $r->input('email'),
            'password' => bcrypt($r->Password),
            'grupoid' => $r->input('grupouser'),
			'ramal' => $r->input('ramal'),
			'setor_id' => $r->input('setor'),
			'orgaoid' => $r->input('orgao'),
			'cargo' => $r->input('cargo'),
			'avatar' => $r->input('email').'.jpg' 

        ];

        try
        {
            User::create($credenciais);
			
			Log::info('Store:  usuarios.cadastrar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
			$this->conveniados_log->create([
				'local' => 'Acesso: usuarios.cadastrar',
				'conteudo' => 'Usuario cadastrado com sucesso: '.$credenciais,
				'operacao' => 'store',
				'user_id' => Auth::user()->id
			]);	

            return redirect()->route('usuarios.listar')->with('sucesso', 'Usuario cadastrado com sucesso.');
        }
        catch(\Illuminate\Database\QueryException $e)
        {
			Log::warning('Erro: usuarios.cadastrar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: usuarios.cadastrar',
				'conteudo' => $e->getMessage(),
				'operacao' => 'store',
				'user_id' => Auth::user()->id
			]);	

            return redirect()->back()->with('erro', 'E-mail já Cadastrado.');
        }
        catch(PDOException $e)
        {
			Log::warning('Erro: usuarios.cadastrar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
			$this->conveniados_log->create([
				'local' => 'Erro: usuarios.cadastrar',
				'conteudo' => $e->getMessage(),
				'operacao' => 'store',
				'user_id' => Auth::user()->id
			]);	

            return redirect()->back()->with('erro', 'Algo errado aconteceu, tente novamente!');
        }
	}

	/**
	 * Exibe um registro específico
	 *
	 * @param int $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	
	/**
	 * Exibe um formulário de edição de registros
	 *
	 * @param int $id
	 * @return Response
	 */
	public function edit($id)
	{

		try
		{
			$user = User::find($id);
									
						
			Log::info('Acesso:  usuarios.editar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: usuarios.editar',
					'conteudo' => 'Editar: '. $user,
					'operacao' => 'editar',
					'user_id' => Auth::user()->id
				]);	

			return view('usuarios.editar', compact('user'));
		
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuarios.editar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
				$this->conveniados_log->create([
					'local' => 'Erro: usuarios.editar',
					'conteudo' => $e->getMessage(),
					'operacao' => 'editar',
					'user_id' => Auth::user()->id
				]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
       
	}

	/**
	 * Atualiza um registro específico
	 *
	 * @param int $id
	 * @return Response
	 */
	public function update(Request $r, $id)
	{
        
		try
		{
			//$id = $r->input('id');
			$user = User::find($id);
			$user->name = $r->input('nome', $user->name);
			$user->ramal = $r->input('ramal', $user->ramal);
			$user->cargo = $r->input('cargo', $user->cargo);
			$user->grupoid = $r->input('grupouser') == null ? $user->grupoid : $r->input('grupouser', $user->grupoid);
			$user->setor_id = $r->input('setor') == null ? $user->setor_id : $r->input('setor', $user->setor_id);
			$user->orgaoid = $r->input('orgao') == null ? $user->orgaoid : $r->input('orgao', $user->orgaoid);

			if(isset($r->avatar))
			{
				$r->validate([
					'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
				]);

				$avatar = $r->file('avatar');
				$filename = $user->email . '.' . $avatar->getClientOriginalExtension();
				$avatar->move(public_path('media/avatars/'), $filename);
				//make($avatar->getRealPath())->resize(300, 300)->save( public_path('media/avatars/' . $filename ) );
				$user->avatar = $filename;

			}

			$user->save();

			Log::info('Acesso:  usuarios.atualizar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: usuarios.atualizar (Atualizar Perfil)',
					'conteudo' => 'Editar: '. $user,
					'operacao' => 'editar',
					'user_id' => Auth::user()->id
				]);	
			
			return redirect()->route('usuarios.listar')->with('sucesso', 'Usuario alterado com sucesso.');

		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuarios.atualizar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
				$this->conveniados_log->create([
					'local' => 'Erro: usuarios.atualizar (Atualizar Perfil)',
					'conteudo' => $e->getMessage(),
					'operacao' => 'editar',
					'user_id' => Auth::user()->id
				]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}

	}

	/**
	 * Remove um registro específico
	 *
	 * @param int $id
	 * @return Response
	 */
	// public function destroy($id)
	// {
    //     $user = User::find($id);
    //     $user->delete();

    //     bcrypt('123456');
    // }

    public function alterar($id){
		try
		{
			$user = User::find($id);
			$user->password = bcrypt('123456');
			$user->save();
			
			Log::info('Acesso:  usuarios.alterar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: usuarios.alterar',
					'conteudo' => 'Alterar Senha: '. $user,
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	
			return redirect()->back()->with('sucesso', 'A nova senha do usuário é 123456.');
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuarios.alterar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
				$this->conveniados_log->create([
					'local' => 'Erro: usuarios.alterar ',
					'conteudo' => $e->getMessage(),
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }

    public function inativarAtivar($id)
	{
		try
		{
			$user = User::find($id);

			if ($user->ativo == 1)
			{
				$user->ativo = 0;
				$msg = 'Usuario inativado';
			}else
			{
				$user->ativo = 1;
				$msg = 'Usuario ativado';
			}

			$user->save();

			Log::info('Acesso:  usuarios.inativarAtivar - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: usuarios.inativarAtivar',
					'conteudo' => 'Ativar/Inativar: '. $user,
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	

			return redirect()->back()->with('delete', $msg);
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: usuarios.inativarAtivar - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
				$this->conveniados_log->create([
					'local' => 'Erro: usuarios.inativarAtivar',
					'conteudo' => $e->getMessage(),
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }


    public function conta()
    {

        $id = Auth::user()->id;
        $user = User::find($id);

        return view('contausuario.editar', compact('user'));

    }


    public function updateconta(Request $r)
	{

		try
		{
       
			$id = $r->input('id');
			$user = User::find($id);
			
			//Atualiza a Senha, se os campos estiverem preenchidos!
			if(isset($r->nsenha) AND isset($r->csenha))
			{
				$senha = $r->input('nsenha');
				$csenha = $r->input('csenha');
				if ($senha != $csenha)
				{
					return redirect()->back()->with('erro', 'As Senhas Digitadas Não São Iguais.');
				} 
				else
				{
				$user->password = bcrypt($senha);
				}

			}	

			if(isset($r->avatar))
			{
				$r->validate([
					'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
				]);

				$avatar = $r->file('avatar');
				$filename = $user->email . '.' . $avatar->getClientOriginalExtension();
				$avatar->move(public_path('media/avatars/'), $filename);
				//make($avatar->getRealPath())->resize(300, 300)->save( public_path('media/avatars/' . $filename ) );
				$user->avatar = $filename;

			}

			$user->name = $r->input('nome', $user->name);
			$user->save();

			Log::info('Acesso:  contausuario.update - ', ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name]);
			
				$this->conveniados_log->create([
					'local' => 'Acesso: contausuario.update',
					'conteudo' => 'Atualizar Conta Usuário: '. $user,
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);	
			
			return redirect()->route('contausuario')->with('sucesso', 'Conta atualizada com sucesso.');
		}
		catch (\Exception $e)
		{	
			Log::warning('Erro: contausuario.update - ',  ['user_id' => Auth::user()->id, 'nome' => Auth::user()->name, 'conteudo' => $e->getMessage()]);
			
				$this->conveniados_log->create([
					'local' => 'Erro: contausuario.update',
					'conteudo' => $e->getMessage(),
					'operacao' => 'update',
					'user_id' => Auth::user()->id
				]);		
			
			return back()->with('erro', 'OPS! algo inesperado aconteceu...');
		
		}
    }



	public function SalvarUsuario(Request $r)
	{
		
        $credenciais = [
            'name' => $r->input('nome'),
            'email' => $r->input('email'),
            'password' => bcrypt($r->Password),
        ];

        User::create($credenciais);
		return back()->with('sucesso', 'Usuario cadastrado com sucesso...');
	}


    
}
