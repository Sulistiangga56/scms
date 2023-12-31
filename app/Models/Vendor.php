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
        'name',
        'email',
        'password',
        'nama_perusahaan',
        'email_perusahaan',
        'jabatan',
        'no_telepon_perwakilan',
        'alamat_perusahaan',
        'no_telepon_perusahaan',
    ];

    protected $hidden = [
        'password',
    ];

    public function role()
    {
        return $this->belongsTo(Role::class, 'id_role', 'id_role');
    }
}
