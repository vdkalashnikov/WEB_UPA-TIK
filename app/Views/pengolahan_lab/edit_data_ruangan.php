<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>

<div class="container mt-5">
    <div class="row">
        <div class="col">
            <h2 class="mb-3">Form Edit Data Ruangan</h2>
            <?php $validation = \Config\Services::validation(); ?>
            <form action="/admin/update_data_ruangan/<?= $ruangan['id_ruangan']; ?>" method="POST">
                <?= csrf_field() ?>
                <?php if (!empty(session()->getFlashdata('success'))) : ?>
                    <div class="alert alert-success">
                        <?= session()->getFlashdata('succes'); ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <spance aria-hidden="true">&times;</spance>
                        </button>
                    </div>
                <?php endif; ?>

                <?php if (!empty(session()->getFlashdata('fail'))) : ?>
                    <div class="alert alert-danger">
                        <?= session()->getFlashdata('fail'); ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <spance aria-hidden="true">&times;</spance>
                        </button>
                    </div>
                <?php endif; ?>
                <input type="hidden" class="form-control" id="id" name="id" value="value=" <?= $ruangan['id_ruangan']; ?>>
                <div class=" row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nama Ruangan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_ruangan" name="nama_ruangan" value="<?= $ruangan['nama_ruangan']; ?>">
                    </div>
                </div>
                <?php if ($validation->getError('nama_ruangan')) : ?>
                    <div class="d-block text-danger " style="margin-top:-10px;margin-bottom:15px;margin-left:180px;">
                        <?= $validation->getError('nama_ruangan'); ?>
                    </div>
                <?php endif; ?>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Ruangan</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="id_teknisi" name="id_teknisi">
                            <?php foreach ($pegawai as $item) : ?>
                                <option value="<?= $item['id'] ?>" <?php if ($item['id'] == $ruangan['id_teknisi']) : ?>selected<?php endif; ?>>
                                    <?= $item['nama'] ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <?php if ($validation->getError('id_teknisi')) : ?>
                    <div class="d-block text-danger " style="margin-top:-10px;margin-bottom:15px;margin-left:180px;">
                        <?= $validation->getError('id_teknisi'); ?>
                    </div>
                <?php endif; ?>
                <div class="row mb-3">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Keterangan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="keterangan" name="keterangan" value="<?= $ruangan['keterangan'] ?>">
                    </div>
                </div>
                <?php if ($validation->getError('keterangan')) : ?>
                    <div class="d-block text-danger" style="margin-top:-10px;margin-bottom:15px;margin-left:180px;">
                        <?= $validation->getError('keterangan'); ?>
                    </div>
                <?php endif; ?>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Lokasi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lokasi" name="lokasi" value="<?= $ruangan['lokasi'] ?>">
                    </div>
                </div>
                <?php if ($validation->getError('lokasi')) : ?>
                    <div class="d-block text-danger" style="margin-top:-10px;margin-bottom:15px;margin-left:180px;">
                        <?= $validation->getError('lokasi'); ?>
                    </div>
                <?php endif; ?>
                <button type="submit" class="btn btn-primary" onclick="return confirm('Apakah anda yakin ingin mengedit data ini?');">Simpan Data</button>
            </form>
        </div>
    </div>

</div>


<?= $this->endSection(); ?>