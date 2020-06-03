<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelajar extends Model
{
    protected $table = 'pelajar';
    protected $primaryKey = 'plt_id';
    protected $fillable = ['plj_nama', 'plj_id_kelas', 'plj_id_user'];
    public $timestamps = false;
}
