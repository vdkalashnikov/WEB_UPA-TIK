<?= $this->extend('backend/layout/pages-layout'); ?>
<?= $this->section('content'); ?>

<div class="container mt-5">
    <div class="row">
        <div class="col">
            <h2 class="mb-3">Form Edit Galeri</h2>
            <?php $validation = \Config\Services::validation(); ?>
            <form action="/admin/update_data_galeri/<?= $galeri['id_galeri']; ?>" method="POST" enctype="multipart/form-data">
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
                <input type="hidden" class="form-control" id="id_aset" name="id_galeri" value="value=" <?= $galeri['id_galeri']; ?>>
                <div class="row mb-3">
                    <img src="<?= base_url('img/' . $galeri['foto']); ?>" alt="error" width="200px" class="img-thumbnail">
                </div>
                <div class=" row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Gambar</label>
                    <div class="col-sm-10">
                        <input type="file" class="form-control" id="foto" name="foto" value="">
                    </div>
                </div>
                <?php if ($validation->getError('foto')) : ?>
                    <div class="d-block text-danger " style="margin-top:-10px;margin-bottom:15px;margin-left:180px;">
                        <?= $validation->getError('foto'); ?>
                    </div>
                <?php endif; ?>

                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Ruangan</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="id_ruangan" name="id_ruangan">
                            <?php foreach ($ruangan as $item) : ?>
                                <option value="<?= $item['id_ruangan'] ?>" <?php if ($item['id_ruangan'] == $galeri['id_ruangan']) : ?>selected<?php endif; ?>>
                                    <?= $item['nama_ruangan'] ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" onclick="return confirm('Apakah anda yakin ingin mengedit data ini?');">Simpan Data</button>
            </form>
        </div>
    </div>

</div>


<?= $this->endSection(); ?>