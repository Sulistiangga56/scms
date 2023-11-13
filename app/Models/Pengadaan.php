<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengadaan extends Model
{
    protected $table = 'tabel_pengadaan';
    protected $primaryKey = 'ID_Pengadaan';

    protected $fillable = [
        'No_Pengadaan',
        'Judul_Pengadaan',
        'Ringkasan_Pekerjaan',
        'ID_Metode_Pengadaan',
        'ID_Sistem_Evaluasi_Penawaran',
        'ID_Jenis_Pengadaan',
        'status',
    ];

    public function metodePengadaan()
    {
        return $this->belongsTo(MetodePengadaan::class, 'ID_Metode_Pengadaan');
    }

    public function sistemEvaluasiPenawaran()
    {
        return $this->belongsTo(SistemEvaluasiPenawaran::class, 'ID_Sistem_Evaluasi_Penawaran');
    }

    public function jenisPengadaan()
    {
        return $this->belongsTo(JenisPengadaan::class, 'ID_Jenis_Pengadaan');
    }

    public function rab()
    {
        return $this->hasOne(Rab::class);
    }

    public function justifikasiPenunjukanLangsung()
    {
        return $this->hasOne(JustifikasiPenunjukanLangsung::class);
    }

    public function rencanaNotaDinas()
    {
        return $this->hasOne(RencanaNotaDinas::class);
    }

    public function pelaksanaanNotaDinas()
    {
        return $this->hasOne(PelaksanaanNotaDinas::class);
    }
}
