@extends('dashboard.app')

<style>
    .popup {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
}

.popup-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
}

.close {
    position: absolute;
    top: 0;
    right: 0;
    padding: 10px;
    cursor: pointer;
}
</style>

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-15">
            <div class="card">
    <div class="card-header"><center>{{ __('DAFTAR PENGAJUAN BARANG/JASA') }}</center></div>

    <div class="card-body">
        <form method="POST" action="{{ route('pengadaan.store') }}">
            @csrf
            
    <a href="#" class="btn btn-primary" id="tambahPekerjaanBtn">Tambah Pekerjaan</a>
    <div id="popup" class="popup">
        <div class="popup-content">
            <span class="close" id="close-popup">&times;</span>
            <h2>Form Pengisian Pekerjaan</h2>
            <form id="popup-form" action="{{ route('pengadaan.store') }}" method="POST">
                @csrf
                <!-- Tambahkan input dan elemen lain sesuai kebutuhan -->
                <input type="text" name="nama_pekerjaan" placeholder="Nama Pekerjaan" required>
                <!-- Checklist Nota Dinas -->
                <input type="checkbox" name="checklist_nota_dinas" id="checklist-nota-dinas">
                <label for="checklist-nota-dinas">Nota Dinas</label>
                <!-- Checklist Rencana Anggaran Biaya -->
                <input type="checkbox" name="checklist_rab" id="checklist-rab">
                <label for="checklist-rab">Rencana Anggaran Biaya</label>
                <!-- Checklist Justifikasi Penunjukan Langsung -->
                <input type="checkbox" name="checklist_justifikasi" id="checklist-justifikasi">
                <label for="checklist-justifikasi">Justifikasi Penunjukan Langsung</label>
                <button type="submit" class="btn btn-primary">Tambah Pekerjaan</button>
            </form>
        </div>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th>Nama Pekerjaan</th>
                <th>Status</th>
                <th>Operasi</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            {{-- Tampilkan data pengadaan sesuai dengan kebutuhan Anda --}}
            @foreach($pengadaan as $pengadaan)
            <tr>
                <td>{{ $pengadaan->nama_pekerjaan }}</td>
                <td>{{ $pengadaan->status }}</td>
                <td>{{ $pengadaan->operasi }}</td>
                <td>
                    <a href="{{ route('pengadaan.detail', $pengadaan->id) }}" class="btn btn-info">Lihat Detail</a>
                </td>
            </tr>
            @endforeach

        </tbody>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function() {
    $("#tambahPekerjaanBtn").click(function() {
        $("#popup").show();
    });

    $("#close-popup").click(function() {
        $("#popup").hide();
    });
});

</script>
    </table>
</div>
</div>
</div>
</div>
</div>
@endsection
