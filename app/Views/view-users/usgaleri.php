<?php $this->extend('backend/layout/user-layout') ?>

<?= $this->section('content'); ?>

<!-- hero area -->
<div class="hero-area hero-bg">
    <div class="container">
        <div class="row">
            <div class="text-center">
                <div class="hero-text">
                    <div class="hero-text-tablecell">
                        <p class="subtitle">UPA-TIK</p>
                        <h1 class="subtitle">Politeknik Negeri Bandung</h1>
                        <div class="hero-btns">
                            <a href="<?= route_to('user.galeri'); ?>" class="bordered-btn">Galeri</a>
                            <a href="<?= route_to('user.kontak'); ?>" class="bordered-btn">Kontak Kami</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end hero area -->
<div class="container6">
    <h2 class="my-5">Galeri</h2>
</div>

<section class="usgaleri">
    <div class="container">
        <div class="secgal">
            <h1>Galeri P2T POLBAN</h1>
        </div>
        <div class="roww1">
            <?php if (!empty($galeri)) : ?>
                <?php $i = 1; // Initialize counter 
                ?>
                <?php foreach ($galeri as $foto) : ?>
                    <div class="col-md-3 col-sm-12">
                        <div class="usgaleri1">

                            <img src="<?= base_url('img/' . $foto['foto']); ?>" class="img-fluid" alt="">
                            <p> <?= $foto['nama_ruangan']; ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>

            <?php endif; ?>

        </div>
</section>




















<?= $this->endSection(); ?>