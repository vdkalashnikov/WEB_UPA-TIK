<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>


<div class="swal" data-swal="<?= session('success'); ?>"></div>


<body>
    <h1 class="text-center">Fasilitas Hardware Lab
        <?= ($id_ruangan - 8); ?>
    </h1>
    <div class="container">
        <div class="col">
            <form action="<?= route_to('detail.fasilitas.hardware', $id_ruangan) ?>" method="post">
                <div class="form-group mb-0">
                    <div class="input-group-prepend">
                        <button class="btn btn-outline-secondary" type="submit" id="button-addon1">Cari</button>
                        <input type="text" class="form-control search-input" placeholder="Cari Software" name="keyword" />
                    </div>

                </div>
            </form>
        </div>
    </div>
    <table class="table table-bordered my-3">
        <thead class="thead-dark">
            <tr class="text-center">
                <th scope="col">No</th>
                <th scope="col">Gambar</th>
                <th scope="col">Nama Hardware</th>
                <th scope="col">Jumlah</th>
                <th scope="col"> Ruangan Lab</th>
                <th scope="col">Aksi</th>
            </tr>

        <tbody>
            <?php
            $keyword = session('hardware');

            $page = intval($_GET['page_fasilitas'] ?? 1);

            // Jika parameter tidak ada, atur nilai default ke 1
            if ($page <= 0) {
                $page = 1;
            }

            // Hitung nilai $i
            $i = 1 + (10 * ($page - 1));
            ?>
            <?php foreach ($fasilitas as $fasilitas) : ?>
                <tr class="text-center">
                    <td scope="row">
                        <?= $i++; ?>
                    </td>
                    <td>
                        <?= $fasilitas['gambar']; ?>
                    </td>
                    <td>
                        <?= $fasilitas['nama']; ?>
                    </td>
                    <td>
                        <?= $fasilitas['jumlah']; ?>
                    </td>
                    <td>
                        <?= $fasilitas['nama_ruangan']; ?>
                    </td>
                    <td>
                        <a href="/admin/hapus_data_hardware/<?= $fasilitas['id']; ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');" class="btn btn-danger">Delete</a>
                        <a href="/admin/edit_data_hardware/<?= $fasilitas['id']; ?>" class="btn btn-success">Edit</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="row my-3">
        <div class="col">
            <a href="<?= route_to('admin.data.hardware', $id_ruangan); ?>" class="btn btn-primary">Tambah Data
                Hardware</a>
            <a href="/admin/hardware_export/<?= $id_ruangan ?>" target="_blank" class="btn btn-warning">Export PDF</a>
            <a href="<?= route_to('export.hardware.excel', $id_ruangan); ?>" class="btn btn-success">Export Excel</a>
            <button id="previewPdfBtn" class="btn btn-info">Preview PDF</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <iframe id="pdfPreviewFrame" style="width: 100%; height: 500px; display: none;"></iframe>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <?= $pager->links('fasilitas', 'my_pagination'); ?>
        </div>
    </div>
</body>

<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
    const swalElement = document.querySelector('.swal'); // Mengambil elemen dengan kelas '.swal'
    const swalData = swalElement.dataset.swal; // Mengambil data dari atribut data HTML 'data-swal'

    if (swalData) {
        Swal.fire({
            icon: 'success',
            title: 'Berhasil',
            text: swalData,
            showConfirmButton: false,
            timer: 1900
        });
    }

    document.getElementById('previewPdfBtn').addEventListener('click', function() {
        var iframe = document.getElementById('pdfPreviewFrame');
        iframe.style.display = 'block';
        iframe.src = '/admin/hardware_preview/<?= $id_ruangan ?>';
    });
</script>
<?= $this->endSection(); ?>