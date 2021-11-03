<?php

namespace App\Http\Middleware;

use Closure;
use Route;
use Auth;
use App\Models\Permissaogrupo;
use App\Models\Permissao;

class AutorizacaoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //if ( !auth()->check() ){ return redirect()->route('/') }
        $routeUri = Route::current()->uri();
        $permissoesAt = Permissao::where('nome', $routeUri)->get();
        foreach( $permissoesAt as $val){
            $permissaoAt = $val->id;
        }

        if (!isset($permissaoAt)) return redirect('/naocadastrado');

        $grupoid = auth()->user()->grupoid;
        $grupos = Permissaogrupo::where('grupouser_id', $grupoid)->get();
        //dd(count($grupos));
        if(count($grupos) == 0){
            return redirect('/')->with('msg' , 'Usuario não tem permissão para acessar essa área, entre em contato com o
            Administrador!');
        }
        foreach( $grupos as $valor){
            $permissoesUs[] = $valor->permissoes_id;
        }

        $noArray = in_array($permissaoAt, $permissoesUs);
        if (!$noArray){
            return redirect('/unauthorized');
        }

        return $next($request);
    }
}
