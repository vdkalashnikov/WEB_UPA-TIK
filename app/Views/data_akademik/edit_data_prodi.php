<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>

<div class="container mt-5">
    <div class="row">
        <div class="col">
            <h2 class="mb-3">Form Edit Data Prodi</h2>
            <form action="<?= base_url('admin/update_data_prodi/' . $prodi['id_prodi']) ?>" method="POST">
                <?php $validation = \Config\Services::validation(); ?>
                <div class="row mb-3">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Jurusan</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="id_jurusan" name="id_jurusan">
                            <?php foreach ($jurusan as $item) : ?>
                                <option value="<?= $item['id_jurusan'] ?>" <?php if ($prodi['id_jurusan'] == $item['id_jurusan']) : ?>selected<?php endif; ?>>
                                    <?= $item['nama_jurusan'] ?>
                                </option>
                            <?php endforeach; ?>

                        </select>

                    </div>
                </div>

                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Kode Prodi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="kode_prodi" name="kode_prodi" value="<?= $prodi['kode_prodi'] ?>">
                        <?php if ($validation->getError('kode_prodi')) : ?>
                            <div class="d-block text-danger " style="margin-top:5px;margin-left:5px;">
                                <?= $validation->getError('kode_prodi'); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nama Program Studi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_prodi" name="nama_prodi" value="<?= $prodi['nama_prodi'] ?>">
                        <?php if ($validation->getError('nama_prodi')) : ?>
                            <div class="d-block text-danger " style="margin-top:5px;margin-left:5px;">
                                <?= $validation->getError('nama_prodi'); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Program</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="program" name="program" value="<?= $prodi['program'] ?>">
                        <?php if ($validation->getError('program')) : ?>
                            <div class="d-block text-danger " style="margin-top:5px;margin-left:5px;">
                                <?= $validation->getError('program'); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>


                <button type="submit" class="btn btn-primary" onclick="return confirm('Apakah anda yakin ingin mengedit data ini?');">Simpan Data</button>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>