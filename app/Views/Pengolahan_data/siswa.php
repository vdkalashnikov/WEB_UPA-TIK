<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>

<div class="swal" data-swal="<?= session('success'); ?>"></div>

<h1 class="my-3 text-center">Siswa PKL</h1>
<table class="table table-bordered table-hover my-3">
    <thead class="thead-dark">
        <tr class="text-center">
            <th scope="col">No</th>
            <th scope="col">Nama</th>
            <th scope="col">Jenis Kelamin</th>
            <th scope="col">Jurusan</th>
            <th scope="col">Asal Sekolah</th>
            <th scope="col">Ruangan</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Ambil nilai parameter 'page_lab2' dari URL dan konversi ke integer
        $page = intval(request()->getVar('page_siswa'));

        // Jika parameter tidak ada, atur nilai default ke 1
        if ($page <= 0) {
            $page = 1;
        }

        // Hitung nilai $i
        $i = 1 + (10 * ($page - 1));
        ?>
        <?php foreach ($siswa as $fasilitas): ?>
            <tr class="text-center">
                <td scope="row">
                    <?= $i++; ?>
                </td>
                <td>
                    <?= $fasilitas['nama_lengkap']; ?>
                </td>
                <td>
                    <?= $fasilitas['jenis_kelamin']; ?>
                </td>
                <td>
                    <?= $fasilitas['juruusan_pkl']; ?>
                </td>
                <td>
                    <?= $fasilitas['asal_sekolah']; ?>
                </td>
                <td>
                    <?= $fasilitas['nama_ruangan']; ?>
                </td>
                <td>
                    <a href="<?= route_to('admin.hapus.data.siswa', $fasilitas['id']); ?>"
                        onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');"
                        class="btn btn-danger">Delete</a>
                    <a href="<?= route_to('admin.edit.data.siswa', $fasilitas['id']); ?>" class="btn btn-success">Edit</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<div class="row my-3">
    <div class="col">
        <a href="<?= route_to('admin.add.siswa'); ?>" class="btn btn-primary">Tambah Data Siswa</a>
        <a href="<?= route_to('siswa.export.pdf'); ?>" class="btn btn-warning">Export PDF</a>
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
        <?= $pager->links('siswa', 'my_pagination'); ?>
    </div>
</div>
<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
    const swalElement = document.querySelector('.swal');
    const swalData = swalElement.dataset.swal;

    if (swalData) {
        Swal.fire({
            icon: 'success',
            title: 'Berhasil',
            text: swalData,
            showConfirmButton: false,
            timer: 1900
        });
    }

    // Tambahkan script untuk handle preview PDF
    document.getElementById('previewPdfBtn').addEventListener('click', function() {
        var iframe = document.getElementById('pdfPreviewFrame');
        iframe.style.display = 'block';
        iframe.src = '<?= route_to('preview.siswa'); ?>';
    });
</script>
<?= $this->endSection(); ?>
