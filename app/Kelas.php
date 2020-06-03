<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    protected $table = 'kelas';
    protected $primaryKey = 'kls_id';
    public $timestamps = false;

    public function pemateri()
    {
        return $this->belongsTo('App\Pemateri');
    }
}
