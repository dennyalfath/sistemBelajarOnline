<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemateri extends Model
{
    protected $table = 'pemateri';
    protected $primaryKey = 'pmt_id';
    protected $fillable = ['pmt_nama', 'pmt_id_kelas', 'pmt_id_user'];
    public $timestamps = false;

    public function user()
    {
        return $this->hasOne('App\User');
    }

    public function kelas()
    {
        return $this->hasOne('App\Kelas');
    }
}
