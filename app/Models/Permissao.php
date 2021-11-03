<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Permissaogrupo;

class Permissao extends Model
{
    protected $table = 'permissoes';
    protected $fillable = array('nome', 'descricao');
    public $timestamps = false;

}
