@extends('dashboard.app')

@section('content')

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h4 class="mb-0">Rencana Anggaran Biaya</h4>
        </div>
        <div class="card-body">
            <form class="barang-form" method="POST" action="{{ route('rab.store') }}">
                @csrf

                <!-- Formulir untuk pengajuan barang -->
                <div class="form-group">
                    <label for="kode_barang">Kode Barang: 1234</label>
                    <input type="text" name="kode_barang" id="kode_barang" class="form-control" required >
                </div>

                <div class="form-group">
                    <label for="kota">Kota:</label>
                    <select name="unit" id="unit" class="form-control" required>
                        <option value="Jakarta">Jakarta</option>
                        <option value="Pekanbaru">Pekanbaru</option>
                        <option value="Duri">Duri</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="tanggal">Tanggal</label>
                    <input type="date" name="tanggal" id="tanggal" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="deskripsi">Deskripsi:</label>
                    <textarea name="deskripsi" id="deskripsi" class="form-control" required></textarea>
                </div>

                <div class="form-group">
                    <label for="unit">Unit:</label>
                    <select name="unit" id="unit" class="form-control" required>
                        <option value="Buah">Buah</option>
                        <option value="Pcs">Pcs</option>
                        <option value="Lembar">Lembar</option>
                        <option value="Set">Set</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="estimasi_jumlah">Estimasi Jumlah:</label>
                    <input type="number" name="estimasi_jumlah" id="estimasi_jumlah" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="harga">Harga:</label>
                    <input type="number" name="harga" id="harga" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="total">Total (Rp):</label>
                    <input type="number" name="total" id="total" class="form-control" disabled>
                </div>

                <div class="form-group">
                    <label for="keterangan">Keterangan:</label>
                    <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
                </div>
                <button id="tambahBarangBtn" type="button" class="btn btn-secondary">+ Tambah Barang</button>
            <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            
        </div>
    </div>
</div>

<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.ckeditor').ckeditor();
    });

    $(document).on("click", "#tambahBarangBtn", function () {
        addNewForm();
    });

    $(document).on("click", ".hapusBarangBtn", function () {
        $(this).closest(".barang-form").remove();
    });

    $(document).on("input", "#estimasi_jumlah, #harga", function () {
        calculateTotal();
    });

    function addNewForm() {
        // Dapatkan form terakhir
        var lastForm = $(".barang-form:last");

        // Clone form terakhir
        var newForm = lastForm.clone();

        // Bersihkan nilai input pada form baru
        newForm.find('input, textarea').val('');

        var newFormId = new Date().getTime(); // ID unik berdasarkan timestamp
        newForm.attr('id', 'barang-form-' + newFormId);

        // Hapus tombol tambah pada form terakhir
        lastForm.find("#tambahBarangBtn").remove();

        // Masukkan form baru setelah form terakhir
        // lastForm.after('<hr class="form-separator">');
        lastForm.after(newForm);

        // Tambahkan tombol hapus pada form terakhir
        lastForm.append('<button type="button" class="btn btn-danger hapusBarangBtn form-group">Hapus Barang</button>');
    }

    function calculateTotal() {
        var estimasiJumlah = parseInt($("#estimasi_jumlah").val()) || 0;
        var harga = parseInt($("#harga").val()) || 0;
        var total = estimasiJumlah * harga;
        $("#total").val(total);
    }
</script>

@endsection

