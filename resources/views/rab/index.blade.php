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
                    <input type="text" name="kode_barang" id="kode_barang" class="form-control" required style="display: none;">
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
                    <label for="total">Total (Rp):</label>
                    <input type="number" name="total" id="total" class="form-control" required>
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
                    <label for="keterangan">Keterangan:</label>
                    <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
                </div>
            </form>
            <button id="tambahBarangBtn" type="button" class="btn btn-secondary">+ Tambah Barang</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</div>

<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.ckeditor').ckeditor();
    });

    function addNewForm() {
            // Dapatkan form terakhir
            var lastForm = $(".barang-form:last");

            // Clone form terakhir
            var newForm = lastForm.clone();

            // Bersihkan nilai input pada form baru
            newForm.find('input, textarea').val('');

            lastForm.before('<hr class="form-separator">');

            // Masukkan form baru setelah form terakhir
            lastForm.after(newForm);
        }

        // Tambahkan event listener untuk tombol Tambah Barang
        $("#tambahBarangBtn").on("click", function (e) {
            e.preventDefault();
            addNewForm();
        });
</script>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .form-separator {
        margin-top: 20px;
        margin-bottom: 20px;
        border: none;
        border-top: 1px solid #ccc;
    }
</style>

@endsection

