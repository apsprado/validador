<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orgao extends Model
{
    use HasFactory;
    protected $table = 'orgao';
    protected $primaryKey = 'id';
    protected $fillable = ['nome_orgao', 'sigla_orgao', 'cnpj', 'responsavel', 'email', 'telefone'];
    public $timestamps = false;
}
