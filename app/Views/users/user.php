<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>


<div class="swal" data-swal="<?= session('success'); ?>"></div>

<body>
    <center>
        <h1 class="my-3">User</h1>
    </center>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr class="text-center">
                <th scope="col">No</th>
                <th scope="col">Kode Lengkap</th>
                <th scope="col">Nama Pengguna</th>
                <th scope="col">Kata Sandi</th>
                <th scope="col">Email</th>
                <th scope="col">Status</th>
                <th scope="col">No Telp</th>
                <th scope="col">Prodi/Unit</th>
                <th scope="col">Aksi</th>


        <tbody>
            <?php
            // Ambil nilai parameter 'page_lab2' dari URL dan konversi ke integer
            $page = intval(request()->getVar('page_user'));

            // Jika parameter tidak ada, atur nilai default ke 1
            if ($page <= 0) {
                $page = 1;
            }

            // Hitung nilai $i
            $i = 1 + (10 * ($page - 1));
            ?>
            <?php foreach ($user as $user) : ?>
                <tr class="text-center">
                    <td scope="row-1">
                        <?= $i++; ?>
                    </td>
                    <td>
                        <?= $user['nama_user']; ?>
                    </td>
                    <td>
                        <?= $user['username']; ?>
                    </td>
                    <td>
                        <?= substr($user['password'], 0, 10); ?>
                    </td>
                    <td>
                        <?= $user['email']; ?>
                    </td>
                    <td>
                        <?= $user['status']; ?>
                    </td>
                    <td>
                        <?= $user['no_telp']; ?>
                    </td>
                    <td>
                        <?= $user['nama_prodi']; ?> (<?= $user['program']; ?>)
                    </td>
                    <td>
                        <a href="/admin/hapus_data_user/<?= $user['id_user']; ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');" class="btn btn-danger">Delete</a>
                        <a href="/admin/edit_data_user/<?= $user['id_user']; ?>" class="btn btn-success">Edit</a>
                    </td>


                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div class="row my-3">
        <div class="col">
            <a href="/admin/add_data_user" class="btn btn-primary">Tambah Data User</a>
            <a href="/admin/user_export" class="btn btn-warning">Export PDF</a>
            <a href="<?= route_to('export.excel.user') ?>" class="btn btn-success">Export Excel</a>
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
            <?= $pager->links('user', 'my_pagination'); ?>
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
        iframe.src = '/admin/user_preview';
    });
</script>
<?= $this->endSection(); ?>