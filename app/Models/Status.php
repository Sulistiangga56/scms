<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;

    protected $table = 'status';
    protected $primaryKey = 'id_status';

    protected $fillable = [
        'nama',
        'keterangan_status',
    ];

    public function rab()
    {
        return $this->hasMany(Rab::class, 'id_status');
    }

    public function justifikasiPenunjukanLangsung()
    {
        return $this->hasMany(JustifikasiPenunjukanLangsung::class, 'id_status');
    }

    public function rencanaNotaDinas()
    {
        return $this->hasMany(RencanaNotaDinas::class, 'id_status');
    }

    public function pelaksanaanNotaDinas()
    {
        return $this->hasMany(PelaksanaanNotaDinas::class, 'id_status');
    }

    public function statusRab()
    {
        return $this->belongsTo(Status::class, 'id_status_rab');
    }
    public function statusJustifikasi()
    {
        return $this->belongsTo(Status::class, 'id_status_justifikasi');
    }
    public function statusNotaDinasPermintaan()
    {
        return $this->belongsTo(Status::class, 'id_status_nota_dinas_permintaan');
    }
    public function statusNotaDinasPelaksanaan()
    {
        return $this->belongsTo(Status::class, 'id_status_nota_dinas_pelaksanaan');
    }
}
