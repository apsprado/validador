<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Permissao;


class Permissaogrupo extends Model
{
    protected $table = 'permissao_grupo';
    protected $primaryKey = 'id';
    protected $fillable = ['grupouser_id', 'permissoes_id'];
    public $timestamps = false;
}
