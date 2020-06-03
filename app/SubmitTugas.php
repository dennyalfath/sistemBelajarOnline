<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubmitTugas extends Model
{
    protected $table = 'submit_tugas';
    protected $primaryKey = 'sbm_id';
    public $timestamps = false;
}
