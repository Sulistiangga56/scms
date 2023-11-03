<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PengadaanScmController;
use App\Http\Controllers\TamuController;
use App\Http\Controllers\TuanRumahController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');
// Route::get('/pengajuan-tamu', [TamuController::class, 'createForm'])->name('tamu.create');


//auth
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login']);

// Rute untuk registrasi
Route::get('/register', [AuthController::class, 'showRegistrationForm'])->name('registerform');
Route::post('/store', [AuthController::class, 'store'])->name('store');

// Route::middleware(['auth', 'role:1'])->group(function () {
//     // Rute yang akan dilindungi oleh middleware role "administrator"
//     Route::get('/pengadaan_scm', [PengadaanScmController::class, 'index'])->name('pengadaan_scm.index');
//     Route::get('/pengadaan_scm/create', [PengadaanScmController::class, 'create'])->name('pengadaan_scm.create');
//     Route::post('/pengadaan_scm', [PengadaanScmController::class, 'store'])->name('pengadaan_scm.store');
//     Route::get('/status_pengadaan_scm', [PengadaanScmController::class, 'status'])->name('pengadaan_scm.status');
//     Route::get('/status_pengadaan_scm/{id}', [PengadaanScmController::class, 'detail'])->name('pengadaan_scm.detail');
// });
// Route::middleware(['auth', 'role:2'])->group(function () {
//     // Rute yang akan dilindungi oleh middleware role "Admin User"
//     Route::get('/pengadaan_scm', [PengadaanScmController::class, 'index'])->name('pengadaan_scm.index');
//     Route::get('/pengadaan_scm/create', [PengadaanScmController::class, 'create'])->name('pengadaan_scm.create');
//     Route::post('/pengadaan_scm', [PengadaanScmController::class, 'store'])->name('pengadaan_scm.store');
//     Route::get('/status_pengadaan_scm', [PengadaanScmController::class, 'status'])->name('pengadaan_scm.status');
//     Route::get('/status_pengadaan_scm/{id}', [PengadaanScmController::class, 'detail'])->name('pengadaan_scm.detail');
// });
// Route::middleware(['auth', 'role:3'])->group(function () {
//     // Rute yang akan dilindungi oleh middleware role "Admin Rendan"
//     Route::get('/pengadaan_scm', [PengadaanScmController::class, 'index'])->name('pengadaan_scm.index');
//     Route::get('/pengadaan_scm/create', [PengadaanScmController::class, 'create'])->name('pengadaan_scm.create');
//     Route::post('/pengadaan_scm', [PengadaanScmController::class, 'store'])->name('pengadaan_scm.store');
//     Route::get('/status_pengadaan_scm', [PengadaanScmController::class, 'status'])->name('pengadaan_scm.status');
//     Route::get('/status_pengadaan_scm/{id}', [PengadaanScmController::class, 'detail'])->name('pengadaan_scm.detail');
// });

Route::middleware(['auth', 'role:1,2,3,4'])->group(function () {
    // Rute yang akan dilindungi oleh middleware role "Admin Lakdan"
    Route::get('/pengadaan_scm', [PengadaanScmController::class, 'index'])->name('pengadaan_scm.index');
    Route::get('/pengadaan_scm/create', [PengadaanScmController::class, 'create'])->name('pengadaan_scm.create');
    Route::post('/pengadaan_scm', [PengadaanScmController::class, 'store'])->name('pengadaan_scm.store');
    Route::get('/status_pengadaan_scm', [PengadaanScmController::class, 'status'])->name('pengadaan_scm.status');
    Route::get('/status_pengadaan_scm/{id}', [PengadaanScmController::class, 'detail'])->name('pengadaan_scm.detail');
});
Route::middleware(['auth', 'role:5'])->group(function () {
    // Rute yang akan dilindungi oleh middleware role "Pejabat User"

});
Route::middleware(['auth', 'role:6'])->group(function () {
    // Rute yang akan dilindungi oleh middleware role "Pejabat Rendan"

});
Route::middleware(['auth', 'role:7'])->group(function () {
    // Rute yang akan dilindungi oleh middleware role "Pejabat Lakdan"

});

// Route::get('/unauthorized', function () {
//     return 'Akses Ditolak!'; // Tampilkan pesan akses ditolak
// })->name('unauthorized');


// Rute untuk logout
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
Route::get('/auth/redirect', [AuthController::class, 'redirectToProvider']);
Route::get('/google/callback', [AuthController::class, 'handleProviderCallback']);
