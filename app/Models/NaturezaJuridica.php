<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NaturezaJuridica extends Model
{
    use HasFactory;
    protected $table = 'natureza';
    protected $primaryKey = 'id';
    protected $fillable = ['nome', 'codigo', 'ativo'];
    public $timestamps = false;
}
