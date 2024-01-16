<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Vendor extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = 'vendor';
    protected $primaryKey = 'ID_Vendor';
    protected $fillable = [

        'id_role',
        'password',
        'nama_perusahaan',
        'email_perusahaan',
        'alamat_perusahaan',
        'no_telepon_perusahaan',
        'id_signatures',
        'approved',
        'perwakilan_daftar'
    ];

    protected $hidden = [
        'password',
    ];

    public function role()
    {
        return $this->belongsTo(Role::class, 'id_role', 'id_role');
    }
    public function tabelPeserta()
    {
        // return $this->belongsTo(Peserta::class, 'ID_Vendor', 'ID_Vendor');
        return $this->hasMany(Peserta::class,'ID_Vendor','ID_Vendor');
    }

    public function signaturesVendor()
    {
        return $this->hasMany(SignaturesVendor::class, 'ID_Vendor', 'ID_Vendor');
    }

    // public function perwakilanDaftar()
    // {
    //     return $this->hasMany(Peserta::class, 'perwakilan_daftar', 'perwakilan_daftar');
    // }
}
