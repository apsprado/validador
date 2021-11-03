<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Gruposuser extends Model
{
    protected $table = 'gruposuser';
    protected $fillable = ['nome'];

    public $timestamps = false;
}
