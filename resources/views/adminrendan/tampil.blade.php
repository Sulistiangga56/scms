@extends('dashboard.app')

@section('content')
<div class="card-body">
    <h3><center>NOTA DINAS PERENCANAAN PERMINTAAN</center></h3>
    <hr />
    <embed src="{{ 'data:application/pdf;base64,' . base64_encode($pdf1->output()) }}" type="application/pdf" width="100%" height="500px" />
    {{-- <a href="{{ route('rab.edit', ['ID_RAB' => $rab->ID_RAB]) }}" class="btn btn-warning">Edit</a> --}}
    <div class="bi bi-download">
    <a href="{{ route('nota_dinas_permintaan.preview.download', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'id_nota_dinas_permintaan' =>$notaDinasPermintaan->id_nota_dinas_permintaan]) }}" class="btn btn-success">Unduh PDF</a>
    {{-- @if ($pengadaan->id_status_nota_dinas_permintaan == 7)
    <td class="badge badge-primary">
        <a href="{{ route('nota_dinas_permintaan.kirim', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'id_nota_dinas_permintaan' => $notaDinasPermintaan->id_nota_dinas_permintaan]) }}" class="btn btn-primary">Kirim</a>
    </td>
    @else
    <td>
        <a style="display:none;"></a>
    </td>
    @endif --}}
    </div>

    <h3><center>RENCANA BIAYA PENGADAAN</center></h3>
    <hr />
    <embed src="{{ 'data:application/pdf;base64,' . base64_encode($pdf2->output()) }}" type="application/pdf" width="100%" height="500px" />
    {{-- <a href="{{ route('rab.edit', ['ID_RAB' => $rab->ID_RAB]) }}" class="btn btn-warning">Edit</a> --}}
    <div class="bi bi-download">
    <a href="{{ route('rab.preview.download', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'ID_RAB' =>$rab->ID_RAB]) }}" class="btn btn-success">Unduh PDF</a>
    {{-- @if ($pengadaan->id_status_nota_dinas_permintaan == 7)
    <td class="badge badge-primary">
        <a href="{{ route('nota_dinas_permintaan.kirim', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'id_nota_dinas_permintaan' => $notaDinasPermintaan->id_nota_dinas_permintaan]) }}" class="btn btn-primary">Kirim</a>
    </td>
    @else
    <td>
        <a style="display:none;"></a>
    </td>
    @endif --}}
    </div>

    @if ($pengadaan->checklist_justifikasi_penunjukan_langsung == 1)
    <h3><center>JUSTIFIKASI PENUNJUKAN LANGSUNG</center></h3>
    <hr />
    <embed src="{{ 'data:application/pdf;base64,' . base64_encode($pdf3->output()) }}" type="application/pdf" width="100%" height="500px" />
    {{-- <a href="{{ route('rab.edit', ['ID_RAB' => $rab->ID_RAB]) }}" class="btn btn-warning">Edit</a> --}}
    <div class="bi bi-download">
    <a href="{{ route('justifikasi.preview.download', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'ID_JPL' =>$justifikasi->ID_JPL]) }}" class="btn btn-success">Unduh PDF</a>
    {{-- @if ($pengadaan->id_status_nota_dinas_permintaan == 7)
    <td class="badge badge-primary">
        <a href="{{ route('nota_dinas_permintaan.kirim', ['ID_Pengadaan' => $pengadaan->ID_Pengadaan,'id_nota_dinas_permintaan' => $notaDinasPermintaan->id_nota_dinas_permintaan]) }}" class="btn btn-primary">Kirim</a>
    </td>
    @else
    <td>
        <a style="display:none;"></a>
    </td>
    @endif --}}
    </div>
    @endif

    <td>
        <a href="{{ route('adminrendan.detail', ['ID_Pengadaan'=>$pengadaan->ID_Pengadaan]) }}" class="btn btn-primary my-4">Kembali</a>
    </td>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function() {
        $("#tindakLanjutBtn").click(function() {
            
            $("#adminRendanUser").val("");
    
            // Ubah teks tombol "Simpan Perubahan" kembali ke "Tambah"
            $("#okBtn").text("OK");
    
            // Tampilkan modal
            $("#formModal").modal("show");
        
    });

    $("#closeModalBtnForm").click(function() {
        $("#formModal").modal("hide");
        });
        $(".closeModalBtnEdit").click(function() {
    // Ini akan menutup modal yang sedang aktif
    $(this).closest(".modal").modal("hide");
    });
});
</script>
@endsection

