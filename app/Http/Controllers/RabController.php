<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\Rab;
use Illuminate\Http\Request;

class RabController extends Controller
{
    public function index(Request $request)
    {
        $rabData = Rab::all();
        $newKodeBarang = $this->generateKodeBarang();
        return view('rab.index', compact('rabData','newKodeBarang'));
    }
    public function create()
    {
        return view('rab.create');
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'Kode_Barang' => 'required|max:255',
            'Kota' => 'in:Jakarta,Pekanbaru,Duri',
            'Tanggal' => 'required|date',
            'Deskripsi' => 'required|max:255',
            'Unit' => 'in:Buah,Pcs,Lembar,Set',
            'Harga' => 'required|numeric',
            'Total' => 'required|numeric',
            'Keterangan',
        ]);

        Rab::create($validatedData);

        return redirect()->route('rab.index')->with('success', 'Data Barang berhasil disimpan');
    }

    public function status(Request $request)
    {
        $selectedStatus = $request->input('status', 'semua');
        $searchKeyword = $request->input('search');

        $query = Rab::query();

        if ($selectedStatus !== 'semua') {
            $query->where('status', $selectedStatus);
        }

        if ($searchKeyword) {
            $query->where('tujuan', 'like', '%' . $searchKeyword . '%');
        }

        // Hanya menampilkan pengadaan barang yang diajukan oleh pengguna yang sedang login.
        $query->where('id_user', auth()->user()->id_user);

        $query = Rab::query();
        $rabData = $query->get();
        $id_user = auth()->user()->id_user;
        $rabData->id_user = $id_user;
        $rabDataUser = Rab::where('id_user', $id_user)->get();


        return view('rab.status', compact('rabData', 'selectedStatus', 'rabDataUser', 'searchKeyword'));
    }
    public function detail($id)
    {
        $rabData = Rab::findOrFail($id);

        return view('rab.detail', compact('rabData'));
    }

    public function generateKodeBarang()
{
    $latestBarang = Barang::latest()->first(); // Ambil barang terakhir
    $newKodeBarang = 'B0001'; // Default jika belum ada barang
    
    if ($latestBarang) {
        // Jika ada barang sebelumnya, generate kode berikutnya
        $lastKodeNumber = intval(substr($latestBarang->Kode_Barang, 1)); // Ambil angka dari kode terakhir
        $newKodeNumber = $lastKodeNumber + 1;
        $newKodeBarang = 'B' . sprintf('%04d', $newKodeNumber);
    }

    return $newKodeBarang;
}

}
