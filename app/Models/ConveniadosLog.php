<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class ConveniadosLog extends Model
{
    protected $table = 'conveniados_logs';
    protected $primaryKey = 'id';
    protected $fillable = ['local', 'conteudo', 'operacao', 'user_id'];
    public $timestamps = true;
}
