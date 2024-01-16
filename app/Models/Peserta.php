<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peserta extends Model
{
    use HasFactory;
    protected $table = 'tabel_peserta';
    protected $primaryKey = 'ID_Peserta';

    protected $fillable = [
        'ID_Vendor',
        'Nama_Peserta',
        'jabatan',
        'Alamat_Peserta',
        'Email_Peserta',
        'Nomor_Kontak_Peserta',
        'id_signatures',
        'signatures',
    ];

    public function vendor()
    {
        return $this->belongsTo(Vendor::class, 'ID_Vendor', 'ID_Vendor');
    }

    public function signaturesVendor()
    {
        return $this->hasOne(SignaturesVendor::class, 'ID_Peserta', 'ID_Peserta');
    }

    // public function perwakilanDaftar()
    // {
    //     return $this->hasMany(Vendor::class, 'perwakilan_daftar', 'perwakilan_daftar');
    // }
}
