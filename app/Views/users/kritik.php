<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>


<div class="swal" data-swal="<?= session('success'); ?>"></div>

<body>
    <center>
        <h1 class="my-3">Kritik User</h1>
    </center>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr class="text-center">
                <th scope="col">No</th>
                <th scope="col">Tanggal</th>
                <th scope="col">Nama Lengkap</th>
                <th scope="col">Email</th>
                <th scope="col">Komentar</th>
                <th scope="col">Aksi</th>


        <tbody>
            <?php $i = 1; ?>
            <?php
            // Ambil nilai parameter 'page_lab2' dari URL dan konversi ke integer
            $page = intval(request()->getVar('page_kritik'));

            // Jika parameter tidak ada, atur nilai default ke 1
            if ($page <= 0) {
                $page = 1;
            }

            // Hitung nilai $i
            $i = 1 + (10 * ($page - 1));
            ?>
            <?php foreach ($kritik as $user) : ?>
                <tr class="text-center">
                    <td scope="row-1">
                        <?= $i++; ?>
                    </td>
                    <td>
                        <?= $user['tanggal']; ?>
                    </td>
                    <td>
                        <?= $user['nama']; ?>
                    </td>
                    <td>
                        <?= $user['email']; ?>
                    </td>
                    <td>
                        <?= $user['komentar']; ?>
                    </td>
                    <td>
                        <a href="/admin/hapus_data_kritik/<?= $user['id_kontak']; ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div class="row my-3">
        <div class="col">
            <a href="/admin/kritik_export" class="btn btn-warning">Export PDF</a>
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
            <?= $pager->links('kritik', 'my_pagination'); ?>
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
        iframe.src = '/admin/kritik_preview';
    });
</script>
<?= $this->endSection(); ?>