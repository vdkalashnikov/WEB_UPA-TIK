<?= $this->extend('backend/layout/user-layout'); ?>

<?= $this->section('content'); ?>


<div class="breadcrumb-section breadcrumb-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="breadcrumb-text">
                    <p>Lab UPA-TIK</p>
                    <h1>List Jadwal UAS<br>
                        <?= $namaProdi ?>
                    </h1>
                </div>
            </div>
        </div>
    </div>
</div>

<table class="table table-bordered my-3">
    <thead class="thead-dark">
        <tr class="text-center">
            <th scope="col">No</th>
            <th scope="col">Mata Kuliah</th>
            <th scope="col">Nama Dosen</th>
            <th scope="col">Kelas</th>
            <th scope="col">Id Prodi</th>
            <th scope="col">Ruangan</th>
            <th scope="col">Jam</th>
            <th scope="col">Jenis</th>
            <th scope="col">Hari</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>
    <?php $i = 1; ?>

    <tbody>

        <?php foreach ($jadwalProdi as $jadwal) : ?>
            <tr class="text-center">
                <td scope="row">
                    <?= $i++; ?>
                </td>
                <td>
                    <?= $jadwal['mk']; ?>
                </td>
                <td>
                    <?= $jadwal['nama_dosen']; ?>
                </td>
                <td>
                    <?= $jadwal['kelas']; ?>
                </td>
                <td>
                    <?= $jadwal['id_prodi']; ?>
                </td>
                <td>
                    <?= $jadwal['nama_ruangan']; ?>
                </td>
                <td>
                    <?= $jadwal['jam']; ?>
                </td>
                <td>
                    <?= $jadwal['jenis']; ?>
                </td>
                <td>
                    <?= $jadwal['hari']; ?>
                </td>
                <td>
                    <a href="<?= route_to('user.hapus.prodi', $jadwal['id_jadwal']); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');" class="btn btn-danger">Delete</a>
                </td>
            </tr>

        <?php endforeach; ?>
    </tbody>
    <a href="<?= route_to('user.jadwal.uas', $idProdi); ?>" class="btn btn-primary mt-4 mx-3">Tambah Jadwal</a>
    <a href="<?= route_to('reguler.export.pdf', $idProdi, $namaProdi, 'UAS'); ?>" target="_blank" class="btn btn-warning mt-4">Export
        PDF</a>
        <button type="button" class="btn btn-dark mt-4 mx-2" id="btnShowNotifModal"><i
            class="bi bi-envelope-exclamation"></i> Notifikasi</button>
</table>

<div class="modal fade" id="notifModal" tabindex="-1" role="dialog" aria-labelledby="notifModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="notifModalLabel">Notifikasi</h5>
                <a href="<?= route_to('user.notif', $idProdi, $jenis); ?>" class="btn btn-danger btn-sm ml-5"><i
                        class="bi bi-trash3"></i> Hapus Semua</a>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body" id="dataContainer">
                <!-- Data notifikasi akan ditampilkan di sini -->
            </div>
        </div>
    </div>
</div>


<script>
    // URL dari endpoint untuk mendapatkan data
    const fetchDataUrl = '<?= base_url("/user/get-data-from-server/$idProdi/$jenis") ?>';

    // Fungsi untuk mengambil dan menampilkan data dari server
    function fetchDataAndShowModal() {
        fetch(fetchDataUrl)
            .then(response => response.json())
            .then(data => {
                // Buat variabel untuk menampung data HTML
                let html = '';

                // Loop melalui setiap objek dalam data dan buat elemen HTML untuk setiap entri
                data.forEach(item => {
                    html += `
                        <div class="mt-3 font-weight-bold text-danger">Notifikasi: ${item.notif}
                        </div>`;
                });

                // Tampilkan data dalam div #dataContainer dalam modal
                document.getElementById('dataContainer').innerHTML = html;

                // Tampilkan modal
                $('#notifModal').modal('show');
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    // Panggil fungsi fetchDataAndShowModal() ketika tombol modal diklik
    document.getElementById('btnShowNotifModal').addEventListener('click', fetchDataAndShowModal);
</script>
<?= $this->endSection(); ?>