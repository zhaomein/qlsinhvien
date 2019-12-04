<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Monhoc extends Model
{
    protected $table='monhocs';

    public function lops()
    {
        return $this->hasMany('App\Lop', 'id');
    }
    public function giangviens()
    {
        return $this->belongsTo('App\Giangvien','giangvien_id','id');
    }
    public function diems()
    {
        return $this->hasMany('App\Diem','monhoc_id','id');
    }
}
