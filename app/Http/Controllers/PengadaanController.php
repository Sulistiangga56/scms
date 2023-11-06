<?php

namespace App\Http\Controllers;

use App\Models\Pengadaan;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class PengadaanController extends Controller
{
    public function index()
    {
        $pengadaan = Pengadaan::with(['metodePengadaan', 'sistemEvaluasiPenawaran', 'jenisPengadaan'])->get();
        return view('pengadaan.index', compact('pengadaan'));
    }

    public function create()
    {
        return view('pengadaan.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'No_Pengadaan' => 'required|max:255',
            'Judul_Pengadaan' => 'required|max:255',
            'Ringkasan_Pekerjaan' => 'required',
            'ID_Metode_Pengadaan',
            'ID_Sistem_Evaluasi_Penawaran',
            'ID_Jenis_Pengadaan',
        ]);

        // Pengadaan::create([
        //     'No_Pengadaan' => $request->input('No_Pengadaan'),
        //     'Judul_Pengadaan' => $request->input('Judul_Pengadaan'),
        //     'Ringkasan_Pekerjaan' => $request->input('Ringkasan_Pekerjaan'),
        // ]);

        Pengadaan::create($validatedData);

        return redirect()->route('pengadaan.index')->with('success', 'Data pengadaan berhasil disimpan');
    }

    public function status(Request $request)
    {
        $selectedStatus = $request->input('status', 'semua');
        $searchKeyword = $request->input('search');

        $query = Pengadaan::query();

        if ($selectedStatus !== 'semua') {
            $query->where('status', $selectedStatus);
        }

        if ($searchKeyword) {
            $query->where('tujuan', 'like', '%' . $searchKeyword . '%');
        }

        // Hanya menampilkan pengadaan barang yang diajukan oleh pengguna yang sedang login.
        $query->where('id_user', auth()->user()->id_user);

        $query = Pengadaan::query();
        $pengadaanScm = $query->get();
        $id_user = auth()->user()->id_user;
        $pengadaanScm->id_user = $id_user;
        $pengadaanScmUser = Pengadaan::where('id_user', $id_user)->get();


        return view('pengadaan_scm.status', compact('pengadaanScm', 'selectedStatus', 'pengadaanScmUser', 'searchKeyword'));
    }
    public function detail($id)
    {
        $pengadaanScm = Pengadaan::findOrFail($id);

        return view('pengadaan_scm.detail', compact('pengadaanScm'));
    }

    public function generatePDF(Request $request)
    {
        // Dapatkan data dari formulir
        $data = $request->all();

        // Buat PDF
        $pdf = PDF::loadView('pdf.view', ['data' => $data]);

        // Simpan PDF atau tampilkan dalam browser
        return $pdf->stream();
    }
}
