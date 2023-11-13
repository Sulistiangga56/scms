@extends('dashboard.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 mt-2">
            <div class="card-header">{{ __('Daftar Pengajuan Pengadaan Barang/Jasa') }}</div>
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <h3>Nama Pekerjaan: {{ $pengadaan->Judul_Pengadaan }}</h3>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nama Dokumen</th>
                                <th>Tanggal Pengajuan</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{-- Tambahkan foreach untuk setiap dokumen --}}
                            @foreach(['RAB', 'Justifikasi Penunjukan Langsung', 'Nota Dinas Permintaan Rencana Pengadaan', 'Nota Dinas Permintaan Pelaksanaan Pengadaan'] as $dokumen)
                                <tr>
                                    <td>{{ $dokumen }}</td>
                                    {{-- @foreach($dokumen_checked as $dokumen)
                            <tr>
                                <td>{{ $dokumen }}</td> --}}
                                    {{-- Tambahkan tanggal_pengajuan berdasarkan masing-masing dokumen --}}
                                    <td>Tanggal Pengajuan: {{ optional($pengadaan->$dokumen)->tanggal_pengajuan }}</td>
                                    <td>
                                        {{-- Tambahkan status berdasarkan masing-masing dokumen --}}
                                        @if(optional($pengadaan->$dokumen)->status === 'Sudah Dibuat')
                                            <span class="badge badge-opacity-warning">Sudah Dibuat </span>
                                        @else
                                            <span class="badge badge-opacity-danger">Belum Dibuat</span>
                                        @endif
                                    </td>
                                    {{-- Tambahkan tombol detail dengan link ke form terkait --}}
                                    <td><a href="{{ route('pengadaan.detail', [$pengadaan->ID_Pengadaan, 'dokumen' => $dokumen]) }}" class="btn btn-info">Detail</a></td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
