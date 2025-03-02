<div class="left-side-bar">
    <div class="brand-logo">
        <a href="<?= route_to('admin.home'); ?>">
            <img src="/backend/vendors/images/polban2.png" alt="" class="dark-logo" />
            <img src="/backend/vendors/images/polban2.png" alt="" class="light-logo" />
            <h3 class="mx-2 text-white light-logo">POLBAN</h3>
            <h3 class="mx-2 dark-logo">POLBAN</h3>
        </a>
        <div class="close-sidebar" data-toggle="left-sidebar-close">
            <i class="ion-close-round"></i>
        </div>
    </div>
    <div class="menu-block customscroll">
        <div class="sidebar-menu sidebar-dark active">
            <ul id="accordion-menu">
                <li class="dropdown">
                    <a href=" <?= route_to('admin.home'); ?>" class="dropdown-toggle no-arrow">
                        <span class="micon bi bi-house"></span><span class="mtext">Home</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle">
                        <span class="micon bi bi-person-workspace"></span><span class="mtext">Pengolahan Data</span>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?= route_to('admin.pegawai'); ?>">Pegawai UPA-TIK</a></li>
                        <li>
                            <a href="<?= route_to('admin.siswa'); ?>">Siswa PKL</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle">
                        <span class="micon bi bi-pc-display"></span><span class="mtext">Pengolahan Lab</span>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?= route_to('admin.pengolahan.lab'); ?>">Fasilitas Hardware</a></li>
                        <li><a href="<?= route_to('admin.fasilitas'); ?>">Fasilitas Software</a></li>
                        <li><a href="<?= route_to('admin.barang'); ?>">Fasilitas Barang</a></li>
                        <li><a href="<?= route_to('admin.ruangan'); ?>">Ruangan</a></li>
                        <li><a href="<?= route_to('admin.galeri'); ?>">Galeri</a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" class="dropdown-toggle">
                        <span class="micon bi bi-mortarboard"></span><span class="mtext mr-3 pr-3">Data Akademik</span>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?= route_to('admin.data.akademik'); ?>">Tahun Ajaran</a></li>
                        <li><a href="<?= route_to('admin.jurusan'); ?>">Jurusan</a></li>
                        <li><a href="<?= route_to('admin.prodi'); ?>">Program Studi</a></li>
                        <li><a href="<?= route_to('admin.unit'); ?>">Unit</a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" class="dropdown-toggle">
                        <span class="micon  bi bi-table"></span><span class="mtext"> Jadwal </span>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?= route_to('admin.jadwal'); ?>">Reguler</a></li>
                        <li><a href="<?= route_to('admin.jadwal.nonR'); ?>">Non-Reguler</a></li>
                        <li><a href="<?= route_to('admin.jadwal.uas'); ?>">UAS</a></li>
                        <li><a href="<?= route_to('admin.jadwal.uts'); ?>">UTS</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle">
                        <span class="micon bi bi-envelope-paper "></span><span class="mtext">Pengajuan</span>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?= route_to('admin.pengajuan'); ?>">Reguler</a></li>
                        <li><a href="<?= route_to('admin.pengajuan.nonreguler'); ?>">Non-Reguler</a></li>
                        <li><a href="<?= route_to('admin.pengajuan.uas'); ?>">UAS</a></li>
                        <li><a href="<?= route_to('admin.pengajuan.uts'); ?>">UTS</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="<?= route_to('admin.users'); ?>" class="dropdown-toggle no-arrow">
                        <span class="micon bi bi-person-circle "></span><span class="mtext">User</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="<?= route_to('admin.kritik'); ?>" class="dropdown-toggle no-arrow">
                        <span class="micon bi bi-chat-text"></span><span class="mtext">Kritik</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>