<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Validador extends Model
{
    use HasFactory;
    protected $table = 'validador';
    protected $primaryKey = 'id';
    protected $fillable = ['nome', 'url', 'status_code', 'resposta', 'url_verified_at', 'user_id'];
    public $timestamps = true;



    public function status()
    {
        return $this->hasOne('App\Models\Status', 'status', 'status_code');
    }
}
