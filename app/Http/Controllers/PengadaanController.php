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
            'No_Pengadaan' ,
            'Judul_Pengadaan' => 'required',
            'Ringkasan_Pekerjaan',
            'ID_Metode_Pengadaan',
            'ID_Sistem_Evaluasi_Penawaran',
            'ID_Jenis_Pengadaan',
            'status' => 'in:Belum Dibuat,Sudah Dibuat',
        ]);

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
        $pengadaan = $query->get();
        $id_user = auth()->user()->id_user;
        $pengadaan->id_user = $id_user;
        $pengadaanUser = Pengadaan::where('id_user', $id_user)->get();


        return view('pengadaan.status', compact('pengadaan', 'selectedStatus', 'pengadaanUser', 'searchKeyword'));
    }
    public function detail($ID_Pengadaan)
    {
        $pengadaan = Pengadaan::findOrFail($ID_Pengadaan);

        return view('pengadaan.detail', compact('pengadaan'));

    }

    public function edit($ID_Pengadaan)
    {
        $pengadaan = Pengadaan::find($ID_Pengadaan);

        return view('pengadaan.edit', compact('pengadaan'));
    }

    public function update(Request $request, $ID_Pengadaan)
{
    $validatedData = $request->validate([
        'Judul_Pengadaan' => 'required',
        'checklist_nota_dinas',
        'checklist_rab',
        'checklist_justifikasi',
    ]);

    $pengadaan = Pengadaan::find($ID_Pengadaan);

    $pengadaan->Judul_Pengadaan = $validatedData['Judul_Pengadaan'];
    // $pengadaan->checklist_nota_dinas = $validatedData['checklist_nota_dinas'];
    // $pengadaan->checklist_rab = $validatedData['checklist_rab'];
    // $pengadaan->checklist_justifikasi = $validatedData['checklist_justifikasi'];

    $pengadaan->save();

    return redirect()->route('pengadaan.index', compact('pengadaan'))->with('success', 'Data pengadaan berhasil diperbarui');
}


public function delete($ID_Pengadaan)
{

    $pengadaan = Pengadaan::find($ID_Pengadaan);

    if (!$pengadaan) {
        return redirect()->route('pengadaan.index', compact('pengadaan'))->with('error', 'Data pengadaan tidak ditemukan');
    }

    $pengadaan->delete();

    return redirect()->route('pengadaan.index',  compact('pengadaan'))->with('success', 'Data pengadaan berhasil dihapus');
}

// public function showDetail($ID_Pengadaan, $selectedDokumen)
// {
//     // Mengambil data pengadaan berdasarkan ID
//     $pengadaan = Pengadaan::findOrFail($ID_Pengadaan);

//     // Mendefinisikan dokumen yang dicek
//     $dokumenList = ['RAB', 'Justifikasi Penunjukan Langsung', 'Nota Dinas Permintaan Rencana Pengadaan', 'Nota Dinas Permintaan Pelaksanaan Pengadaan'];
    
//     // Jika dokumen yang dipilih tidak ada dalam daftar, redirect ke halaman sebelumnya
//     if (!in_array($selectedDokumen, $dokumenList)) {
//         return redirect()->back()->with('error', 'Dokumen tidak valid');
//     }

//     // Menyertakan dokumen yang dipilih dan daftar dokumen ke view
//     return view('pengadaan.detail', compact('pengadaan', 'selectedDokumen', 'dokumenList'));
// }





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
