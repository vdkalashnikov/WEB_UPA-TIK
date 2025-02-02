-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2024 pada 11.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upt-k`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `password`, `picture`, `bio`, `created_at`, `update_at`) VALUES
(1, 'Yeti Nugraheni', 'admin1', 'upt.komputer@polban.ac.id', '$2y$10$vsmdGOKFiHvtIPzMR1s1D.wniDT3.V3szWWeGYmfCmXICdi3KIBt6', NULL, NULL, '2024-04-29 04:18:41', '2024-04-29 04:18:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` text NOT NULL,
  `tgl_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `serialnumber` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `penanggungjawab` varchar(50) NOT NULL,
  `id_tipe` int(11) DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aset`
--

INSERT INTO `aset` (`id_aset`, `deskripsi`, `serialnumber`, `supplier`, `brand`, `model`, `penanggungjawab`, `id_tipe`, `id_ruangan`) VALUES
(703, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(704, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(705, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(706, '34 Buah Kursi Besi/Metal', '3050201003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(707, '33 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(708, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(709, '4 Buah Gordyin/Kray', '3050206058', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(710, '33 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(711, '1 Buah Hub', '3100204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 9),
(713, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(714, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(715, '36 Buah Kursi Besi/ Metal', '3050201003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(716, '34 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(717, '1 Buah Jam Mekanis', '3050202001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(718, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(719, '3 Buah Gordyin/Kray', '3050206058', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(720, '34 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(721, '2 Buah Hub', '3100204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 10),
(722, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(723, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(724, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(725, '35 Buah Kursi Besi /Metal', '3050201003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(726, '34 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(727, '1 Buah Jam Mekanis', '3050202001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(728, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(729, '5 Buah Gordyin/Kray', '3050206058', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(730, '34 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(731, '1 Buah Hub', '3100204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 11),
(732, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(733, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(734, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(735, 'Focusing Screen/Layar LCD Projector', '3050105058', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(736, '35 Buah Kursi Besi /Metal', '3050201003', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(737, '36 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(738, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(739, '4 Buah Gordyin/Kray', '3050206058', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(740, '34 Buah P.C Unit', '3100102001', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(741, '2 Buah Hub', '3100204003', '-', '-', '-', 'Ondang Hermawan', NULL, 12),
(742, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(743, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(744, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(745, '35 Buah Kursi Besi /Metal', '3050201003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(746, '34 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(747, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(748, '2 Buah Gordyin/ Kray', '3050206058', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(749, '33 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(750, '2 Buah Hub', '3100204003', '-', '-', '-', 'Yudhi Rachmat Kurniawan.s.kom', NULL, 13),
(751, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(752, '1 Buah LCD Projector/Infocus', '3050105048', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(753, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(754, '29 Buah Kursi Besi/Metal', '3050201003', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(755, '32 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(756, '4 Buah Kursi Fiber Glas/Plastik', '3050201020', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(757, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(758, '8 Buah Gordyin/Kray', '3050206058', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(759, '32 Buah P.C Unit', '3100102001', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(760, '1 Buah Hub', '3100204003', '-', '-', '-', 'Ondang Hermawan', NULL, 14),
(761, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(762, '23 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(763, '17 Buah Kursi Fiber Glas/Plastik', '3050201020', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(764, '1 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(765, '8 Buah Kursi Dorong', '3070101127', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(767, '22 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(768, '3 Buah Hub', '3100204003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 15),
(769, '4 Buah Lemari Kayu', '3100204003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(770, '1 Buah Whiteboard', '3050105010', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(771, '1 Buah Focusing Screen/Layar LCD Projector', '3050105010', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(772, '1 Buah Meja Kerja Kayu', '3050201002', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(773, '35 Buah Kursi Besi /Metal', '3050201003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(774, '50 Buah Meja Komputer', '3050201009', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(775, '3 Buah A.C. Window', '3050204003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(776, '5 Buah Kursi Zeis', '3070104108', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(777, '31 Buah P.C Unit', '3100102001', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(778, '2 Buah Hub', '3100204003', '-', '-', '-', 'Yeti Nugraheni.,ST', NULL, 16),
(823, 'kulkas', '0099765887', 'PT Electronindo', 'polytron', '2 pintu', 'dayat', NULL, 21),
(824, '1 Buah Lemari Besi/Metal', '-', '-', '-', '-', '-', NULL, 20),
(825, '1 Buah White Board', '-', '-', '-', '-', '-', NULL, 20),
(826, '1 Buah LCD Projector/Infocus', '-', '-', 'Infocus', '-', '-', NULL, 20),
(827, '1 Buah Focusing Screen/Layar LCD Projector', '-', '-', '-', '-', '-', NULL, 20),
(828, '1 Buah Meja Kerja Kayu', '-', '-', '-', '-', '-', NULL, 20),
(829, '33 Buah Kursi Besi/Metal', '-', '-', '-', '-', '-', NULL, 20),
(830, '11 Buah Meja Komputer', '-', '-', '-', '-', '-', NULL, 20),
(831, '2 Buah A.C. Split', '-', '-', '-', '-', '-', NULL, 20),
(832, '2 Buah Vertikal Blind', '-', '-', '-', '-', '-', NULL, 20),
(833, '1 Buah Kursi Dorong', '-', '-', '-', '-', '-', NULL, 20),
(834, '34 Buah P.C. Unit', '-', '-', '-', '-', '-', NULL, 20),
(835, '1 Buah Lemari Besi/Metal', '-', '-', '-', '-', '-', NULL, 19),
(836, '1 Buah White Board', '-', '-', '-', '-', '-', NULL, 19),
(837, '1 Buah LCD Projector/Infocus', '-', '-', '-', '-', '-', NULL, 19),
(838, '1 Buah Focusing Screen/Layar LCD Projector', '-', '-', '-', '-', '-', NULL, 19),
(839, '1 Buah Meja Kerja Kayu', '-', '-', '-', '-', '-', NULL, 19),
(840, '33 Buah Kursi Besi/Metal', '-', '-', '-', '-', '-', NULL, 19),
(841, '12 Buah Meja Komputer', '-', '-', '-', '-', '-', NULL, 19),
(842, '2 Buah A.C. Split', '-', '-', '-', '-', '-', NULL, 19),
(843, '2 Buah Vertikal Blind', '-', '-', '-', '-', '-', NULL, 19),
(844, '1 Buah Kursi Dorong', '-', '-', '-', '-', '-', NULL, 19),
(845, '34 Buah P.C. Unit', '-', '-', '-', '-', '-', NULL, 19),
(846, '1 Buah Lemari Besi/Metal', '-', '-', '-', '-', '-', NULL, 21),
(847, '1 Buah White Board', '-', '-', '-', '-', '-', NULL, 21),
(848, '1 Buah LCD Projector/Infocus', '-', '-', '-', '-', '-', NULL, 21),
(849, '1 Buah Focusing Screen/Layar LCD Projector', '-', '-', '-', '-', '-', NULL, 21),
(850, '1 Buah Meja Kerja Kayu', '-', '-', '-', '-', '-', NULL, 21),
(851, '33 Buah Kursi Besi/Metal', '-', '-', '-', '-', '-', NULL, 21),
(852, '12 Buah Meja Komputer', '-', '-', '-', '-', '-', NULL, 21),
(853, '2 Buah A.C. Split', '-', '-', '-', '-', '-', NULL, 21),
(854, '2 Buah Vertikal Blind', '-', '-', '-', '-', '-', NULL, 21),
(855, '34 Buah P.C. Unit', '-', '-', '-', '-', '-', NULL, 21),
(856, '1 Buah Lemari Besi/Metal', '-', '-', '-', '-', '-', NULL, 22),
(857, '1 Buah White Board', '-', '-', '-', '-', '-', NULL, 22),
(858, '1 Buah LCD Projector/Infocus', '-', '-', '-', '-', '-', NULL, 22),
(859, '1 Buah Focusing Screen/Layar LCD Projector', '-', '-', '-', '-', '-', NULL, 22),
(860, '1 Buah Meja Kerja Kayu', '-', '-', '-', '-', '-', NULL, 22),
(861, '33 Buah Kursi Besi/Metal', '-', '-', '-', '-', '-', NULL, 22),
(862, '11 Buah Meja Komputer', '-', '-', '-', '-', '-', NULL, 22),
(863, '2 Buah A.C. Split', '-', '-', '-', '-', '-', NULL, 22),
(864, '2 Buah Vertikal Blind', '-', '-', '-', '-', '-', NULL, 22),
(865, '1 Buah Kursi Dorong', '-', '-', '-', '-', '-', NULL, 22),
(866, '34 Buah P.C. Unit', '-', '-', '-', '-', '-', NULL, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` text NOT NULL,
  `tgl_berita` varchar(100) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `isi_berita` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `tgl_berita`, `gambar`, `isi_berita`, `id_kategori`, `id_admin`) VALUES
(5, 'TEKNOLOGI KOMPUTER TERBARU', '03-11-2016', 'hololens.jpg', '<p><strong>1. Komputer hologram Hololens</strong></p>\r\n\r\n<p>Teknologi augmented reality sudah dikembangkan cukup lama. Dan pada tahun 2015 lalu, Microsoft membuat terobosan teknologi terbaru komputer dengan meluncurkan Hololens. Komputer yang satu ini bentuknya seperti sebuah kacamata. Dan berbeda dengan komputer biasa, Hololens merupakan sebuah komputer holografik yang bisa menampilkan objek dalam bentuk tiga dimensi.</p>\r\n\r\n<p><strong>2. Microsoft Continuum, Ubah Smartphone Jadi Komputer </strong></p>\r\n\r\n<p>Melalui ajang BUILD Conference, Microsoft memperkenalkan fitur canggih yang disebut dengan Continuum. Pada dasarnya, fitur Microsoft Continuum ini adalah mengubah <a href=\"http://sidomi.com/376689/no-1-s6i-kloning-samsung-galaxy-s6-dengan-prosesor-quad-core/\">smartphone</a> menjadi sebuah PC desktop yang nyaman untuk bekerja. Seperti yang kita ketahui, saat ini smartphone memiliki banyak keterbatasan jika digunakan untuk bekerja.</p>\r\n\r\n<p>Cara kerja Continuum ini adalah menghubungkan smartphone dengan layar berukuran lebih besar untuk menghadirkan anatrmuka yang lebih nyaman saat bekerja. Selama ini antarmuka yang kurang nyaman dan ukuran layar kecil pada smartphone merupakan masalah klasik untuk bekerja di perangkat tersebut.</p>\r\n\r\n<p>Joe Belfiore, Presiden Microsoft Windows menunjukkan bahwa Windows 10 dengan fitur Continuum ini begitu fleksibel. Joe mangatakan bahwa hampir semua layar dapat dijadikan PC Desktop dengan fitur Continuum ini. Cara menggunakan fitur ini cukup mudah, yakni hubungkan smartphone Windows 10 ke layar melalui HDMI dan kini antarmuka smartphone ditampilkan di layar berukuran besar seperti PC Desktop.</p>\r\n\r\n<p>Fitur Continuum ini didukung oleh arsitektur Windows 10 yang <a href=\"http://sidomi.com/376687/xiaomi-mi5-plus-digarap-usung-layar-6-inci-ram-4gb/\">mengusung</a> biner yang sama dan didukung oleh Universal Apps. Aplikasi tersebut akan tampil di layar besar dan menawarkan antarmuka yang tak jauh berbeda dengan aplikasi yang berjalan di desktop. Kelebihan lain dari Continuum adalah memungkinkan aplikasi menyesuaikan tampilan dengan cepat pada perangkat yang digunakan oleh pengguna.</p>\r\n\r\n<p>Dukungan fitur Continuum ini memungkinkan pengguna menjadikan smartphone sebagai perangkat komputasi utama. Seperti yang dilansir dari <em>Toms Hardware</em> (30/04/2015), fitur ini akan berjalan lebih sempurna dengan dukungan port USB Type-C yang kabarnya akan diaplikasikan pada smartphone Microsoft di masa depan.</p>\r\n\r\n<p><strong>3. Komputer Kuantum</strong></p>\r\n\r\n<p><a href=\"http://penulispro.com/ini-dia-teknologi-komputer-terbaru-dan-tercanggih-yang-super-banget/28413/\">Teknologi komputer terbaru dan tercanggih</a> yang pertama adalah komputer kuantum. Sebenarnya bentuk dan fungsi dari komputer kuantum masih sama dengan komputer yang ada saat ini. Tapi yang membedakannya adalah kecepatannya.</p>\r\n\r\n<p>Komputer kuantum memiliki kecepatan yang lebih cepat dibanding dengan komputer biasa. Kecepatannya bisa ribuan kali lipat dari komputer biasa. Teknologi canggih ini diciptakan dari berbagai komponen yang canggih pula, seperti dunia kuantum, quantum entanglement dan superposition.<br />\r\nBukan hanya itu, komputer canggih ini juga mampu memprediksi cuaca secara akurat dan mampu memprediksi gejala alam yang akan terjadi. Kompuer kuantum juga mampu memecahkan kode tersulit dengan waktu yang sangat singkat.</p>\r\n\r\n<p><strong><em>4. Biometrik Sensor</em></strong></p>\r\n\r\n<p>Teknologi boimetik sensor yaitu sebuah teknologi,yang di gunakan untuk mengenali &nbsp;ciri fisik dari tubuh seseorang.<br />\r\nDengan sistem scaner sidik jari yang di simpan dalam bentuk code biometrik yang terenskripsi,yang digunakan untuk verifikasi.</p>\r\n\r\n<p><strong><em>5. Wireless Charger</em></strong></p>\r\n\r\n<p>Dengan hadirnya teknologi wireless charger, kita akan lebih mudah untuk mengisi daya baterai hp atau laptop.pengguna bisa bebas menggunakan laptop tanpa harus takut kehabisan daya</p>\r\n\r\n<p><strong><em>6. Komputer Interaktif</em></strong></p>\r\n\r\n<p>Yaitu sistem aplikasi perangkat lunak komputer yang dapat berinteraksi dengan pengguna.interaktif pada aplikasi tersebut meliputi , data yang sering &nbsp;gunakan sehari-hari.</p>\r\n\r\n<p>Teknologi ini dilengkapi dengan intel realsense 3D Camera, bahkan mampu mengatur jarak pengguna dengan sensor</p>\r\n\r\n<p><strong><em>7. Creative Desktop dengan Touc Mat dari HP</em></strong></p>\r\n\r\n<p>Gabungna antara fisik dan digital dari sebuah kamera dan proyeksi mesin Intel Realsense 3D ,sehingga pengguna memungkinkan memindai 2D dan 3D objek .<br />\r\nCukup menempatkan objek di tikar sentuh dan tekan tombol scan. Sprout mengaktifkan kamera Intel&reg; Realsense &trade; 3D, sentuhan tikar, dan kamera tambahan dan sensor di Illuminator untuk menangkap warna gambar 3D dari objek Anda.&nbsp;<br />\r\nIkuti petunjuk sederhana dipandu untuk memutar dan menangkap objek dari berbagai sudut, dan menonton sebagai Sprout menggabungkan gambar untuk membangun model 3D yang indah, sepenuhnya dapat diedit di depan mata Anda.<br />\r\nPada intinya, Sprout adalah komputer kinerja tinggi dengan prosesor Intel&reg; Core &trade; i7, 1TB penyimpanan dan sistem operasi Windows. Sehingga memiliki banyak tenaga untuk segala sesuatu dari kantor ke studio<br />\r\nRevolusioner semua-sentuh antarmuka pengguna Sprout memungkinkan Anda mengontrol konten Anda langsung dengan tangan Anda di kedua 23 &quot;HD touchscreen penuh atau diproyeksikan tampilan pada 20-titik sentuh kapasitif Mat.</p>\r\n\r\n<p>Sebuah revolusi lengkap dalam scanning 3D.</p>\r\n\r\n<p>Capture 3D Tahap membuat scanning 3D dengan Sprout lebih mudah. Menempatkan obyek di atas panggung, memukul scan, dan menonton pergi bekerja. Capture 3D Tahap mengotomatisasi 360 derajat full scan, berputar dan menangkap objek hanya dalam posisi yang tepat. Sebuah 15-derajat tilt otomatis memastikan semua aspek proyek Anda ditangkap dengan sempurna</p>\r\n\r\n<p><strong><em>8. Virtual&nbsp; Keyword</em></strong></p>\r\n\r\n<p>Teknologi komputer terbaru keluar Perusahaan Dell ini,menggabungkan &nbsp;sebuah PC All in One dan smart desk.</p>\r\n\r\n<p>Sehingga pengguna memungkinkan mengetik di tempat yang tidak lajim &nbsp;,misalnya di atas meja. Tanpa memegang dan menekan &nbsp;keyboard komputer.</p>\r\n', 0, 1),
(6, 'TEKNOLOGI SMARTPHONE TERBARU', '03-11-2016', 'Asus-ZenFone-2-Laser-ZE550KL.jpg', '<p><strong>Asus ZenFone 2 Laser ZE550KL, Ponsel 4G LTE dengan Layar 5,5 Inci</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Brand smartphone Asus merupakan salah satu merek smartphone yang sudah populer di Indonesia. Salah satu smartphone kelas menengah dari Asus yang memiliki banyak kelebihan adalah ZenFone 2 Laser ZE550KL. Bisa dilihat dari namamnya, fitur utama yang disuguhkan</p>\r\n\r\n<p>smartphone ini berada pada sektor fotografi, di mana kamera utamanya sudah dilengkapi dengan laser auto focus. Asus ZenFone 2 Laser ZE550KL Asus menawarkan harga yang tidak terlalu tinggi untuk smartphone ini, dan menariknya smartphone ini sudah memiliki fitur yang terbilang lengkap. Berbeda dengan seri lain yang sudah masuk ke Indonesia dengan layar 5 inci, varian ini memiliki ukuran layar yang lebih besar. Tentu ini menjadi nilai tambah bagi para pecinta smartphone bongsor. Berikut adalah daftar spesifiaksi dari Asus ZenFone 2 Laser ZE550KL.</p>\r\n\r\n<ul>\r\n	<li>Layar: 5,5 inci IPS, HD 720p, 267ppi, Corning Gorilla Glass 4</li>\r\n	<li>Dimensi : 152.5 x 77.2 x 10.8 mm, 170 gram</li>\r\n	<li>Jaringan : EDGE, 3G HSPA, 4G LTE</li>\r\n	<li>Chipset : Qualcomm Snapdragon 410 Quad-core 1.2 GHz Cortex-A53 + GPU Adreno 306</li>\r\n	<li>Memori: 2GB RAM + 16GB memori internal (support micro SD hingga 128GB)</li>\r\n	<li>Kamera belakang : 13 megapiksel pada bagian belakang dengan f/2.0, OIS, laser autofocus, dual tone LED flash, face detection, panorama, HDR</li>\r\n	<li>Kamera depan : 5 megapiksel dengan f/2.0 pada bagian depan</li>\r\n	<li>Baterai: Li-Po 3000mAh</li>\r\n	<li>SIM: Dual SIM, micro SIM</li>\r\n	<li>OS : Android 5.2 Lollipop, ZenUI 2.2</li>\r\n</ul>\r\n\r\n<p>&nbsp;Untuk paket penjualannya masih sama dengan dengan seri smartphone Asus lainnya, yakni terdiri dari :</p>\r\n\r\n<ul>\r\n	<li>Perangkat smartphone Asus Zenfone 2 Laser</li>\r\n	<li>Buku manual</li>\r\n	<li>Buku garansi</li>\r\n	<li>Kepala charger</li>\r\n	<li>Kabel data</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Desain dan Bodi </strong></li>\r\n</ul>\r\n\r\n<p>Membahas pada bagian luarnya terlebih dahulu, Asus Zenfone 2 Laser ini memiliki desain yang hampir sama dengan jajaran Asus Zenfone terkini. Dibandingkan dengan seri ZenFone 2 Laser 5 inci, tak nampak perbedaan pada desain, hanya berbeda ukuran saja. Dengan mengusung bagian belakang yang melengkung, membuat smartphone ini terasa nyaman saat digenggam.</p>\r\n\r\n<p>Bodi Asus Zenfone 2 laser 2 Terlebih pada sisi belakang ini menggunakan bahan doff yang menyerupai karet, sehingga tidak membuat smartphone ini licin saat di genggam. Namu ada juga varian yang menggunakan bodi plastik dengan motif metal. Meski bodinya menyerupai metal, namun tak ditemukan bahan metal yang membungkus smartphone ini, karena baigan frame-nya pun juga terbuat dari plastik. Namun yang disayangkan, penggunaan bahan ini membuat bodi belakang smartphone mudah kotor dan rentan tergores.</p>\r\n\r\n<p>Power Button Asus ZenFone 2 Laser ZE550KL Seperti biasa, tombol kapasitif pada smartphone ini terpisah dengan layarnya, letaknya berada di bawah, dan tidak dilengkapi dengan led backlit, sehingga bagi sebagian orang sangat kurang cocok bila digunakan di tempat yang gelap. Port micro USB terdapat di bagian bawah, dan tombol volume di atas. Sementara tombol volume berada pada sisi belakang.</p>\r\n\r\n<p>Bodi Asus ZenFone 2 Laser Generasi kedua dari Asus ini tidak mengusung konsep unibody, yang berarti Anda bisa melepas casing belakang dan dapat melepas baterainya juga. Asus tidak menerapkan sistem hybrid, yang berarti terdapat dua slot SIM dan satu slot microSD. Salah satu slot SIM berada di samping, jadi Anda tak perlu repot-repot melepas baterai untuk mengganti SIM 2.</p>\r\n\r\n<ul>\r\n	<li><strong>Layar Asus </strong></li>\r\n</ul>\r\n\r\n<p>ZenFone 2 Laser ZE550KL mengusung layar seluas 5,5 inci, yang kami rasa smartphone ini dapat memberikan pengalaman yang terbilang baik. Selain itu adanya varian 5 inci dan 6 inci juga semakin memperkaya jajaran Asus ZenFone 2 Laser. Untuk resolusinya sendiri Asus Zenfone 2 Laser ZE550KL masih mengusung resolusi HD 1280&times;720, dengan kerapatan layar 267ppi. Untungnya layar pada smartphone ini telah dilapisi dengan pelindung Corning Gorilla Glass 4, sehingga tidak perlu khawatir bila diletakkan dalam saku, bersamaan dengan benda lainnya.</p>\r\n\r\n<p>Asus ZenFone 2 Laser Screen Penggunaan sehari-hari dengan smartphone ini terasa nyaman, apalagi saat diuji di luar ruangan, layar Asus Zenfone 2 Laser ini masih dapat terlihat jelas saat berada di bawah terik matahari. Namun diperlukan tingkat kecerahan yang maksimal agar mampu digunakan di bawah terik sinar matahari.</p>\r\n\r\n<p>Selain itu, warna yang dihasilkan juga terlihat sedikit pucat ketika berada di bawah sinar matahari.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;<strong>Antarmuka dan Software </strong></li>\r\n</ul>\r\n\r\n<p>Seperti Asus Zenfone lainnya, smartphone ini telah menggunakan tampilan antarmuka dari Asus sendiri, yakni ZenUI 2.2. Dengan berbasiskan sistem operasi Android 5.2 Lollipop, pergerakannya terasa lembut, cepat, dan perpindahan antar menu juga tidak dirasakan lagging. Tampilan Quick Setting juga sedikit berubah, dengan mengalami perombakan animasi saja.</p>\r\n\r\n<p>ZenUI Untuk memperkaya tampilan dari ZenUI, Asus telah menyediakan banyak tema yang dapat gunakan secara gratis. Anda bisa menyesuaikan tema dengan mood Anda atau sesuai dengan keinginan. Namun tidak semua tema tersedia secara gratis, karena ada beberapa pengembang yang memasang harga untuk tema buatan mereka.</p>\r\n\r\n<p>Theme Asus memiliki aplikasi perpesanan dan dialler milik mereka sendiri yang mengadopsi tema material UI seperti Android Lollipop. Anda dapat mengganti mode tampilan, yakni mode satu lapis tanpa app drawer, atau mode dua lapis dengan app drawer seperti kebanyakan smartphone stock Android. Jenis font dan animasi transisi juga bisa Anda sesuaikan dengan pilihan Anda.</p>\r\n\r\n<p>Asus telah memberikan smartphone ini banyak sekali aplikasi bawaan miliknya, yang meliputi browser, kalender, Asus ZenTalk, dan masih banyak lagi. Tak hanya menjejali dengan bloatware milik mereka sendiri, Asus juga menjejali ponsel ini dengan aplikasi pihak ketiga yang jumlahnya tidak sedikit. Untungnya bloatware dari pihak ketiga masih dapat dihapus.</p>\r\n\r\n<p>Satu hal yang tak kalah menarik dari Asus Zenfone 2 Laser ini adalah, sudah memiliki keyboard bawaan yang dapat kita sesuaikan tampilannya, seperti mengganti warna, bahkan gambar latar pada keyboard. Tentu ini mirip dengan keyboard pihak ketika yang kaya akan kustomisasi, namun tema yang tersedia untuk keyboard tak semuanya gratis, beberapa tema ada yang berbayar. Keyboard juga menyediakan berbagai bahasa masukan, termasuk emoji.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;<strong>Fitur </strong></li>\r\n</ul>\r\n\r\n<p>Untuk fitur, bisa dikatakan Asus Zenfone 2 Laser memiliki kesamaan dengan kebanyakan seri smartphone Asus lainnya. Anda akan menemukan Zen Motion, yang tidak lain adalah fitur gestur seperti smartphone yang beredar saat ini. Kita akan disuguhkan dua opsi pilihan pengaturan, yakni Touch Gesture, serta One Hand Mode.</p>\r\n\r\n<p>Mode Satu tangan One Hand Mode sangat diperlukan mengingat layar smartphone ini yang tidak memungkinkan untuk menggunakan satu tangan, cara mengaktifkannya dengan menekan tombol home sebanyak dua kali secara cepat, namun Anda harus mengaktifkannya di pengaturan.</p>\r\n\r\n<p>Pada bagian Touch Gesture, kita akan menemukan opsi pilihan lagi, yang di dalamnya berisi pengaturan mematikan dan menyalakan layar, dengan cara mengetuk layar dua kali secara cepat. Lalu juga ada beberapa huruf yang akan menjadi pintas aplikasi, seperti huruf W untuk membuka browser, C untuk membuka aplikasi kamera, dan masih banyak lagi. Selain itu, kita juga dapat mengubah aplikasi apa saja yang dapat dibuka menggunakan pintas tersebut.</p>\r\n\r\n<p>Lalu ada Easy Mode, di mana fitur ini memudahkan Anda dalam mengakses menu-menu di Asus Zenfone 2 Laser ini. Fitur ini lebih cocok untuk yang memiliki tangan besar, atau untuk lansia yang kesulitan dengan tampilan umum, karena ikon dan tombol navigasi menjadi lebih besar, dari ukuran biasanya.</p>\r\n\r\n<p>Mode Anak Mode Anak Asus juga menyematkan fitur Kids Mode yang mengamankan data-data penting dari jangkauan anak-anak. Ini sangat cocok jika smartphone sedang dimainkan oleh anak-anak. Kita tidak perlu takut data Anda terhapus, karena dengan mengaktifkan fitur ini, kita dapat memilih beberapa aplikasi apa saja yang dapat di akses, sehingga dapat mengantisipasi terjadinya hal yang tidak diinginkan, seperti file pekerjaan yang tidak sengaja terhapus dan masih banyak lainnya.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Membahas soal kamera, Asus Zenfone 2 Laser ini dibekali dengan sensor kamera sebesar 13 megapiksel pada bagian belakang, dengan aperture f/2.0. Sama seperti nama yang ia usung, smartphone ini juga telah memiliki laser autofokus di bagian belakang smartphone. Fungsinya untuk menangkap fokus dengan kecepatan yang sangat tinggi.</p>\r\n\r\n<p>Fitur ini biasanya terdapat pada handset high-end, namun kali ini Asus menghadirkannya pada handset kelas menengah ke bawah. Mode kamera Untuk mode kamera, Asus Zenfone 2 Laser ini bisa dikatakan lengkap, karena memiliki mode yang sangat lengkap, dari Otomatis, Manual, HDR, Resolusi Super, Pengindahan, Kode QR, Low Light, Malam, Kedalaman Bidang, Efek, Selfie Lebar, Animasi GIF, Panorama, Miniatur, Waktu Mundur, PanoShpere, Hapus Pintar, Senyum, Gerak Lambat, dan Time Lapse.</p>\r\n\r\n<p>Bahkan untuk fitur manualnya juga sangat lengkap, dari pengaturan exposure, kecepataan alias shutter speed, ISO, white balance, bahkan jarak fokusnya bisa kita atur secara manual.</p>\r\n\r\n<p>Manual mode Asus Zenfone 2 Laser ini juga mampu merekam hingga resolusi Full HD, sehingga hasil videonya lebih maksimal. Untuk fitur lain, sensor kamera belakang ini juga mampu mengambil foto dalam jumlah banyak dalam waktu singkat, atau biasa dikenal dengan burst mode. Untuk sekali pengambilan foto, jumlah maksimal foto yang dapat dihasilkan dengan menggunakan mode ini mencapai 100 foto atau 100 frame.</p>\r\n\r\n<p>Mode kamera depan Sementara untuk mengambil foto selfie dapat menggunakan kamera depan beresolusi 5MP. Kamera depan juga memiliki aperture f/2.0 yang sangat baik dalam menangkap gambar di kondisi gelap. Kamera depan memiliki sudut pandang hingga 85 dejarat, sehingga dapat menampung lebih banyak orang ketika selfie. Kamera depan memiliki beberapa mode, seperti Beautify, Panorama Selfie, Otomatis, Malam, HDR, Efek Warna, Low Light, Animasi GIF, Slow Motion, dan Time Lapse. Hasil dari kamera depan sendiri terbilang cukup baik, namun agak lambat ketika mengambil gambar. \\</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Asus ZenFone 2 Laser ZE550KL Baterai Asus ZenFone 2 Laser ZE550KL mengusung kapasitas baterai sebesar 3000mAh, yang mana performa dari baterai ponsel ini sangat baik. Sebagai ponsel dengan layar lebar, baterai yang dimiliki oleh smartphone ini mampu menangani semua kegiatan seharian, dengan penggunaan normal. Ketika Anda melepas charge pukul 6 pagi, maka dengan penggunaan normal smartphone ini mampu bertahan hingga sore bahkan malam hari.</p>\r\n\r\n<p>Namun hasil tetap saja berbeda pada masing-masing pengguna. Rata-rata screen on time mampu selama 6 jam. SOT Sementara untuk pengisiannya memang tidak terlalu cepat, smartphone ini membutuhkan waktu 3 hingga 4 jam untuk mengisi penuh kapasitas baterai sebesar 3000mAh. Namun secara keseluruhan, performa baterai dari smartphone ini terbilang sangat baik.</p>\r\n\r\n<ul>\r\n	<li><strong>Hardware </strong></li>\r\n</ul>\r\n\r\n<p>Berbicara soal performa, Asus Zenfone 2 Laser ZE550KL ini masih menggunakan chipset quad core dari Qualcomm Snapdragon 410. Chipset ini memang ditujukan untuk handset menengah ke bawah dan meski masih quad core, smartphone ini dapat menjalankan beberapa game berat, seperti Asphalt 8: Airborne, Asassassin&rsquo;s Creed: Identity, dan Modern Combar 5 dengan hasil yang baik. Namun untuk game Modern Combat 5: Blackout, kualitas grafis yang ditampilkan tidak semaksimal game lainnya. Benchmark2 Asus ZenFone 2 Laser ZE550KL memiliki RAM sebesar 2GB yang terbilang standar untuk smartphone saat ini.</p>\r\n\r\n<p>Dengan menggunakan ZenUI sebagai tampilannya, sisa RAM pada smartphone ini rata-rata mencapai 500MB dengan berbagai aplikasi, seperti messenger, sosial media, game, dan lain-lain. Jadi penggunaan ZenUI sendiri memang terbilang sangat boros dalam pengunaan RAM. Tentu dengan sisa RAM yang sedikit, terkadang terjadi lag ketika banyak aplikasi yang tengah berjalan. Untuk media penyimpanan, smartphone ini memiliki ROM sebesar 16GB, di mana hanya sekitar 10GB saja yang bisa Anda gunakan untuk menyimpan berbagai macam file.</p>\r\n\r\n<p>Namun karena Asus menyediakan slot microSD, Anda dapat memperluas kapasitas penyimpanan hingga 128GB.</p>\r\n\r\n<p>Kami juga sempat melakukan benchmarking dengan menggunakan beberapa aplikasi dari Play Store, seperti AnTuTu, GFXBench, dan 3D Mark. Untuk ponsel quad-core kelas mengengah ke bawah, skor yang dihasilkan smartphone ini memang tidak begitu istimewa, namun tidak buruk juga. Namun secara keseluruhan memiliki performa yang baik.</p>\r\n\r\n<p>Selain itu, smartphone ini juga telah dilengkapi dengan sensor gyroscope yang dapat Anda manfaatkan untuk bermain game virtual reality dengan menggunakan Google Cardboard. Smartphone ini memiliki kualitas audio yang baik, dengan speaker yang terletak di sisi belakang, speaker dapat melontarkan suara yang keras dan tidak terkesan garing. Terlebih adanya fitur Audio Wizard juga dapat meningkatkan kualitas trible maupun bass sesuai selera Anda, fitur ini akan lebih terasa ketika menggunakan earphone.</p>\r\n\r\n<ul>\r\n	<li><strong>Kesimpulan </strong></li>\r\n</ul>\r\n\r\n<p>Menyasar kelas menengah ke bawah, Asus Zenfone 2 Laser ZE550KL ini menurut kami dapat mencukupi kebutuhan Anda sehari-hari. Hadir dengan fitur yang sangat lengkap dan dibekali dengan baterai yang tergolong besar, smartphone ini dapat diandalkan dalam kegiatan apapun. Banyaknya mode tampilan antarmuka, juga menjadi nilai lebih dari smartphone ini, karena bisa Anda sesuaikan dengan kebutuhan.</p>\r\n\r\n<p>Asus Zenfone 2 Laser Dengan harga yang cukup terjangkau bagi kalangan muda, smartphone ini menawarkan berbagai kelebihan terutama pada sektor fotografi, karena smartphone sudah mendukung laser autofokus yang dapat menangkap fokus kurang dari satu detik.</p>\r\n\r\n<p>Mode pengambilan gambar yang dihadirkan juga sangat lengkap, seolah kamera profesional ada dalam genggaman. Hadir dengan body yang cukup besar, Asus mengusung desain curve atau melengkung pada sisi belakang, sehingga Anda tetap nyaman untuk menggenggamnya. Secara keseluruhan, smartphone ini dapat memberikan semua kebutuhan yang Anda inginkan pada ponsel kelas menengah. Harga Asus ZenFone 2 Laser ZE550KL saat ini berada di kirasan Rp2.000.000.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Kapasitas baterai 3000mAh yang termasuk awet</li>\r\n	<li>Kamera dilengkapi dengan laser autofocus</li>\r\n	<li>Mendukung 4G di kedua SIM</li>\r\n	<li>Tekstur cover belakang tidak licin Ada</li>\r\n	<li>LED notifikasi</li>\r\n	<li>Kaya kustomisasi tampilan antarmuka</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kekurangan</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Chipset masih menggunakan Snapdragon 410</li>\r\n	<li>Resolusi layar masih HD 720p</li>\r\n	<li>Sisa RAM sedikit</li>\r\n	<li>Kamera depan lambat dalam mengambil gambar</li>\r\n</ol>\r\n', 0, 1),
(7, 'Praktisnya Teknologi Di Masa Kini', '03-11-2016', 'Teknologi-masa-kini.jpeg', '<p>Beberapa tahun yang lalu, banyak orang yang masih merasa tabu dalam membicarakan teknologi. Karena kebanyakan khawatir dengan kesalah pahaman dalam mengartikan teknologi.&nbsp;</p>\r\n\r\n<p>Namun kini teknologi telah menjadi bagian dari keseharian manusia. Teknologi semakin berkembang seiring dengan perkembangan jaman. Produk yang dihasilkan saat ini memiliki fitur yang dibuat dengan teknologi yang semakin mendekati kebutuhan manusia sehari &ndash; hari. Teknologi yang semakin manusiawi inilah yang semakin banyak dibahas oleh masyarakat.&nbsp;</p>\r\n\r\n<p>Apalagi pada perangkat telefon pintar. Perangkat smartphone merupakan perangkat dengan teknologi yang paling mendekati dengan kebutuhan manusia. Smartphone tidak lagi menjadi alat komunikasi, namun bisa menjadi alat penunjang pekerjaan atau produktivitas manusia. Nah berikut adalah fitur-fitur pada smartphone yang dapat membantu kepraktisan pada penggunanya:&nbsp;</p>\r\n\r\n<p><strong>Smart Remote Control</strong></p>\r\n\r\n<p>Smartphone saat ini juga dapat menggantikan fungsi remote untuk mengendalikan perangkat elektronik seperti TV, AC, DVD player, proyektor dan alat elekronik lainnya. Dengan memanfaatkan sensor infra merah sebagai komponen pengirim sinyal, dan pengembangan peranti lunak khusus, smartphone bisa digunakan sebagai remote dengan berbagai macam perangkat elektronik. Kompartibilitas data remote pun dapat ditambah melalui pembaharuan perangkat lunak.&nbsp;</p>\r\n\r\n<p><strong>Flash Shot&nbsp;</strong></p>\r\n\r\n<p>Perkembangan kamera smartphone dewasa ini selain mengarah ke kualitas hasil foto juga mengarah ke user experience. Apalagi jika menawarkan keunggulan pemotretan cepat seperti&nbsp;<strong>Flash shot</strong>. Tanpa harus masuk ke menu dan mengaktifkan kamera, dalam kondisi apapun dengan menekan kombinasi tombol volume up dan down secara bersamaan dapat langsung memotret cepat, bahkan dalam kondisi stand by layar mati.&nbsp;</p>\r\n\r\n<p><strong>Fill light Selfie&nbsp;</strong></p>\r\n\r\n<p>Selfie atau swa foto adalah fitur paling favorit pada smartphone saat ini, apalagi ketika berkumpul dengan keluarga dan teman, tentu harus berfoto bersama kemudian berbagi di sosial media. Namun bagaimana jika berkumpul dalam ruangan tertutup atau saat malam hari ketika lingkungan sekitar dalam kondisi cahaya minim? Menggunakan lampu kilat untuk selfie dalam jarak dekat tentunya sangat membuat tidak nyaman mata, fitur&nbsp;<strong>Fill light selfie</strong>&nbsp;akan membantu memotret dalam kondisi gelap dengan menghasilkan foto yang terang, tanpa bantuan lampu kilat, melainkan dengan optimalisasi software.&nbsp;</p>\r\n\r\n<p><strong>Free screenshot&nbsp;</strong></p>\r\n\r\n<p>Tangkapan layar biasa digunakan untuk menyimpan tulisan dalam format gambar. Hasil tangkapan layar ini akan mudah dikategorikan dan ditampilkan kembali. Sebelumnya tangkapan layar atau screenshot hanya terbatas pada satu cuplikan layar saja, namun fitur&nbsp;<strong>Free screenshot</strong>&nbsp;mampu menggabungkan beberapa cuplikan layar menjadi satu gambar, sehingga untuk menangkap gambar sebuah situs, artikel berita atau histori percakapan saat chatting tidak lagi terpisah menjadi beberapa gambar.&nbsp;</p>\r\n\r\n<p><strong>USB OTG&nbsp;</strong></p>\r\n\r\n<p>Kini smartphone tidak lagi menjadi sekedar perangkat komunikasi, namun juga dijadikan alat produktifitas kerja. Cukup sambungkan kabel OTG perangkat akan langsung mengenali perangkat USB, untuk membaca atau menyalin data tidak lagi memerlukan bantuan PC atau laptop.&nbsp;</p>\r\n\r\n<p>5 fitur ini merupakan kecanggihan teknologi yang disematkan dalam smartphone terbaru OPPO Mirror 5, fitur-fitur ini merupakan optimasi peningkatan dari penggunaan smartphone, melihat saat ini smartphone juga sering digunakan sebagai perangkat kamera, atau pengganti PC ketika sedang mobilitas. Mirror 5 mulai dipasarkan di Indonesia pada pertengahan Agustus lalu, dipatok seharga Rp 2.999.000.</p>\r\n', 0, 1),
(8, 'Teknologi Komputer Terbaru dan Paling Canggih', '10-11-2016', '6_Teknologi_Komputer_Terbaru_dan_Tercanggih_Saat_Ini.jpg', '<p><strong>Teknologi Komputer Terbaru dan Paling Canggih</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Berbicara tentang penemuan di bidang komputer, seiring berjalannya waktu penemuan-penemuan yang ada sangatlah unik dan tentunya akan sangat membantu manusia dalam mengerjakan berbagai pekerjaannya. Tak hanya membantu pekerjaan kamu, namun komputer juga membantu mengurangi waktu kerjamu. Jika biasanya kamu mengerjakan sesuatu sangat lama, maka dengan komputer kamu bisa mengerjakan sesuatu dengan lebih singkat. Berikut ini teknologi komputer tercanggih dan terbaru yang wajib untuk kamu ketahui:</p>\r\n\r\n<p><strong>1. Biometric Sensor</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apakah kamu pernah mendengar tentang biometric sensor? Ini merupakan teknologi terbaru yang bisa diaplikasikan pada komputer. Teknologi canggih ini diciptakan oleh salah satu perusahaan komputer terbesar bernama Intel. Teknologi ini hampir sama dengan teknologi Apple yang digunakan untuk otorisasi kartu kredit saat melakukan pembayaran dengan Pay Apple. Biometric sensor membuat kamu lebih mudah untuk melakukan otorisasi pada berbagai situs. Jika biasanya kita harus menggunakan password atau username untuk mengakses sebuah situs, maka dengan biometric sensor kamu bisa masuk dengan lebih mudah, praktis dan juga aman.</p>\r\n\r\n<p><strong>2. Wireless Display</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wireless Display merupakan salah satu teknologi terbaru dan juga canggih yang sama-sama diprakarsai oleh perusahaan komputer terbesar bernama Intel. Dengan menggunakan Wireless Display, maka komputer dan laptop tidak perlu dihubungkan dengan sebuah kabel. Teknologi ini juga bisa membuat sebuah komputer atau laptop bisa terhubung dengan beberapa komputer atau laptop lainnya. Bagi kamu yang sering mempresentasikan sesuatu hal di depan publik, maka teknologi ini akan sangat membantu. Kamu tak perlu memasang kabel untuk mempresentasikan hasil kerja kamu. Cukup gunakan teknologi ini, maka kamu bisa mempresentasikan apa pun dengan mudah.</p>\r\n\r\n<p><strong>3. Wireless Charging</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sama-sama berasal dari Intel, teknologi wireless charging pun begitu canggih dan tentunya akan sangat membantu kamu. Jika biasanya kamu harus mengulur kabel untuk mengisi baterai laptopmu, maka hal itu tidak perlu dilakukan saat kamu memiliki wireless charging. Dengan wireless charging, tentunya kamu akan lebih mudah untuk mengisi baterai laptopmu tanpa harus repot menggunakan kabel.</p>\r\n\r\n<p><strong>4. Komputer Interaktif</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kompuer interaktif dari intel merupakan teknologi yang canggih dan juga baru. Komputer jenis ini akan sangat peka terhadap visual dan juga berbagai input yang dilakukan oleh penggunanya. Nantinya, teknologi ini pun akan dilengkapi dengan intel realsense 3D camera, dimana teknologi tersebut bisa sangat peka bahkan mampu mengatur jarak antara pengguna dengan sensor.</p>\r\n\r\n<p><strong>5. Creative Desktop dengan Touch Mat dari HP</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salah satu teknologi komputer yang canggih dan terbaru adalah Creative Desktop dengan Touch Mat. Teknologi ini diciptakan oleh sebuah perusahaan komputer HP (Hewlett-Packard). Teknologi ini seperti kanvas yang sudah dikombinasikan dengan komputer berteknologi kamara 3D. Teknologi ini memungkinkan penggunanya untuk bisa memindai berbagai benda yang ada di depan komputer, lalu memanipulasinya dengan kanvas yang berada di atas meja. Misalnya saja ada sebuah cangkir yang terletak di depan komputer jenis ini. Komputer tersebut akan mampu memindai cangkir yang ada di depannya. Setelah gambarnya berada daam komputer, maka kamu bisa memanipulasi gambar tersebut sesuai keinginan dengan menggunakan kanvas yang berada di dekat komputer tersebut.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jenis gambar yang nantinya akan masuk ke dalam komputer adalah jenis gambar 3D. Alat yang digunakan untuk memindai berbagai objek tersebut ke dalam Touch Mat adalah proyektor yang terletak di atas Sprout.</p>\r\n\r\n<p><br />\r\n<strong>6. Virtual Keyboard</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Teknologi canggih dan baru ini diciptakan oleh perusahaan Dell. Prinsip kerja teknologi ini adalah dengan menggabungkan sebuah PC all in one dan juga smart desk. Dengan teknologi ini, pengguna akan bisa mengetik langsung di atas meja. Nah, tentunya teknologi ini akan sangat membantu bukan? Jari-jari kamu tidak perlu memegang keyboard komputer dan tentunya lebih lincah bergerak saat mengetik apa pun. Teknologi jenis ini pastinya akan sangat berguna untuk kamu dalam mengerjakan berbagai jenis tugas.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Itulah beberapa teknologi komputer terbaru dan juga tercanggih yang pastinya sangat sayang untuk kamu lewatkan. Seiring berjalannya waktu, tentunya penemuan di dunia komputer akan lebih banyak dan juga lebih canggih. Jadi, siapkah kamu untuk menyambut teknologi lain yang lebih canggih? Lalu adakah teknologi di atas yang menarik perhatian kamu sehingga kamu ingin memilikinya? Yang pasti, beberapa teknologi di atas dimaksudkan untuk membantu pekerjaan manusia, sehingga manusia bisa lebih mudah dalam mengerjakan pekerjaannya. Jika kamu berminat untuk memiliki teknologi di atas, jangan lupa untuk melihat-lihat teknologi komputer terbaru dengan berkunjung ke berbagai website perusahaan komputer. Hal seperti itu bisa membuat wawasanmu bertambah, dan tentunya tak ketinggalan info tentang teknologi komputer tercanggih dan terbaru saat ini.</p>\r\n', 0, 1),
(9, 'Perlunya Belajar Etika dalam Interaksi Online di Jejaring Sosial', '10-11-2016', 'blogger-image--423838179.jpg', 'Jejaring sosial kini tak hanya dikenal sebagai lokasi untuk eksis di dunia online. Jejaring sosial kini pun bisa digunakan untuk berbagai tujuan. Tak jarang, berkat jejaring sosial, kampanye sosial pun bisa dilaksanakan dengan sukses. Namun sayangnya, tak sedikit pula yang mendapatkan imbas buruk dari meningkatnya penggunaan jejaring sosial ini.\r\n\r\nMenilik fenomena penggunaan jejaring sosial di Indonesia, ada cukup banyak kasus yang memperlihatkan bagaimana etika yang kurang diperhatikan oleh para pengguna jejaring sosial di Indonesia. Contoh kasus yang terbaru adalah bagaimana seorang anggota kepolisian yang mendapatkan cibiran dan cemooh dari para netizen tanah air. Banjir cemoohan dan cibiran itu terjadi karena polisi tersebut menuliskan kata-kata yang tak pantas kepada salah seorang pengguna Facebook.\r\n\r\nDan kasus seperti ini pun bukan pertama kalinya terjadi. Beberapa kasus serupa pernah pula menimpa pengguna jejaring sosial lainnya. Intinya, etika saat berinteraksi di jejaring sosial sangat kurang diperhatikan oleh para pengguna internet di Indonesia. Terlebih saat ini jejaring sosial memberikan kebebasan untuk bisa berinteraksi dengan orang yang benar-benar asing dan tidak kita kenal sebelumnya. Penggiat jejaring sosial, Nukman Luthfie pernah mengatakan kalau seorang pengguna internet harus mempunyai batas-batas yang jelas saat berinteraksi di sosial media. Batas-batas yang dimaksudnya tersebut adalah adanya aturan hukum yang bisa memberikan sanksi untuk mereka yang tidak mengindahkan aturan selama berinteraksi di jejaring sosial. Lebih lanjut, Nukman mengatakan kalau sosial media adalah sebuah ruang publik. Dan seperti halnya ketika berinteraksi di ruang publik di dunia nyata, pengguna sosial media juga tidak bisa bicara sembarangan. Terlebih mengeluarkan umpatan dan kata-kata yang dapat menyakiti perasaan orang lain.\r\n\r\n\r\n\r\n\r\n', 0, 1),
(10, 'Prediksi Ancaman Keamanan Cyber di Tahun 2017', '25-11-2016', '182812_620.jpg', '<p>Derek Manky, global security strategist Fortinet, mengatakan perluasan permukaan yang dapat diserang akibat inovasi teknologi seperti cloud computing dan perangkat IOT, kekurangan bakat keamanan cyber, dan tekanan peraturan menjadi faktor pendorong yang signifikan bagi ancaman cyber.</p>\r\n\r\n<p>Berikut prediksi Fortinet.</p>\r\n\r\n<p>1. Dari cerdas hingga lebih cerdas.</p>\r\n\r\n<p>Ancaman semakin pintar dan semakin mampu beroperasi secara mandiri. Di tahun mendatang Fortinet memperkirakan akan ada malware yang dirancang &quot;seperti-manusia&quot; dengan pembelajaran adaptif, berbasis keberhasilan untuk meningkatkan dampak dan efektivitas serangan.</p>\r\n\r\n<p>2. Produsen IOT akan bertanggung jawab atas pelanggaran keamanan</p>\r\n\r\n<p>Jika produsen IOT gagal untuk lebih mengamankan perangkat mereka, dampak pada ekonomi digital bisa menghancurkan jika konsumen mulai ragu-ragu untuk membeli produk mereka akibat ketakutan akan keamanan cyber. Fortinet melihat konsumen, vendor dan kelompok kepentingan lainnya akan lebih banyak meminta tindakan penciptaan dan penegakan standar keamanan sehingga produsen bertanggung jawab atas perilaku perangkat mereka.</p>\r\n\r\n<p>3. 20 miliar perangkat IOT adalah mata rantai terlemah untuk menyerang Cloud</p>\r\n\r\n<p>Mata rantai terlemah dalam keamanan Cloud tidak ditemukan dalam arsitekturnya, tapi terletak di jutaan perangkat remote yang mengakses sumber daya Cloud.</p>\r\n\r\n<p>4. Penyerang akan memulai konflik di kota-kota pintar</p>\r\n\r\n<p>Dengan pertumbuhan otomatisasi bangunan dan sistem manajemen yang terus menerus selama setahun ke depan, mereka akan menjadi target para hacker.</p>\r\n\r\n<p>5. Ransomware hanya awal dari malware</p>\r\n\r\n<p>Fortinet memperkirakan serangan yang sangat terfokus terhadap target berprofil tinggi, seperti selebriti, tokoh politik, dan organisasi besar.</p>\r\n\r\n<p>6. Teknologi harus menutup kesenjangan keterampilan cyber</p>\r\n\r\n<p>Kurangannya profesional yang terampil dalam keamanan cyber berarti bahwa banyak organisasi atau negara yang ingin berpartisipasi dalam ekonomi digital global akan menghadapi risiko besar. Mereka tidak memiliki pengalaman atau pelatihan yang diperlukan untuk mengembangkan kebijakan keamanan, melindungi aset penting di lingkungan jaringan, atau mengidentifikasi dan menanggapi serangan yang lebih canggih saat ini.</p>\r\n', 0, 1);
INSERT INTO `berita` (`id_berita`, `judul_berita`, `tgl_berita`, `gambar`, `isi_berita`, `id_kategori`, `id_admin`) VALUES
(11, 'Cara melindungi komputer dan laptop dari virus', '30-11-2016', '', '<h1>Cara Melindungi Komputer dan Laptop Dari Virus</h1>\r\n\r\n<p>Tuesday, November 29th, 2016 -&nbsp;<a href=\"http://www.it-artikel.com/program-komputer\">Program Komputer</a></p>\r\n\r\n<p><a href=\"http://www.it-artikel.com/2016/11/cara-melindungi-komputer-dan-laptop-dari-virus.html\"><strong>Cara Melindungi Komputer dan Laptop Dari Virus</strong></a>&nbsp;&ndash; Alhamdulillah pengguna internet dimaan saja berada, pada kesempatan ini saya akan membicarakan masalah virus komputer, adapun update terbaru pada malam ini yaitu&nbsp;<em>Cara Melindungi Komputer dan Laptop Dari Virus</em>&nbsp;, waspadalah sahabat, virus selalu mengincar kesehatan komputer dan laptop Anda atau sekali Anda lengah penyesalan tidak akan berarti apa-apa hehe &nbsp;hiii serem ya kalo sampai komputer atau laptop kita terserang virus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"data:image/jpeg;base64,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', 0, 1);
INSERT INTO `berita` (`id_berita`, `judul_berita`, `tgl_berita`, `gambar`, `isi_berita`, `id_kategori`, `id_admin`) VALUES
(12, 'Jaringan Komputer', '27-02-2017', '', '<p><strong>A.PENGERTIAN JARINGAN KOMPUTER</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jaringan Komputer adalah suatu sistem yang didalamnya terdiri dari dua atau lebih perangkat komputer serta perangkat - perangkat lainnya yang dibuat atau dirancang untuk dapat berkerja sama dengan tujuan agar dapat berkomunikasi, mengakses informasi, meminta serta memberikan layanan atau service antara komputer satu dengan yang lainnya, Jaringan komputer memungkinkan penggunanya dapat melakukan komunikasi satu sama lain dengan mudah, Selain itu, peran jaringan komputer sangat diperlukan untuk mengintegrasi data antar komputer-komputer client sehingga diperolehlah suatu data yang relevan</p>\r\n\r\n<p><strong>B.MANFAAT JARINGAN KOMPUTER</strong></p>\r\n\r\n<ul>\r\n	<li>Dengan jaringan komputer, kita bisa mengakses file yang kita miliki sekaligus file orang lain yang telah diseberluaskan melalui suatu jaringan, semisal jaringan internet.</li>\r\n	<li>Melalui jaringan komputer, kita bisa melakukan proses pengiriman data secara cepat dan efisien.</li>\r\n	<li>Jaringan komputer membantu seseorang berhubungan dengan orang lain dari berbagai negara dengan mudah.</li>\r\n	<li>Selain itu, pengguna juga dapat mengirim teks, gambar, audio, maupun video secara real time dengan bantuan jaringan komputer.</li>\r\n	<li>Kita dapat mengakses berita atau informasi dengan sangat mudah melalui internet dikarenakan internet merupakan salah satu contoh jaringan komputer.</li>\r\n	<li>Misalkan dalam suatu kantor memerlukan printer, kita tidak perlu membeli printer sejumlah dengan komputer yang terdapat pada kantor tersebut. Kita cukup membeli satu printer saja untuk digunakan oleh semua karyawan kantor tersebut dengan bantuan jaringan komputer.</li>\r\n</ul>\r\n\r\n<p><strong>C.MACAM MACAM JARINGAN KOMUTER</strong></p>\r\n\r\n<p><strong>&nbsp;A. Berdasarkan Jangkauan Geografis</strong></p>\r\n\r\n<p><strong>&nbsp;1. LAN</strong></p>\r\n\r\n<p>&nbsp;&nbsp; Local Area Network atau yang sering disingkat dengan LAN &nbsp;&nbsp;merupakan jaringan yang hanya mencakup wilayah kecil saja, semisal warnet, kantor, atau sekolah. Umumnya jaringan LAN luas areanya tidak jauh dari 1 km persegi.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Biasanya jaringan LAN menggunakan teknologi IEEE 802.3 Ethernet yang mempunyai kecepatan transfer data sekitar 10, 100, bahkan 1000 MB/s.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Selain menggunakan teknologi Ethernet, tak sedikit juga yang menggunakan teknologi nirkabel seperti Wi-fi untuk jaringan LAN.</p>\r\n\r\n<p><strong>&nbsp;2. MAN</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Metropolitan Area Network atau MAN merupakan jaringan yang mencakup suatu kota dengan dibekali kecepatan transfer data yang tinggi. Bisa dibilang, jaringan MAN merupakan gabungan dari beberapa jaringan LAN.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Jangakauan dari jaringan MAN berkisar 10-50 km. MAN hanya memiliki satu atau dua kabel dan tidak dilengkapi dengan elemen switching yang berfungsi membuat rancangan menjadi lebih simpel</p>\r\n\r\n<p><strong>&nbsp;3.WAN</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Wide Area Network atau WAN merupakan jaringan yang jangkauannya mencakup daerah geografis yang luas, semisal sebuah negara bahkan benua.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; WAN umumnya digunakan untuk menghubungkan dua atau lebih jaringan lokal sehingga pengguna dapat berkomunikasi dengan pengguna lain meskipun berada di lokasi yang berbebeda</p>\r\n\r\n<h3>B. Berdasarkan Distribusi Sumber Data</h3>\r\n\r\n<p><strong>1. Jaringan Terpusat</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; jaringan terpusat adalah jaringan yang terdiri dari komputer client dan komputer server dimana komputer client bertugas sebagai perantara dalammengakses sumber informasi data yang berasal dari komputer server</p>\r\n\r\n<p><strong>2. Jaringan Terdistribusi</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Jaringan ini merupakan hasil perpaduan dari beberapa jaringan terpusat sehingga memungkinkan beberapa komputer server dan client yang saling terhubung membentuk suatu sistem jaringan tertentu</p>\r\n\r\n<h3>C. Berdasarkan Media Transmisi Data yang Digunakan</h3>\r\n\r\n<p><strong>1. Jaringan Berkabel (Wired Network)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Media transmisi data yang digunakan dalam jaringan ini berupa kabel, Kabel tersebut digunakan untuk menghubungkan satu komputer dengan komputer lainnya agar bisa saling bertukar informasi/ data atau terhubung dengan internet,Salah satu media transmisi yang digunakan dalam <em>wired network</em> adalah kabel UTP.</p>\r\n\r\n<p><strong>2. Jaringan Nirkabel (Wireless Network)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Dalam jaringan ini diperlukan gelombang elektromagnetik sebagai media transmisi datanya,</p>\r\n\r\n<p>&nbsp;Berbeda dengan jaringan berkabel (wired network), jaringan ini tidak menggunakan kabel untuk bertukar informasi/ data dengan komputer lain melainkan menggunakan gelombang elektromagnetik untuk mengirimkan sinyal informasi/ data antar komputer satu dengan komputer lainnya</p>\r\n\r\n<h3>D. Berdasarkan Peranan dan Hubungan Tiap Komputer dalam Memproses Data</h3>\r\n\r\n<p><strong>1. Jaringan Client-Server</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Jaringan ini terdiri dari satu atau lebih komputer server dan komputer client. Biasanya terdiri dari satu komputer server dan beberapa komputer client,Komputer server bertugas menyediakan sumber daya data, sedangkan komputer client hanya dapat menggunakan sumber daya data tersebut.</p>\r\n\r\n<p><strong>2. Jaringan Peer to Peer</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Dalam jaringan ini, masing-masing komputer, baik itu komputer server maupun komputer client mempunyai kedudukan yang sama,Jadi, komputer server dapat menjadi komputer client, dan sebaliknya komputer client juga dapat menjadi komputer server.</p>\r\n\r\n<h3>E. Berdasarkan Topologi Jaringan yang Digunakan</h3>\r\n\r\n<p><strong>1. Topologi Ring</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Pada topologi ring setiap komputer di hubungkan dengan komputer lain dan seterusnya sampai kembali lagi ke komputer pertama, dan membentuk lingkaran sehingga disebut ring, topologi ini berkomunikasi menggunakan data token untuk mengontrol hak akses komputer untuk menerima data, misalnya komputer 1 akan mengirim file ke komputer 4, maka data akan melewati komputer 2 dan 3 sampai di terima oleh komputer 4, jadi sebuah komputer akan melanjutkan pengiriman data jika yang dituju bukan ip address</p>\r\n\r\n<p>&middot;&nbsp; Kelebihan dari topologi jaringan komputer ring adalah pada kemudahan dalam proses pemasangan dan instalasi, penggunaan jumlah kabel lan yang sedikit sehingga akan menghemat biaya.</p>\r\n\r\n<h3>&middot;&nbsp; Kekurangan paling fatal dari topologi ini adalah, jika salah satu komputer ataupun kabel nya bermasalah, maka pengiriman data akan terganggu bahkan error</h3>\r\n\r\n<p><strong>2. Topologi Bus</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Topologi jaringan komputer bus tersusun rapi seperti antrian dan&nbsp; menggunakan cuma satu kabel coaxial dan setiap komputer terhubung ke kabel menggunakan konektor BNC, dan kedua ujung dari kabel coaxial harus diakhiri oleh terminator</p>\r\n\r\n<p>&nbsp;&middot;&nbsp; Kelebihan dari bus hampir sama dengan ring, yaitu kabel yang digunakan tidak banyak dan menghemat biaya pemasangan.</p>\r\n\r\n<p>&nbsp;&middot;&nbsp; Kekurangan topologi bus adalah jika terjadi gangguan atau masalah pada satu komputer bisa menggangu jaringan di komputer lain, dan untuk topologi ini sangat sulit mendeteksi gangguan, sering terjadinya antrian data, dan jika jaraknya terlalu jauh harus menggunakan repeater</p>\r\n\r\n<p><strong>3. Topologi Star</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; Topologi ini membentuk seperti bintang karena semua komputer di hubungkan ke sebuah hub atau switch dengan kabel UTP, sehingga hub/switch lah pusat dari jaringan dan bertugas untuk mengontrol lalu lintas data, jadi jika komputer 1 ingin mengirim data ke komputer 4, data akan dikirim ke switch dan langsung di kirimkan ke komputer tujuan tanpa melewati komputer lain. Topologi jaringan komputer inilah yang paling banyak digunakan sekarang karena kelebihannya lebih banyak</p>\r\n\r\n<ul>\r\n	<li>Kelebihan topologi ini adalah sangat mudah mendeteksi komputer mana yang mengalami gangguan, mudah untuk melakukan penambahan atau pengurangan komputer tanpa mengganggu yang lain, serta tingkat keamanan sebuah data lebih tinggi, .</li>\r\n	<li>Kekurangannya topologi jaringan komputer ini adalah, memerlukan biaya yang tinggi untuk pemasangan, karena membutuhkan kabel yang banyak serta switch/hub, dan kestabilan jaringan sangat tergantung pada terminal pusat, sehingga jika switch/hub mengalami gangguan, maka seluruh jaringan akan terganggu.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>4. Topologi Mesh</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; Pada topologi ini setiap komputer akan terhubung dengan komputer lain dalam jaringannya menggunakan kabel tunggal, jadi proses pengiriman data akan langsung mencapai komputer tujuan tanpa melalui komputer lain ataupun switch atau hub</p>\r\n\r\n<ul>\r\n	<li>Kelebihanya adalah proses pengiriman lebih cepat dan tanpa melalui komputer lain, jika salah satu komputer mengalami kerusakan tidak akan menggangu komputer lain.</li>\r\n	<li>Kekurangan dari topologi ini sudah jelas, akan memakan sangat banyak biaya karena membutuhkan jumlah kabel yang sangat banyak dan setiap komputer harus memiliki Port I/O yang banyak juga, selain itu proses instalasi sangat rum</li>\r\n</ul>\r\n\r\n<p><strong>5. Topologi Tree</strong><br />\r\nTopologi jaringan komputer Tree merupakan gabungan dari beberapa topologi star yang dihubungan dengan topologi bus, jadi setiap topologi star akan terhubung ke topologi star lainnya menggunakan topologi bus, biasanya dalam topologi ini terdapat beberapa tingkatan jaringan, dan jaringan yang berada pada tingkat yang lebih tinggi dapat mengontrol jaringan yang berada pada tingkat yang lebih rendah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SUMBER ARTIKEL</p>\r\n\r\n<p>(<a href=\"http://hengkikristiantoateng.blogspot.com\">http://hengkikristiantoateng.blogspot.com</a>)</p>\r\n\r\n<p>(31-01-2017)</p>\r\n', 0, 1),
(13, 'Router', '27-02-2017', '', '<ul>\r\n	<li><strong>Pengertian ROUTER</strong></li>\r\n</ul>\r\n\r\n<p>Router adalah sebuah alat jaringan yang mengirimkan paket data melalui sebuah jaringan atau internet menuju tujuannya , melalui sebuah proses yang dikenal sebagai routing.</p>\r\n\r\n<p>Proses routing terjadi pada lapisan 3 (lapisan jaringan seperti internet protokol ) dari strack protokol tujuh lapis OSI.</p>\r\n\r\n<ul>\r\n	<li>fungsi router antara lain :</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>sebagai DHCP-Server&nbsp;</li>\r\n	<li>sebagai DNS</li>\r\n	<li>sebagai Firewall</li>\r\n	<li>sebagai Proxy Server</li>\r\n	<li><strong>jenis &ndash; jenis ROUTER:</strong></li>\r\n	<li><strong>Router aplikasi</strong> adalah sebuah aplikasi yang dapat diinstal pada&nbsp;sistem operasi komputer, sehingga&nbsp;sistem operasi&nbsp;computer tersebut dapat bekerja seperti router. Misalnya aplikasi WinGate, WinProxy, &nbsp;Winroute, SpyGate dll.</li>\r\n	<li><strong>Router Hardware</strong>&nbsp;adalah sebuah hardware yang memiliki kemampuan membagi IP Address.&nbsp;Router hardware&nbsp;dapat digunakan untuk membagi&nbsp;jaringan internet&nbsp;pada suatu wilayah, misalnya dari router ini adalah access point, wilayah yang mendapat Ip Address dan koneksi&nbsp;internet&nbsp;disebut Hot Spot Area.</li>\r\n	<li><strong>Router&nbsp;PC</strong>&nbsp;adalah sebuah komputer yang dimodifikasi sedemikian rupa sehingga dapat digunakan sebagai router. Sistem operasi yang populer untuk router PC saat ini adalah Mikrotik.</li>\r\n</ul>\r\n\r\n<p><strong>Sumber : </strong><a href=\"http://restirokhmatul.blogspot.co.id/2013/10/artikel-tentang-router.html\"><strong>http://restirokhmatul.blogspot.co.id/2013/10/artikel-tentang-router.html</strong></a></p>\r\n\r\n<ul>\r\n	<li><strong>ROUTER STATIS DAN DINAMIS</strong></li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong><em>Static routing (Routing Statis)</em></strong>&nbsp;adalah sebuah&nbsp;router&nbsp;yang memiliki tabel&nbsp;routing&nbsp;statik yang di setting secara manual oleh para administrator jaringan.&nbsp;Routing static pengaturan routing paling sederhana yang dapat dilakukan pada jaringan komputer.&nbsp;</li>\r\n	<li><strong><em>Dynamic Routing (Router&nbsp;Dinamis)</em></strong>&nbsp;adalah sebuah&nbsp;router&nbsp;yang memiliki dan membuat tabel routing&nbsp;secara otomatis dengan mendengarkan lalu lintas jaringan dan juga dengan saling berhubungan antara&nbsp;router&nbsp;lainnya. Dengan kata lain,&nbsp;<strong><em>routing dinamik</em></strong><em>&nbsp;adalah proses pengisian data routing di table routing secara otomatis.</em></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong><em>7 Lapisan OSI dan Fungsinya</em></strong></li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>PHYSICAL LAYER&nbsp;</strong>&nbsp;berfungsi untuk mendefinisakan media transmisi jaringan, metode pensinyalan, sinkronisasi bit, arsitektur jaringan,(<em>seperti halnya ehternet atau tokenring)</em>&nbsp;, topologi jaringan dan pengkabelan. Selain itu juga mengidentifikasikan bagaimana Network INterface Card (NIC) dapat berinteraksi dengan media kabel atau radio.</li>\r\n	<li><strong>DATA LINK LAYER</strong>&nbsp;&nbsp;berfungsi untuk menentukan bagaimana bit-bit data dikelompokan menjadi format yang disebut sebagai Frame, selain itu pada level ini terjadi koreksi kesalahan,flow control, pengalamatan perangkat keras (seperti halnya media acses control Adress&lt;MAC Adress&gt;) dan menentukan bagaimana perangkat -perangkat jaringan seperti hub, bridge, repeater dan switc layer dua berofrasi sfesisikasi IEEE 802 membagi level ini menjadi &nbsp;dua level anak yaitu Lapisan Logikal Link &nbsp;Control&lt;LLC&gt; dan Lapisan Media Acses Control &lt;MAC&gt;.</li>\r\n	<li><strong>NETWORK LAYER</strong>&nbsp;berfungsi untuk menidentifikasi alamat-alamat IP membuat header untuk paket-paket dan kemudian melakukan routing melalui internet working denganmenggunakan router&amp;switc layer-3.</li>\r\n	<li><strong>TRANSPORT LAYER</strong>&nbsp;berfungsi untuk memecah data ke dalam paket-paket data serta memberikan nomor urut ke paket-paket tersebut sehingga dapat disusun kembali ke nomor tujuan setelah diterima. Selain itu pada level ini juga membuat sebuah tanda bahwa paket diterima dengan suxesdan mentransmisikan ulang terhadap paket yang hilang di tengah jalan.</li>\r\n	<li><strong>SESSION LAYER</strong>&nbsp;berfungsi untuk mendefinisikan bagaimana koneksi dapat dibuat dipelihara atau dihancurkan. Selain itu juga dilakukan resolusi nama.</li>\r\n	<li><strong>PERSENTATION LAYER</strong>&nbsp;berfungsi untuk mentranslasikan data yang hendak di tranmisikan oleh aplikasi ke dalam format yang dapat ditranmiskan melalui jaringan. Protokol yang berada di level ini &nbsp;adalah perangkat lunak redisektor &lt;redirektor software&gt; seperti layanan workstation &lt;dalam Windows NT&gt; dan juga network shel &lt;semacam virtual network computering (VNC)&gt; atau remote Deskop Protokol (RDP).</li>\r\n	<li><strong>APPLICATION LAYER</strong>&nbsp;berfungsi sebagai antar muka aplikasi dengan fungsionalitas jaringan, mengatur bagaimana aplikasi dapat mengakses jaringan dan kemudian membuat pesan kesalahan. Protokol yang berada di lapisan ini adalah HTTP, FTP, SMTP dan NFS</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Keuntungan&nbsp;menggunakan router pada jaringan adalah :</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Isolasi trafik broadcast, Kemampuan ini memperkecil beban jaringan karena trafik jenis ini dapat diisolasikan pada sebuah LAN saja.</li>\r\n	<li>Fleksibilitas, Router dapat digunakan pada topologi jaringan apapun dan tidak peka terhadap masalah kelambatan waktu.</li>\r\n	<li>Pengaturan prioritas, Router dapat mengimplementasikan mekanisme pengaturan prioritas antar protokol.</li>\r\n	<li>Pengaturan konfigurasi, Router umumnya dapat lebih dikonfigurasi daripada bridge.</li>\r\n	<li>Isolasi masalah, Router membentuk penghalang antar LAN dan memungkinkan masalah yang terjadi diisolasi pada LAN tersebut.</li>\r\n	<li>Pemilihan jalur, Router umumnya lebih cerdas daripada bridge dan dapat menentukan jalur optimal antar dua sistem.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kerugian&nbsp;Menggunakan Router :</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Tergantung pada protocol, Router yang beroperasi pada lapisan network OSI hanya mampu meneruskan trafik yang sesuai dengan protokol yang diimplementasikan.</li>\r\n	<li>Biaya, Router umumnya lebih kompleks daripada bridge dan lebih mahal. Overhead pemrosesan pada router lebih besar sehingga throughput yang dihasilkan dapat lebih rendah daripada bridge.</li>\r\n	<li>Pengalokasian alamat, Dalam internetwork yang menggunakan router, memindahkan sebuah mesin dari LAN yang satu ke LAN yang lain berarti mengubah alamat jaringan pada sistem itu.</li>\r\n	<li>Sistem tak terjangkau, Penggunaan routing table statik menyebabkan beberapa sistem dapat terjangkau oleh sistem lain.</li>\r\n</ul>\r\n\r\n<p><strong>Sumber : http://melfayora.blogspot.co.id/2014/10/artikel-tentang-router.html</strong></p>\r\n', 0, 1),
(14, 'Server', '27-02-2017', '', '<ul>\r\n	<li>Server adalah sebuah sistem komputer yang menyediakan jenis layanan tertentu dalam sebuah jaringan komputer.server juga di dukung oleh prosesor yang bersifat scalable dan ram yang besar,juga dilengkapi dengan sistem oprasi khusus</li>\r\n	<li>SERVER APLIKASI</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Adalah server yang di gunakan untuk menyimpan berbagai aplikasi yang dapat di akses oleh client</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>SERVER DATA</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Server data di gunakan untuk menyimpan data baik yang di gunakan client maupun data uang diproses oleh server itu sendiri</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>PROXY</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Berfungsi untuk mengatur lalu lintas data</li>\r\n	<li>Bertanggung jawab melayani permintaan komputer client</li>\r\n	<li>Dapat menyimpan file,data untuk di akses bersama menggunakan file</li>\r\n</ul>\r\n\r\n<p>Kecepatan akses lebih karena penyediaan fasilitas jaringan dan pengelolaan nya di lakukan secara khusus</p>\r\n\r\n<p>Sistem keamanan dan administrasi jaringan lebih baik</p>\r\n\r\n<p>Sistem bacup data lebih baik</p>\r\n\r\n<p>Biaya oprasional relatif lebih mahal</p>\r\n\r\n<p>Kelangsungan jaringan sangat tergantung pasda server</p>\r\n\r\n<ul>\r\n	<li>Web Proxy dapat menyembunyikan ip address anda.</li>\r\n	<li>Web Proxy dapat di gunakan untuk mengakses website yang di blok oleh ISP atau organisasi.</li>\r\n	<li>Web Proxy dapat meningkatkan keamanan privacy anda.</li>\r\n	<li>Web Proxy dapat mem-filter cookies yang tidak di inginkan dan semua cookies yang tersimpan di encrypt.</li>\r\n	<li>Web Proxy dapat di gunakan untuk memblok website.</li>\r\n</ul>\r\n\r\n<p>SUMBER: https://www.google.co.id/webhp?sourceid=chrome-instant&amp;ion=1&amp;espv=2&amp;ie=UTF-8#safe=active&amp;q=ARTIKEL+SERVER</p>\r\n', 0, 1),
(15, 'Troubleshooting', '27-02-2017', '', '<p><strong>PENGERTIAN TROUBLESHOOTING</strong></p>\r\n\r\n<p>Troubleshooting merupakan cara menyelesaikan masalah&nbsp;&nbsp;pada sistem komputer atau piranti teknologi lain menggunakan metode yang sistematik.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;<strong>TEKNIK TROUBLESHOOTING</strong></li>\r\n</ul>\r\n\r\n<p>Teknik dalam Troubleshooting Terdapat dua macam teknik dalam mendeteksi permasalahan dalam komputer, yaitu teknik Forward dan teknik Backward.</p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp;&nbsp; Teknik Forward</strong></p>\r\n\r\n<p>teknik ini segala macam permasalahan dideteksi semenjak awal komputer dirakit dan biasanya teknik ini hanya digunakan oleh orang-orang dealer komputer yang sering melakukan perakitan komputer.</p>\r\n\r\n<p><strong>2.</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Teknik Backward</strong></p>\r\n\r\n<p>teknik Backward adalah teknik untuk mendeteksi kesalahan pada komputer setelah komputer dinyalakan (dialiri listrik).</p>\r\n\r\n<p><strong>JENIS JENIS TROUBLESHOOTING</strong></p>\r\n\r\n<ul>\r\n	<li><strong>HARDWARE TROUBLESHOOTING</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perangkat keras (hardware) merupakan salah satu element dari sistem komputer, suatu alat yang bisa dilihat dan diraba oleh manusia secara langsung, yang mendukung proses komputerisasi. perangkat keras yang wajib dimiliki adalah:</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;monitor : perangkat keras yang berguna untuk memvisualisasikan output dari proses yang terjadi di PC,</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;Keyboard : alat input yang digunakan untuk memasukkan karakter huruf, angka,atau perintah khusus ke komputer.</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;Motherboard : tempat melekatnya berbagai komponen komputer.</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;Memory :untuk menyimpan data secara sementara atau dalam jangka watu yang lama.</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;RAM : untuk menyimpan hasil eksekusi program dan sistem driver dari perangkat keras yang digunakan.</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;Harddisk : media penyimpanan yang dibangun dari satu atau lebih piringan metal yang diatur secara horizontal terhadap poros putaran piring tersebut.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;. <strong>SOFTWARE TROUBLESHOOTING</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jika diamati dengan baik, masalah yang sering muncul pada software komputer yaitu:</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;&nbsp;Proses POST (Power on Self Test) tidak jalan sempurna, sehingga tidak bisa masuk ke proses operating system. Beberapa permasalahan yang sering muncul antara lain:</p>\r\n\r\n<p>- Komputer mati</p>\r\n\r\n<p>&nbsp; - Komputer hidup tapi blank atau tidak ada tampilan di layer dan tidak ada aktivitas.</p>\r\n\r\n<p>&nbsp; - Komputer tidak dapat di setting hardwarenya, setting kacau dan POST tidak jalan</p>\r\n\r\n<ul>\r\n	<li><strong>MENGANALISA TROUBLESHOOTING</strong></li>\r\n</ul>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:50px; width:30px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:26px\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Analisa Pengukuran</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pada tahapan ini, pendeteksian masalah dengan cara mengukur tegangan listrik pada komponen nomor 1 sampai 3. Gunakan alat bantu seperti multitester untuk mengukur tegangan yang diterima atau diberikan komponen tersebut.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Analisa Suara</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pada tahapan ini pendeteksian masalah menggunakan kode suara (beep) yang dimiliki oleh BIOS dan dapat kita dengar lewat PC Speaker. Untuk mempermudah pengenalan kode suara tersebut</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;1 beep pendek&nbsp;DRAM gagal merefresh</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;2 beep pendek&nbsp;Sirkuit gagal mengecek keseimbangan DRAM Parity (sistem memori)</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;3 beep pendek&nbsp;BIOS gagal mengakses memori 64KB pertama.</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;4 beep pendek&nbsp;Timer pada sistem gagal bekerja</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;5 beep pendek&nbsp;Motherboard tidak dapat menjalankan prosessor</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;6 beep pendek&nbsp;Controller pada keyboard tidak dapat berjalan dengan baik</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;7 beep pendek&nbsp;Video Mode error</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;8 beep pendek&nbsp;Tes memori VGA gagal</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;9 beep pendek&nbsp;Checksum error ROM BIOS bermasalah</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;10 beep pendek CMOS shutdown read/write mengalami errror</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;11 beep pendek Chache memori error</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;1 beep panjang 3 beep pendek Conventional/Extended memori rusak</p>\r\n\r\n<p>&nbsp;&sect;&nbsp;&nbsp;1 beep panjang 8 beep pendek Tes tampilan gambar gagal</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Analisa Tampilan</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pada tahapan ini pendeteksian masalah cenderung lebih mudah karena letak permasalahan dapat diketahui berdasarkan pesan error yang ditampilkan di monitor.</p>\r\n\r\n<p><strong>E.</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>CARA MELAKUKAN TROUBLESHOOTING</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setelah kita membahas teknik dan jenis dalam troubleshooting di atas maka selanjutnya kita akan mencoba mengenal dan memahami bagaimana melakukan troubleshooting tersebut. pada saat kita ingin melakukan troubleshooting ada 3 hal yang perlu di perhatikan atau perlu kita pahami yaitu:</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;Error saat booting</p>\r\n\r\n<p>Problem : user melaporkan bahwa komputernya tidak bisa dinyalakan.</p>\r\n\r\n<p>Proses booting tidak selesai dengan eror di layar</p>\r\n\r\n<p>Analisis : Pada saat booting, komputer akan memeriksa perangkat yang terpasang padanya. Ada beberapa tanda yang muncul baik yang tampil pada layar, maupun bunyi beep yang dihasilkan speaker.</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Komputer Mati</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &nbsp;penyebab kenapa komputer tidak hidup atau tidak ada power adalah karena kabel listrik tidak terpasang dengan benar, kabel listrik ada yang rusak, terjadi kerusakan pada UPS, stabilizer atau Power Supply.</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;PC Hidup tapi tidak muncul Gambar pada Monitor</p>\r\n\r\n<p>- Pertama periksa arus listrik ke monitor.</p>\r\n\r\n<p>- Jika Monitor tidak menyala kemungkinan besar ada kerusakan pada Monitornya, maka cobalah untuk mengganti Monitor dengan yang baru.</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;Terdengar Bunyi Beep</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;Keyboard tidak dikenal oleh PC</p>\r\n\r\n<p>- Cek konektor keyboard ke motherboard, pastikan terhubung dan pastikan lampu indikator menyala.</p>\r\n\r\n<p>- Restart PC, jika masih terjadi kesalahan, mungkin Keyboardnya rusak. Periksa keyboardnya di PC lain</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;Mouse tidak terdeteksi oleh PC</p>\r\n\r\n<p>- Periksa mouse anda, jika tidak menyala periksa kabel konektornya, pastikan terpasang dengan benar.</p>\r\n\r\n<p>- Jika belum menyala mungkin kabel putus atau komponen dalam Mouse putus. periksa mouse anda di PC lain.</p>\r\n\r\n<p>- Jika Mouse menyala tetapi mouse tidak bisa, periksa di Device Manager, kemungkinan mouse anda tidak terdetek di PC anda, periksa drivernya sudah terinstal atau belum.</p>\r\n\r\n<p>- Jika sudah terinstal tapi masih tidak bisa, kemungkinan Mouse yang anda gunakan tidak Compatible dengan OS anda.</p>\r\n\r\n<p>- Coba beli baru Mouse yang compatible dengan OS anda.</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;Komputer Hang atau Crash</p>\r\n\r\n<p>&nbsp;Ketika kita sedang menjalankan computer tiba-tiba berhenti, tidak merespon, mouse atau keyboard tidak berfungsi dan lain sebagainya, maka penanganannya adalah:</p>\r\n\r\n<p>- Restart computer melalui tombol restart yang ada pada chasing.</p>\r\n\r\n<p>- Jika hal tersebut belum menyelesaikan masalah, maka kerusakan mungkin terjadi &nbsp;&nbsp;&nbsp;pada hardware.</p>\r\n\r\n<p>8. Muncul Tulisan &ldquo;DISK BOOT FAILURE, INSERT SYSTEM DISK AND PRESS ENTER&rdquo;.</p>\r\n\r\n<p>sumber:&nbsp; (<a href=\"http://boeddinkstekom.blogspot.co.id/2015/08/makalah-troubleshooting.html\">http://boeddinkstekom.blogspot.co.id/2015/08/makalah-troubleshooting.html</a>)</p>\r\n\r\n<p>Selasa,24-01-2017</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 1),
(16, '7 Layer OSI', '27-02-2017', 'osi.jpg', '<p>Pengertian OSI Layer</p>\r\n\r\n<p>OSI adalah standar komunikasi yang diterapkan di dalam jaringan komputer. Standar itulah yang menyebabkan seluruh alat komunikasi dapat saling berkomunikasi melalui jaringan .</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terdapat 7 layer pada model OSI. Setiap layer bertanggungjawab secara khusus pada proses komunikasi data. Misalnya, satu layer bertanggungjawab untuk membentuk koneksi antar perangkat, sementara layer lainnya bertanggungjawab untuk mengoreksi terjadinya &ldquo;error&rdquo; selama proses transfer data berlangsung.</p>\r\n\r\n<ol>\r\n	<li>Model Layer OSI</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Upper layer&rdquo; fokus pada applikasi pengguna dan bagaimana file direpresentasikan di komputer .</li>\r\n	<li>Lower layer adalah intisari komunikasi data melalui jaringan actual .</li>\r\n	<li>Model OSI</li>\r\n</ol>\r\n\r\n<p>Tujuan utama penggunaan model OSI adalah untuk membantu desainer jaringan memahami fungsi dari tiap-tiap layer yang berhubungan dengan aliran komunikasi data. Termasuk jenis-jenis protokol jaringan dan metode transmisi.</p>\r\n\r\n<p>Fungsi 7 layer OSI :</p>\r\n\r\n<ol>\r\n	<li>Physical Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi untuk mendefinisikan media transmisi jaringan, metode pensinyalan, sinkronisasi bit, arsitektur jaringan, topologi jaringan dan pengabelan.</p>\r\n\r\n<ol>\r\n	<li>DataLink Layer</li>\r\n</ol>\r\n\r\n<p>Befungsi untuk menentukan bagaimana bit-bit data dikelompokkan menjadi format yangdisebut sebagai frame.</p>\r\n\r\n<ol>\r\n	<li>Network Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi untuk mendefinisikan alamat-alamat IP, membuat header untuk paket-paket, dan kemudian melakukan routing melalui internetworking dengan menggunakan Router dan Switch layer-3 (Switch Manage).</p>\r\n\r\n<ol>\r\n	<li>Transport Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi untuk memecah data ke dalam paket-paket data serta memberikan nomor urut ke paket-paket tersebut sehingga dapat disusun kembali pada sisi tujuan setelah diterima .</p>\r\n\r\n<ol>\r\n	<li>Session Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi untuk mendefinisikan bagaimana koneksi dapat dibuat, dipelihara, atau dihancurkan. Selain itu, di layer ini juga dilakukan resolusi nama.</p>\r\n\r\n<ol>\r\n	<li>Presentation Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi untuk mentranslasikan data yang hendak ditransmisikan oleh aplikasi ke dalam format yang dapat ditransmisikan melalui jaringan.</p>\r\n\r\n<ol>\r\n	<li>Application Layer</li>\r\n</ol>\r\n\r\n<p>Berfungsi sebagai antarmuka dengan aplikasi dengan fungsionalitas jaringan, mengatur bagaimana aplikasi dapat mengakses jaringan, dan kemudian membuat pesan-pesan kesalahan.</p>\r\n\r\n<ol>\r\n	<li>Manfaat OSI Layer</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Membuat peralatan vendor yang berbeda dapat saling bekerja sama .</li>\r\n	<li>Membuat standarisasi yang dapat di pakai vendor untuk mengurangi kerumitan</li>\r\n	<li>Standarisasi interfaces</li>\r\n	<li>Modular engineering</li>\r\n	<li>Kerjasama dan komunikasi tekhnologi yang berbeda</li>\r\n	<li>Memudahkan pelatihan network</li>\r\n</ol>\r\n\r\n<p>Sumber :</p>\r\n\r\n<ul>\r\n	<li><a href=\"http://www.diarypc.com/2014/01/pengertian-7-osi-layer-dan-tcpip.html\">://www.diarypc.com/2014/01/pengertian-7-osi-layer-dan-tcpip.html</a></li>\r\n	<li><a href=\"http://imchunkz.blogspot.co.id/2015/12/pengertian-dan-fungsi-dari-7-layer-osi.html\">://imchunkz.blogspot.co.id/2015/12/pengertian-dan-fungsi-dari-7-layer-osi.html</a></li>\r\n	<li><a href=\"https://www.google.com/search?q=cara+kerja+osi+layer&amp;client=firefox-b&amp;sa=X&amp;biw=1440&amp;bih=789&amp;tbm=isch&amp;tbo=u&amp;source=univ&amp;ved=0ahUKEwiZyK73n_DRAhUBNI8KHSYQBPUQsAQIIQ\">www.google.com/search?q=cara+kerja+osi+layer&amp;client=firefox-b&amp;sa=X&amp;biw=1440&amp;bih=789&amp;tbm=isch&amp;tbo=u&amp;source=univ&amp;ved=0ahUKEwiZyK73n_DRAhUBNI8KHSYQBPUQsAQIIQ#imgrc=lrEdk9jivFbulM</a><a href=\"https://waktuku.com/osi-layer-7/\">/</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tanggal Akses : 01-Februari-2017</p>\r\n', 0, 1),
(17, 'Physical La•	Repeater •	Modem yer', '27-02-2017', '', '<p>Physical Layer&nbsp; adalah lapisan pertama dalam&nbsp;<a href=\"https://id.wikipedia.org/wiki/OSI_Reference_Model\">model referensi jaringan OSI</a>&nbsp;(lapisan ini merupakan lapisan terendah) dari tujuh lapisan lainnya. Lapisan ini mendefinisikan antarmuka dan mekanisme untuk meletakkan&nbsp;<em>bit-bit</em>&nbsp;<a href=\"https://id.wikipedia.org/wiki/Data\">data</a>&nbsp;di atas media jaringan (<a href=\"https://id.wikipedia.org/wiki/Kabel\">kabel</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Radio\">radio</a>, atau&nbsp;<a href=\"https://id.wikipedia.org/wiki/Cahaya\">cahaya</a>). Selain itu, lapisan ini juga mendefinisikan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Tegangan_listrik\">tegangan listrik</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Arus_listrik\">arus listrik</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Modulasi\">modulasi</a>, sinkronisasi antar bit, pengaktifan koneksi dan pemutusannya, dan beberapa karakteristik kelistrikan untuk media transmisi (seperti halnya kabel&nbsp;<a href=\"https://id.wikipedia.org/wiki/Unshielded_twisted_pair\">UTP</a>/<a href=\"https://id.wikipedia.org/w/index.php?title=Shielded_twisted_pair&amp;action=edit&amp;redlink=1\">STP</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kabel_koaksial\">kabel koaksial</a>, atau kabel&nbsp;<em>fiber-optic</em>). Protokol-protokol pada level PHY mencakup&nbsp;<a href=\"https://id.wikipedia.org/wiki/IEEE_802.3\">IEEE 802.3</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/RS-232\">RS-232C</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=X.21&amp;action=edit&amp;redlink=1\">X.21</a>.&nbsp;<em><a href=\"https://id.wikipedia.org/w/index.php?title=Repeater&amp;action=edit&amp;redlink=1\">Repeater</a></em>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Transceiver\"><em>transceiver</em></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kartu_jaringan\">kartu jaringan</a>/<a href=\"https://id.wikipedia.org/wiki/Network_Interface_Card\"><em>network interface card</em></a>&nbsp;(NIC), dan pengabelan beroperasi di dalam lapisan ini.</p>\r\n\r\n<p><a href=\"https://id.wikipedia.org/wiki/Lapisan_fisik%2021-02-2017\">sumber: https://id.wikipedia.org/wiki/Lapisan_fisik 21-02-2017</a></p>\r\n\r\n<p>Pada lapisan ini&nbsp;berfungsi dalam pengiriman raw bit ke channel komunikasi. Masalah desain yang harus diperhatikan disini adalah memastikan bahwa bila satu sisi mengirim data 1 bit, data tersebut harus diterima oleh sisi lainnya sebagai 1 bit pula, dan bukan 0 bit. Lapisan ini memiliki tugas&nbsp;&nbsp;untuk mengatur sinkronisasi pengiriman dan penerimaan data, spesifikasi mekanis dan elektris, menerapkan prosedur untuk membangun , mengirimkan data/informasi dalam bentuk digit biner, memelihara dan memutuskan hubungan komunikasi. Pada&nbsp;physical layer&nbsp;terdapat&nbsp;&nbsp;perangkat keras dasar jaringan yang terdiri atas&nbsp;Repeater,&nbsp;Multiplexer, Hubs(Passive and Active),&nbsp;Oscilloscope dan&nbsp;Amplifier.</p>\r\n\r\n<p>Repeater (satelit) memiliki tugas sebagai penerima sinyal dan mengirimkannya kembali k&nbsp;receiver.&nbsp;</p>\r\n\r\n<p>Multiplexer merupakan media untuk menjalankan multipleks yaitu menggabungkan beberapa sinyal untuk dikirim secara bersamaan dalam suatu kanal tranmisi.</p>\r\n\r\n<p>Osiloskop adalah sebuah alat untuk menampilkan bentuk gelombang atau sinyal pada sebuah monitor.</p>\r\n\r\n<p>Hubs&nbsp;berfungsi untuk menggabungkan beberapa komputer menjadi satu buah kelompok jaringan.</p>\r\n\r\n<p>Amplifier adalah perangkat yang berfungsi sebagai penguat sinyal.</p>\r\n\r\n<p>Media-media fisik tersebut terjadi perpindahan arus bit yang melibatkan sinyal-sinyal digital. &nbsp;Dalam pengirimannya harus terjadi kesamaan dalam nilai bit. Apabilamengirim data 1 bit, data tersebut harus diterima oleh sisi lainnya sebagai 1 bit pula, dan bukan 0 bit. Oleh karena level tegangan dalam pengiriman harus tetap sama dan terjaga hingga pengiriman selesai.&nbsp;</p>\r\n\r\n<p>Perangkat yang digunakan pada layer ini adalah :</p>\r\n\r\n<ul>\r\n	<li>Network Adapter</li>\r\n	<li>Repeater</li>\r\n	<li>Modem</li>\r\n	<li>Fiber Media Converter</li>\r\n</ul>\r\n\r\n<p>Pada lapisan pertama inilah terjadi hubungan secara fisik antara satu terminal dengan terminal lain atau server atau peripheral lainnya.&nbsp;Pada sisi pengirim, lapisan phisik menerapkan fungsi elektris mekanis dan prosedur untuk membangun, memelihara dan melepaskan sirkuit kommunikasi guna mentransmisikan informasi dalam bentuk digit biner ke sisi penerima, sedangkan lapisan fisik pada penerima akan menerima data dan mentransmisikan data ke lapisan di atasnya.</p>\r\n\r\n<p><strong>Media Tranmisi pada&nbsp;Physical Layer</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Kabel (wire)</strong></li>\r\n</ol>\r\n\r\n<p><strong>Kabel UTP&nbsp;Category 3&nbsp;(Cat3) :</strong>&nbsp;&nbsp;kabel UTP dengan kualitas transmisi yang lebih baik dibandingkan dengan kabel UTP Category 2 (Cat2), yang didesain untuk mendukung komunikasi data dan suara pada kecepatan hingga 10 megabit per detik.</p>\r\n\r\n<p><strong>Kabel UTP&nbsp;&nbsp;Category&nbsp;5&nbsp;(Cat5)</strong> <strong>:&nbsp;</strong>kabel dengan kualitas transmisi yang jauh lebih baik dibandingkan dengan kabel UTP Category 4 (Cat4), yang didesain untuk mendukung komunikasi data serta suara pada kecepatan hingga 100 megabit per detik.</p>\r\n\r\n<p><strong>Kabel Coaxial :</strong>&nbsp;suatu jenis kabel yang menggunakan dua buah konduktor. Kabel ini banyak digunakan untuk mentransmisikan&nbsp;sinyal&nbsp;frekuensi&nbsp;tinggi mulai 300 kHz keatas. Karena kemampuannya dalam menyalurkan frekuensi tinggi tersebut, maka sistem transmisi dengan menggunakan kabel koaksial memiliki kapasitas&nbsp;kanal&nbsp;yang cukup besar.</p>\r\n\r\n<p><strong>Kabel Fiber Optik :</strong>&nbsp;saluran transmisi yang terbuat dari&nbsp;kaca&nbsp;atau&nbsp;plastik&nbsp;yang digunakan untuk mentransmisikan sinyal&nbsp;cahaya&nbsp;dari suatu tempat ke tempat lain. Berdasarkan mode transmisi yang digunakan serat optik terdiri atas Multimode Step Index, Multimode Graded Index, dan Singlemode Step Index.</p>\r\n\r\n<p>sumber: <a href=\"https://agungborn91.wordpress.com/2013/05/23/physical-layer-lapisan-fisik-pada-model-osi/\">https://agungborn91.wordpress.com/2013/05/23/physical-layer-lapisan-fisik-pada-model-osi/</a> 21-02-2017</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 1),
(18, 'WIFI', '27-02-2017', '', '<p>Wifi merupakan kependekan dari Wireless Fidelity yaitu sebuah media penghantar komunikasi data tanpa kabel yang bisa digunakan untuk komunikasi atau mentransfer program dan data dengan kemampuan yang sangat cepat. Kenapa bisa cepat? Karena media penghantarnya menggunakan sinyal radio yang bekerja pada frekuensi tertentu.</p>\r\n\r\n<p>Wifi bisa juga difungsikan sebagai jaringan tanpa kabel (nirkabel) seperti di perusahaan-perusahaan besar dan juga di warnet. Jaringan nirkabel tersebut biasa diistilahkan dengan LAN (local area network). Sehingga antara komputer dilokasi satu bisa saling berhubungan dengan komputer lain yang letaknya berbeda.</p>\r\n\r\n<p>Sedangkan untuk penggunaan internet, wifi memerlukan sebuah titik akses yang biasa disebut dengan hotspot untuk menghubungkan dan mengontrol&nbsp; antara pengguna wifi dengan jaringan internet pusat.</p>\r\n\r\n<ul>\r\n	<li>Berdasarkan bentuk fisiknya, wi-fi dibedakan menjadi dua yaitu :</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Bentuk PCI</li>\r\n</ol>\r\n\r\n<p>Jenis PCI biasanya digunakan pada sebuah PC (personal computer)</p>\r\n\r\n<ol>\r\n	<li>Bentuk USB</li>\r\n</ol>\r\n\r\n<p>Jenis USB penggunaannya lebih portabel bisa untuk laptop ataupun PC. Hal ini dikarenakan didesain dengan jenis colokan USB. Sehingga lebih memudahkan pengguna.</p>\r\n\r\n<p>Sumber : <a href=\"http://www.indraservicelaptop.com/2014/04/pengertian-wifi-dan-fungsinya.html\">http://www.indraservicelaptop.com/2014/04/pengertian-wifi-dan-fungsinya.html</a></p>\r\n\r\n<p>Tanggal akses : 16 Februari 2017</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Mengenal Wireless LAN</li>\r\n</ul>\r\n\r\n<p>Wireless Local Area Network (WLAN) adalah jaringan komputer yang menggunakan gelombang radio sebagai media transmisi data. Informasi (data) ditransfer dari satu komputer ke komputer lain menggunakan gelombang radio. WLAN sering disebut sebagai Jaringan Nirkabel atau jaringan wireless.</p>\r\n\r\n<p>Proses komunikasi tanpa kabel ini dimulai dengan bermunculannya peralatan berbasis gelombang radio seperti walkie talkie, remote control, cordless phone, ponsel, dan peralatan radio lainnya. Lalu adanya kebutuhan untuk menjadikan komputer sebagai barang yang mudah dibawa (mobile) dan mudah digabungkan dengan jaringan yang sudah ada.</p>\r\n\r\n<ul>\r\n	<li>Pada tahun 1997, sebuah lembaga independen bernama IEEE membuat spesifikasi/standar WLAN pertama yang diberi kode 802.11. Peralatan yang sesuai standar 802.11 dapat bekerja pada frekuensi 2,4GHz, dan kecepatan transfer data (throughput) teoritis maksimal 2Mbps. Sayangnya peralatan yang mengikuti spesifikasi 802.11 kurang diterima dipasar. Througput sebesar ini dianggap kurang memadai untuk aplikasi multimedia dan aplikasi kelas berat lainnya.</li>\r\n	<li>Pada bulan Juli 1999, IEEE kembali mengeluarkan spesifikasi baru bernama 802.11b. Kecepatan transfer data teoritis maksimal yang dapat dicapai adalah 11 Mbps. Kecepatan tranfer data sebesar ini sebanding dengan Ethernet tradisional (IEEE 802.3 10Mbps atau 10Base-T). Peralatan yang menggunakan standar 802.11b juga bekerja pada frekuensi 2,4Ghz. Salah satu kekurangan peralatan wireless yang bekerja pada frekuensi ini adalah kemungkinan terjadinya interferensi dengan cordless phone, microwave oven, atau peralatan lain yang menggunakan gelombang radio pada frekuensi sama.</li>\r\n	<li>Pada tahun 2002, IEEE membuat spesifikasi baru yang dapat menggabungkan kelebihan 802.11b dan 802.11a. Spesifikasi yang diberi kode 802.11g ini bekerja pada frekuensi 2,4Ghz dengan kecepatan transfer data teoritis maksimal 54Mbps. Peralatan 802.11g kompatibel dengan 802.11b, sehingga dapat saling dipertukarkan. Misalkan saja sebuah komputer yang menggunakan kartu jaringan 802.11g dapat memanfaatkan access point 802.11b, dan sebaliknya.</li>\r\n</ul>\r\n\r\n<p>Ada beberapa istilah yang cukup popular berkaitan dengan wireless. Beberapa di antaranya yaitu:</p>\r\n\r\n<p>1. Wi-Fi atau WiFi</p>\r\n\r\n<p>Wi-Fi atau Wireless Fidelity adalah nama lain yang diberikan untuk produk yang mengikuti spesifikasi 802.11. Sebagian besar pengguna komputer lebih mengenal istilah Wi-Fi card/adapter dibandingkan dengan 802.11 card/adapter. Wi-Fi merupakan merek dagang, dan lebih popular dibandingkan kata &ldquo;IEEE 802.11&rdquo;.</p>\r\n\r\n<p>2. Channel</p>\r\n\r\n<p>Bayangkanlah pita frekuensi seperti sebuah jalan, dan channel seperti jalur-jalur pemisah pada jalan tersebut. Peralatan 802.11a bekerja pada frekuensi 5,15 &ndash; 5,875 GHz, sedangkan peralatan 802.11b dan 802.11g bekerja pada frekuansi 2,4 &ndash; 2,497 GHz. Jadi , 802.11a menggunakan pita frekuensi lebih besar dibandingkan 802.11b atau 802.11g. Semakin lebar pita frekuensi, semakin banyak channel yang tersedia. Setiap channel dapat digunakan untuk mengangkut informasi secara penuh. Pada 802.11a tersedia sampai 8 non-overlapping channel. Masing-masing dapat &ldquo;dibebani&rdquo; throughput sebesar 54Mbps, atau total throughput 432Mbps. Sedangkan pada 802.11b/g tersedia 3 non-overlapping channel yang masing-masing dapat &ldquo;dibebani&rdquo; throughput sampai 11Mbps, atau total throughput 33Mbps. Agar dapat saling berkomunikasi, setiap peralatan wireless harus menggunakan channel yang sama. Pengguna dapat mengatur nomor channel saat melakukan instalasi driver atau melalui utility bantu yang disediakan masing-masing vendor.</p>\r\n\r\n<p>3. MIMO</p>\r\n\r\n<p>MIMO (Multiple Input Multiple Output) merupakan teknologi Wi-Fi terbaru. MIMO dibuat berdasarkan spesifikasi Pre-802.11n. Kata &rdquo;Pre-&rdquo; menyatakan &ldquo;Prestandard versions of 802.11n&rdquo;. MIMO menawarkan peningkatan throughput, keunggulan reabilitas, dan peningkatan jumlah klien yg terkoneksi. Daya tembus MIMO terhadap penghalang lebih baik, selain itu jangkauannya lebih luas sehingga anda dapat menempatkan laptop atau client Wi-Fi sesuka hati. Access Point MIMO dapat menjangkau berbagai perlatan Wi-Fi yg ada disetiap sudut ruangan.</p>\r\n\r\n<p>Secara teknis MIMO lebih unggul dibandingkan saudara tuanya 802.11a/b/g. Access Point MIMO dapat mengenali gelombang radio yang dipancarkan oleh adapter Wi-Fi 802.11a/b/g. MIMO mendukung kompatibilitas mundur dengan 802.11 a/b/g. Peralatan Wi-Fi MIMO dapat menghasilkan kecepatan transfer data sebesar 108Mbps.</p>\r\n\r\n<p>4. WEP</p>\r\n\r\n<p>WEP (Wired Equivalent Privacy) merupakan salah satu fitur keamanan/security yang bersifat build-in pada peralatan Wi-Fi. Keamanan merupakan masalah yang serius bagi pengguna Wi-Fi akibat gelombang radio yang dipancarkan adapter Wi-Fi dapat diterima oleh semua peralatan Wi-Fi yang ada di sekitarnya (atau gedung di sebelahnya). Tentu saja kondisi semacam ini sangat rawan karena informasi dapat &ldquo;ditangkap&rdquo; dengan mudah. Oleh sebab itu Wi-Fi dibuat dengan beberapa jenis enkripsi : 40 bit, 64 bit, 128 bit dan 256 bit. Pengguna WEP akan meningkatkan keamanan data yang ditransfer meskipun konsekuensinya penurunan throughput data.</p>\r\n\r\n<p>5. SSID</p>\r\n\r\n<p>SSID (Service Set IDentifier) merupakan identifikasi atau nama untuk jaringan wireless. Setiap peralatan Wi-Fi harus menggunakan SSID tertentu. Peralatan Wi-Fi dianggap satu jaringan jika mengunakan SSID yang sama. Agar dapat berkomunikasi, setiap perlatan wireless haruslah menggunakan SSID dan channel yang sama. SSID bersifat case-sensitive, penulisan huruf besar dan huruf kecil sangat berpengaruh.</p>\r\n\r\n<p>6. SES</p>\r\n\r\n<p>SES merupakan singkatan dari SecureEasySetup. SES merupakan jawaban terhadap kesulitan setup security jaringan yang selama ini dirasakan sejumlah kalangan. Hanya dengan menekan satu tombol, SES secara otomatis memberikan SSID dan kode security ke router dan adapter serta menerapkan security WPA (Wireless Protected Access). Untuk menggunakan SES, pengguna hanya perlu menekan tombol SES pada router, lalu pada client, dan selanjutnya kedua perangkat akan membuat sebuah jalur komunikasi yang aman.</p>\r\n\r\n<p>Sumber : <a href=\"https://tatyanaksantai.wordpress.com/artilel-wifi/\">https://tatyanaksantai.wordpress.com/artilel-wifi/</a></p>\r\n\r\n<p>Tanggal akses : 16 februari 2017</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Kekurangan dan kelebihan WI-FI</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Kelebihan Wifi</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Dapat mengakses internet, mentransfer file, print darimana saja dalam radius 100 meter dari akses poin wifi.</li>\r\n	<li>Mengurangi kekacauan kabel dan kabel belakang desktop / Notebooks</li>\r\n	<li>Jaringan kabel dan socket cenderung memburuk dari waktu ke waktu, sedangkan wifi tidak memiliki kerugian ini.</li>\r\n	<li>Jika anda memiliki lokasi kantor lebih dari 1 dan staf anda melakukan perjalanan antara kantor, Anda cukup menginstal jaringan wifi di setiap lokasi. Tanpa harus mengkonfigurasi ulang pengaturan internet mereka setiap kali berpindah kantor sebagaimana menggunakan kabel konvensional.</li>\r\n	<li>Wi-Fi dikembangkan tanpa kabel dan menggunakan gelombang radio dengan frekuensi 2,4 GHz. Selain itu Wi-Fi dapat mengirim dan menerima kapasitas sampai 54Mbps.</li>\r\n	<li>Wi-Fi menggunakan jalur akses jaringan / hot spot, dapat berkomunikasi ke semua komputer dan laptop.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kekurangan Wifi</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Sangat penting untuk mengamankan koneksi Wifi, jika tidak siapapun yang memiliki komputer Wifi enabled akan dapat mengakses data anda dan koneksi internet.</li>\r\n	<li>Jaringan Wifi sensitif terhadap kekuatan sinyal . Untuk memastikan konektivitas yang baik, anda harus memastikan bahwa semua komputer dan gadget menerima kekuatan sinyal yang memadai setiap saat.</li>\r\n	<li>Sinyal Wifi cenderung terpengaruh oleh kondisi iklim seperti badai.</li>\r\n	<li>Untuk menambah jumlah perangkat pada jaringan anda, dengan menggabungkan titik akses wifi ( ini keharusan untuk wifi ). Anda akan memerlukan soket listrik untuk plugin dan kekuatan akses point Wifi.</li>\r\n	<li>Adanya kelemahan yang terletak pada konfigurasi dan jenis enkripsi. Kelemahan tersbut diakibatkan karena terlalu mudahnya membangun sebuah jaringan wireless.</li>\r\n	<li>Wired Equivalent Privacy (WEP) yang menjadi standart keamanan wireless sebelumnya dapat dengan mudah dipecahkan dengan berbagai tools yang tersedia gratis di internet.</li>\r\n</ol>\r\n\r\n<p>Sumber : <a href=\"https://tutorialku2011.wordpress.com/komputer/kelebihan-dan-kekurangan-wifi/\">https://tutorialku2011.wordpress.com/komputer/kelebihan-dan-kekurangan-wifi/</a></p>\r\n\r\n<p>Tanggal akses : 16 februari 2017</p>\r\n', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_hardware_b`
--

CREATE TABLE `f_hardware_b` (
  `id` int(10) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `id_ruangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `f_hardware_b`
--

INSERT INTO `f_hardware_b` (`id`, `gambar`, `nama`, `jumlah`, `id_ruangan`) VALUES
(1, 'hp_p191.jpg', 'Monitor HP', 23, 9),
(2, 'asusmonitor.jpg', 'Monitor Asus Wireless', 11, 9),
(4, 'i5-10400.jpg', 'Intel I5-10400', 23, 9),
(5, 'i5-10500.jpg', 'Intel I5-10500', 11, 9),
(6, 'ram.jpg', 'Ram', 34, 9),
(7, 'mouseacer.jpg', 'Mouse Acer', 1, 9),
(8, 'mousehp.jpeg', 'Mouse HP', 22, 9),
(9, 'mouseasus.jpg', 'Mouse Asus', 11, 9),
(10, 'hpkeyboard.jpg', 'Keyboard HP', 24, 9),
(11, 'asuskeyboard.png', 'Keyboard Asus', 10, 9),
(12, 'ssd.png', 'SSD', 34, 9),
(13, 'harddisk.jpg', 'Hard Disk', 34, 9),
(14, 'hp_p191.jpg', 'Monitor HP', 34, 10),
(15, 'i7-7700.jpg', 'Intel I7-7700', 34, 10),
(16, 'ram.jpg', 'RAM', 34, 10),
(17, 'mousehp.jpeg', 'Mouse HP', 34, 10),
(18, 'hpkeyboard.jpg', 'Keyboard HP', 34, 10),
(19, 'ssd.png', 'SSD', 34, 10),
(20, 'harddisk.jpg', 'Hard Disk', 34, 10),
(21, 'asusmonitor.jpg', 'Monitor ASUS', 14, 11),
(22, 'monitoraxioo.jpg', 'Monitor Axioo', 20, 11),
(23, 'i5-10500.jpg', 'Intel I5-10500', 14, 11),
(24, 'i7-12700.jpg', 'Intel I7-12700', 20, 11),
(25, 'mousehp.jpeg', 'Mouse HP', 1, 11),
(26, 'mouseasus.jpg', 'Mouse ASUS', 13, 11),
(27, 'mouseaxioo.jpg', 'Mouse Axioo', 20, 11),
(28, 'keyboardlenovo.jpg', 'Keyboard Lenovo', 1, 11),
(29, 'asuskeyboard.png', 'Keyboard ASUS', 13, 11),
(30, 'keyboardaxioo.jpg', 'Keyboard Axioo', 20, 11),
(32, 'ssd.png', 'SSD', 34, 11),
(33, 'harddisk.jpg', 'Hard Disk', 34, 11),
(34, 'monitoraxioo.jpg', 'Monitor Axioo', 8, 12),
(35, 'monitordell2.jpg', 'Monitor Dell', 26, 12),
(36, 'i7-12700.jpg', 'Intel I7-12700', 8, 12),
(37, 'i5-7400.jpeg', 'Intel I5-7400', 26, 12),
(38, 'ram.jpg', 'RAM', 34, 12),
(39, 'mouseaxioo.jpg', 'Mouse Axioo', 8, 12),
(40, 'mousedell.jpg', 'Mouse Dell', 26, 12),
(41, 'keyboardaxioo.jpg', 'Keyboard Axioo', 8, 12),
(42, 'keyboarddell.jpg', 'Keyboard Dell', 26, 12),
(43, 'ssd.png', 'SSD', 34, 12),
(44, 'harddisk.jpg', 'Hard Disk', 8, 12),
(45, 'hp_p191.jpg', 'Monitor HP', 34, 13),
(46, 'i5-4590.jpg', 'Intel I5-4590', 34, 13),
(47, 'ram.jpg', 'RAM', 34, 13),
(48, 'mousehp.jpeg', 'Mouse HP', 34, 13),
(49, 'hpkeyboard.jpg', 'Keyboard HP', 34, 13),
(50, 'harddisk.jpg', 'Hard Disk', 34, 13),
(51, 'monitordell2.jpg', 'Monitor Dell', 32, 14),
(52, 'i3-9100.jpeg', 'Intel I3-9100', 32, 14),
(53, 'ram.jpg', 'RAM', 32, 14),
(54, 'mousedell.jpg', 'Mouse Dell', 32, 14),
(55, 'keyboarddell.jpg', 'Keyboard Dell', 32, 14),
(56, 'ssd.png', 'SSD', 32, 14),
(57, 'hp_p191.jpg', 'Monitor HP', 34, 16),
(58, 'i5-4590.jpg', 'Intel I5-4590', 34, 16),
(59, 'ram.jpg', 'RAM', 34, 16),
(60, 'mousedell.jpg', 'Mouse Dell', 34, 16),
(61, 'keyboarddell.jpg', 'Keyboard Dell', 34, 16),
(62, 'harddisk.jpg', 'Hard Disk', 34, 16),
(66, 'mousehp.jpeg', 'Mouse ', 20, 15),
(67, 'monitoraxioo.jpg', 'Monitor Axioo', 33, 19),
(68, 'mouseaxioo.jpg', 'Mouse Axioo', 33, 19),
(69, 'i7-12700.jpg', 'Intel I7-12700', 33, 19),
(72, 'ssd.png', 'SSD', 33, 19),
(73, 'ram2.jpg', 'Ram', 33, 19),
(74, 'harddisk.jpg', 'Harddisk', 33, 19),
(75, 'keyboardaxioo2.png', 'Keyboard Axioo', 33, 19),
(76, 'hp_p191.jpg', 'Monitor HP', 33, 20),
(77, 'hpkeyboard.jpg', 'Keyboard HP', 33, 20),
(78, 'mousehp.jpeg', 'Mouse HP', 33, 20),
(80, 'i7-8700.jpeg', 'Intel I7-8700', 33, 20),
(81, 'ram2.jpg', 'Ram', 33, 20),
(82, 'harddisk.jpg', 'Harddisk', 33, 20),
(83, 'asusmonitor.jpg', 'Monitor Asus', 34, 21),
(84, 'asuskeyboard.png', 'Keyboard Asus', 34, 21),
(85, 'mouseasus.jpg', 'Mouse Asus', 34, 21),
(87, 'i5-11400.png', 'Intel I5-11400', 34, 21),
(88, 'ram2.jpg', 'Ram', 34, 21),
(89, 'harddisk.jpg', 'Harddisk', 34, 21),
(90, 'hp_p191.jpg', 'Monitor HP', 33, 22),
(91, 'hpkeyboard.jpg', 'Keyboard HP', 33, 22),
(92, 'mousehp.jpeg', 'Mouse HP', 33, 22),
(93, 'i7-7700.jpg', 'Intel I7-7700', 24, 22),
(94, 'i5-3570.png', 'Intel I5-3570', 9, 22),
(95, 'ram2.jpg', 'Ram', 33, 22),
(96, 'harddisk.jpg', 'Harddisk', 33, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_software`
--

CREATE TABLE `f_software` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `id_ruangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `f_software`
--

INSERT INTO `f_software` (`id`, `gambar`, `nama`, `jumlah`, `id_ruangan`) VALUES
(1, 'word.jpeg', 'Microsoft Word', 34, 9),
(2, 'excel.jpeg', 'Microsoft Excel', 34, 9),
(3, 'ppt.jpeg', 'Microsoft PowerPoint', 34, 9),
(4, 'xampp.jpeg', 'XAMPP', 34, 9),
(5, 'acces.png', 'Acces', 34, 9),
(6, 'accurate.jpg', 'Accurate', 34, 9),
(7, 'smadav.png', 'Smadav', 34, 9),
(8, 'adobe.png', 'Adobe', 34, 9),
(9, 'flashplayer.jpg', 'Macromedia', 33, 9),
(10, 'matlab.png', 'Matlab', 32, 9),
(11, 'nitro.png', 'Nitro pdf', 25, 9),
(12, 'visual.png', 'Visual Studio Code', 2, 9),
(14, 'anyde.jpg', 'Anydesk', 2, 9),
(15, 'wondershare.png', 'Wondershare', 33, 9),
(16, 'turbo.png', 'Turbo c++', 32, 9),
(17, 'abss.png', 'Abss', 34, 9),
(18, 'ccleaner.png', 'Ccleaner', 34, 9),
(19, 'corel.png', 'Corel', 34, 9),
(20, 'devc.jpg', 'Dev c++', 34, 9),
(21, 'zoom.png', 'Zoom', 26, 9),
(22, 'coreldraw.png', 'Corel draw', 34, 9),
(23, 'outlook.png', 'Outlok', 1, 9),
(24, 'obs.png', 'Obs', 1, 9),
(25, 'recly.jpg', 'Recly', 34, 9),
(26, 'word.jpeg', 'Word', 34, 10),
(27, 'excel.jpeg', 'Excel', 34, 10),
(28, 'ppt.jpeg', 'Power point', 34, 10),
(29, 'acces.png', 'Access', 34, 10),
(30, 'smadav.png', 'Smadav', 33, 10),
(31, 'adobe.png', 'Adobe', 32, 10),
(32, 'corel.png', 'Corel', 34, 10),
(33, 'coreldraw.png', 'Corel draw', 34, 10),
(34, 'devc.jpg', 'Dev c++', 32, 10),
(35, 'msvisual.png', 'Microsoft Visual', 29, 10),
(36, NULL, 'Compas', 25, 10),
(37, 'ccleaner.png', 'Ccleaner', 33, 10),
(38, 'nitro-pro.png', 'Nitro pro', 31, 10),
(39, 'virtualbox.png', 'Virtualbox', 2, 10),
(40, 'wondershare.png', 'Wondershare', 21, 10),
(41, 'rapidtyping.jpeg', '\r\nRapidtyping', 2, 10),
(42, 'matlab.png', 'Matlab', 1, 10),
(43, 'arduino.png', 'Arduino', 1, 10),
(44, 'acrobat.png', 'Acrobat', 0, 10),
(45, 'cisco.png', 'Cisco', 1, 10),
(46, 'ibmspss.png', 'Ibmspss', 2, 10),
(47, 'ccleaner.png', 'Ccleaner', 34, 11),
(48, 'corel.png', 'Corel', 33, 11),
(49, 'coreldraw.png', 'Corel Draw', 34, 11),
(50, 'eviews.jpg', 'Eviews x64', 34, 11),
(51, 'abss.png', 'Abss', 14, 11),
(52, 'ibmspss.png', 'Ibmspss', 34, 11),
(53, 'excel.jpeg', 'Excel', 34, 11),
(54, 'word.jpeg', 'Word', 34, 11),
(55, 'ppt.jpeg', 'Power Point', 34, 11),
(56, 'mavisbeacon.jpg', 'Mavis', 34, 11),
(57, 'acces.png', 'Access', 34, 11),
(58, 'accurate.jpg', 'Accurates', 34, 11),
(59, 'nitro-pro.png', 'Nitro Pro', 34, 11),
(60, 'devc.jpg', 'Dev c++', 34, 11),
(61, 'adobe.png', 'Adobe', 34, 11),
(62, 'smartpls.png', 'Smart pls', 12, 11),
(63, 'visio.jpg', 'Visio', 34, 11),
(64, 'project2013.png', 'Project 2013', 34, 11),
(65, 'stata.jpeg', 'StataMp', 34, 11),
(66, 'lisrel.jpg', 'Liswin 32', 34, 11),
(67, 'xampp.jpeg', 'Xampp', 34, 11),
(68, 'smadav.png', 'Smadav', 34, 11),
(69, 'matlab.png', 'Matlab', 34, 11),
(70, 'amos.png', 'Amos GP', 29, 11),
(71, NULL, 'Publish OP', 30, 11),
(72, 'ccleaner.png', 'Ccleaner', 34, 12),
(73, 'corel.png', 'Corel', 22, 12),
(74, 'coreldraw.png', 'Corel draw', 22, 12),
(75, 'eviews.jpg', 'Eviews', 34, 12),
(76, 'mavisbeacon.jpg', 'Mavis Beacon', 34, 12),
(77, 'nitro-pro.png', 'Nitro pro', 34, 12),
(78, 'smadav.png', 'Smadav', 34, 12),
(79, 'acces.png', 'Acces', 34, 12),
(80, 'adobe.png', 'Adobe', 22, 12),
(81, 'amos.png', 'Amos GP', 34, 12),
(82, 'devc.jpg', 'Dev c++', 34, 12),
(83, 'excel.jpeg', 'Excel', 34, 12),
(84, 'ibmspss.png', 'IBMSPSS', 34, 12),
(85, 'ppt.jpeg', 'Power point', 34, 12),
(86, 'rapidtyping.jpeg', 'Rapid typing', 34, 12),
(87, 'stata.jpeg', 'StataMP', 32, 12),
(89, 'xampp.jpeg', 'Xampp', 34, 12),
(90, 'accurate.jpg', 'Accurates', 26, 12),
(91, 'lisrel.jpg', 'Liswin', 30, 12),
(92, 'macromedia.png', 'MacroMedia', 3, 12),
(93, 'visual.png', 'Visual Code', 14, 12),
(94, 'acrobat.png', 'Acrobat', 5, 12),
(95, 'turbo.png', 'Turbo c++', 2, 12),
(96, 'word.jpeg', 'Word', 33, 13),
(97, 'excel.jpeg', 'Excel', 33, 13),
(98, 'ppt.jpeg', 'Power point', 33, 13),
(99, 'acces.png', 'Acces', 33, 13),
(100, 'smadav.png', 'Smadav', 33, 13),
(101, 'stata.jpeg', 'Stata', 29, 13),
(102, 'lisrel.jpg', 'Liswin', 31, 13),
(103, 'amos.png', 'Amos', 25, 13),
(104, 'eviews.jpg', 'Eviews', 25, 13),
(105, 'typingmaster.png', 'Typing master', 33, 13),
(106, 'mavisbeacon.jpg', 'Mavis bacon', 33, 13),
(107, 'nitro-pro.png', 'Nitro pro', 32, 13),
(108, 'adobe.png', 'Adobe', 33, 13),
(109, 'visio.jpg', 'Visio', 33, 13),
(110, 'laragon.png', 'Laragon', 32, 13),
(111, 'devc.jpg', 'Dev c++', 32, 13),
(112, 'turbo.png', 'Turbo c++', 29, 13),
(113, 'xampp.jpeg', 'Xampp', 32, 13),
(114, 'abss.png', 'Abss', 31, 13),
(115, 'macromedia.png', 'Macromedia', 33, 13),
(116, 'visual.png', 'Vscode', 32, 13),
(117, 'matlab.png', 'Matlab', 32, 13),
(118, 'accurate.jpg', 'Accurates', 33, 13),
(119, 'adobe.png', 'Adobe', 12, 14),
(120, 'coreldraw.png', 'Corel draw', 12, 14),
(121, 'word.jpeg', 'Word', 32, 14),
(122, 'excel.jpeg', 'Excel', 32, 14),
(123, 'ppt.jpeg', 'Power point', 32, 14),
(124, 'devc.jpg', 'Dev c++', 32, 14),
(125, 'nitro-pro.png', 'Nitro pro', 32, 14),
(126, 'smadav.png', 'Smadav', 32, 14),
(127, 'accurate.jpg', 'Accurates', 32, 14),
(128, 'visual.png', 'Visual Studio ', 8, 14),
(129, 'mavisbeacon.jpg', 'Mavis ', 32, 14),
(130, 'myob.png', 'Myob', 32, 14),
(131, 'acces.png', 'Access', 32, 14),
(132, 'typingmaster.png', 'Typing master', 31, 14),
(133, 'arduino.png', 'Arduiono IDE', 25, 14),
(134, 'visio.jpg', 'Visio', 4, 14),
(135, 'ccleaner.png', 'Ccleaner', 27, 14),
(136, 'xampp.jpeg', 'Xampp', 25, 14),
(137, 'smartpls.png', 'Smart PLS', 24, 14),
(138, 'mavisbeacon.jpg', 'Mavis', 34, 16),
(139, 'adobe.png', 'Adobe', 34, 16),
(140, 'turbo.png', 'Turbo c++', 34, 16),
(141, 'myob.png', 'Myob', 34, 16),
(142, 'visio.jpg', 'Visio', 34, 16),
(143, 'smadav.png', 'Smadav', 34, 16),
(144, 'nitro-pro.png', 'Nitro Pro', 34, 16),
(145, 'excel.jpeg', 'Excel', 34, 16),
(146, 'word.jpeg', 'Word', 34, 16),
(147, 'statar.png', 'Stata MP', 34, 16),
(148, 'ccleaner.png', 'Ccleaner', 34, 16),
(149, 'typingmaster.png', 'Typing Master', 34, 16),
(150, 'xampp.jpeg', 'Xampp', 34, 16),
(151, 'corel.png', 'Corel', 34, 16),
(152, 'smartpls.png', 'SmartPLS', 34, 16),
(153, 'coreldraw.png', 'CorelDRAW', 34, 16),
(154, 'visual.png', 'VSCode', 34, 16),
(155, 'nitro.png', 'NitroPDF', 34, 16),
(156, 'devc.jpg', 'Dev c++', 34, 16),
(157, 'eviews.jpg', 'EViews9', 34, 16),
(158, 'abss.png', 'Abss', 34, 16),
(159, 'ppt.jpeg', 'Power Point', 34, 16),
(160, 'accurate.jpg', 'Accurates', 34, 16),
(161, 'flashplayer.jpg', 'Macromedia', 34, 16),
(162, 'acces.png', 'Access', 34, 16),
(163, 'mavisbeacon.jpg', 'Mavis', 34, 16),
(182, 'excel.jpeg', 'Microsoft excel', 29, 22),
(183, 'word.jpeg', 'Microsoft Word', 29, 22),
(184, 'ppt.jpeg', 'Microsoft Power Point', 32, 19),
(186, 'word.jpeg', 'word', 34, 12),
(187, 'word.jpeg', 'Word', 33, 20),
(190, 'excel.jpeg', 'Excel', 33, 20),
(195, 'excel.jpeg', 'Excel', 33, 21),
(200, 'excel.jpeg', 'Excel', 32, 19),
(201, 'word.jpeg', 'Word', 32, 19),
(202, 'acces.png', 'Acces', 32, 19),
(203, 'adobe.png', 'Adobe', 32, 19),
(204, 'autodesk.png', 'Autodesk', 32, 19),
(205, 'autocad.png', 'AutoCAD', 32, 19),
(206, 'dwg.png', 'DWG', 32, 19),
(207, 'visio.jpg', 'Visio 2010', 32, 19),
(208, 'acces.png', 'Acces', 33, 20),
(209, 'ppt.jpeg', 'Power Point', 33, 20),
(210, 'catia.png', 'Catia', 33, 20),
(211, 'livewire.png', 'Livewire', 32, 20),
(212, 'visio.jpg', 'Visio 2016', 32, 20),
(213, 'adobe.png', 'Adobe', 32, 20),
(214, 'autodesk.png', 'Autodesk', 32, 20),
(215, 'autocad.png', 'AutoCAD', 32, 20),
(216, 'dwg.png', 'DWG', 32, 20),
(217, 'acces.png', 'Acces', 33, 21),
(218, 'word.jpeg', 'Word', 33, 21),
(219, 'ppt.jpeg', 'Power Point', 33, 21),
(220, 'autodesk.png', 'Autodesk', 33, 21),
(221, 'autocad.png', 'AutoCAD', 33, 21),
(222, 'dwg.png', 'DWG', 33, 21),
(223, 'adobe.png', 'Adobe', 33, 21),
(224, 'acces.png', 'Acces', 29, 22),
(225, 'ppt.jpeg', 'Power Point', 29, 22),
(226, 'autodesk.png', 'Autodesk', 29, 22),
(227, 'autocad.png', 'AutoCAD', 29, 22),
(228, 'dwg.png', 'DWG', 29, 22),
(229, 'adobe.png', 'Adobe', 29, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_ruangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto`, `id_ruangan`) VALUES
(268, 'lab_a-1.jpg', 19),
(269, 'lab_a-2.jpg', 19),
(270, 'lab_a-3.jpg', 19),
(271, 'lab_a-4.jpg', 19),
(272, 'lab_b-1.jpg', 20),
(273, 'lab_b-2.jpg', 20),
(274, 'lab_b-3.jpg', 20),
(275, 'lab_b-4.jpg', 20),
(276, 'lab_c-1.jpg', 21),
(277, 'lab_c-2.jpg', 21),
(278, 'lab_c-3.jpg', 21),
(279, 'lab_c-4.jpg', 21),
(280, 'lab_d-1.jpg', 22),
(281, 'lab_d-2.jpg', 22),
(282, 'lab_d-3.jpg', 22),
(283, 'lab_d-4.jpg', 22),
(286, 'lab1-1.jpg', 9),
(287, 'lab1-2.jpg', 9),
(288, 'lab1-3.jpg', 9),
(289, 'lab1-4.jpg', 9),
(290, 'lab2-1.jpg', 10),
(291, 'lab2-2.jpg', 10),
(292, 'lab2-3.jpg', 10),
(293, 'lab2-4.jpg', 10),
(294, 'lab3-1.jpg', 11),
(295, 'lab3-2.jpg', 11),
(296, 'lab3-3.jpg', 11),
(297, 'lab3-4.jpg', 11),
(298, 'lab4-1.jpg', 12),
(299, 'lab4-2.jpg', 12),
(300, 'lab4-3.jpg', 12),
(301, 'lab4-4.jpg', 12),
(302, 'lab5-1.jpg', 13),
(303, 'lab5-2.jpg', 13),
(304, 'lab5-3.jpg', 13),
(305, 'lab5-4.jpg', 13),
(306, 'lab6-1.jpg', 14),
(307, 'lab6-2.jpg', 14),
(308, 'lab6-3.jpg', 14),
(309, 'lab6-4.jpg', 14),
(310, 'lab8-1.jpg', 16),
(311, 'lab8-2.jpg', 16),
(312, 'lab8-3.jpg', 16),
(313, 'lab8-4.jpg', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `mk` text NOT NULL,
  `nama_dosen` text NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `id_thn` varchar(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `mk`, `nama_dosen`, `hari`, `tgl`, `jenis`, `kelas`, `id_thn`, `id_ruangan`, `id_prodi`) VALUES
(311, 'Teknik Telekomunikasi (D4)', '-', 'Senin', '', 'REGULER', '2A-TNK', '16', 9, 8),
(312, 'Teknik Telekomunikasi (D4)', '-', 'Senin', '', 'REGULER', '2B-TNK', '16', 9, 8),
(317, 'Akuntansi (D3)', '-', 'Senin', '', 'REGULER', '1 AK A', '16', 10, 21),
(318, 'Akuntansi (D3)', '-', 'Senin', '', 'REGULER', '1 AK B', '16', 10, 21),
(319, 'Akuntansi (D3)', '-', 'Senin', '', 'REGULER', '2 AK A', '16', 10, 21),
(320, 'Akuntansi (D3)', '-', 'Senin', '', 'REGULER', '2 AK B', '16', 10, 21),
(321, 'Akuntansi (D4)', '-', 'Senin', '', 'REGULER', '3 AC  A', '16', 11, 27),
(322, 'Akuntansi (D4)', '-', 'Senin', '', 'REGULER', '3 AC B', '16', 11, 27),
(324, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Senin', '', 'REGULER', '2 AMP A', '16', 11, 23),
(325, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Senin', '', 'REGULER', '1 AMP A', '16', 12, 23),
(326, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Senin', '', 'REGULER', '1 AMP B', '16', 12, 23),
(332, 'Administrasi Bisnis (D3)', '-', 'Senin', '', 'REGULER', '1B-ABS', '16', 14, 17),
(333, 'Administrasi Bisnis (D3)', '-', 'Senin', '', 'REGULER', '1A-ABS', '16', 14, 17),
(334, 'Administrasi Bisnis (D3)', '-', 'Senin', '', 'REGULER', '2A-ABS', '16', 14, 17),
(336, 'Keuangan dan Perbankan (D3)', '-', 'Selasa', '', 'REGULER', '1KP-A', '16', 9, 22),
(337, 'Keuangan dan Perbankan (D3)', '-', 'Selasa', '', 'REGULER', '1KP-B', '16', 9, 22),
(338, 'Administrasi Bisnis (D4)', '-', 'Selasa', '', 'REGULER', '2A-BA', '16', 9, 28),
(339, 'Keuangan Syariah (D4)', '-', 'Selasa', '', 'REGULER', '3KSYA', '16', 10, 24),
(340, 'Keuangan Syariah (D4)', '-', 'Selasa', '', 'REGULER', '3KSYB', '16', 10, 24),
(341, 'Administrasi Bisnis (D4)', '-', 'Selasa', '', 'REGULER', '3B-BA', '16', 10, 28),
(342, 'Akuntansi (D4)', '-', 'Selasa', '', 'REGULER', '3ACB', '16', 11, 27),
(343, 'Akuntansi (D4)', '-', 'Selasa', '', 'REGULER', '3ACA', '16', 11, 27),
(344, 'Akuntansi (D4)', '-', 'Selasa', '', 'REGULER', '1ACA', '16', 11, 27),
(345, 'Akuntansi (D4)', '-', 'Selasa', '', 'REGULER', '1ACB', '16', 11, 27),
(347, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Selasa', '', 'REGULER', '2 AMP A', '16', 12, 23),
(348, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Selasa', '', 'REGULER', '2 AMP B', '16', 12, 23),
(349, 'Administrasi Bisnis (D3)', '-', 'Selasa', '', 'REGULER', '2B-ABS', '16', 13, 17),
(350, 'Administrasi Bisnis (D4)', '-', 'Selasa', '', 'REGULER', '3A-BA', '16', 14, 28),
(351, 'Keuangan Syariah (D4)', '-', 'Rabu', '', 'REGULER', '2KSYB', '16', 9, 24),
(352, 'Keuangan Syariah (D4)', '-', 'Rabu', '', 'REGULER', '2KSYA', '16', 9, 24),
(353, 'Teknik Otomasi Industri (D4)', '-', 'Rabu', '', 'REGULER', 'TOI', '16', 9, 10),
(354, 'Akuntansi (D3)', '-', 'Rabu', '', 'REGULER', '1 AK A', '16', 10, 21),
(355, 'Akuntansi (D3)', '-', 'Rabu', '', 'REGULER', '1 AK B', '16', 10, 21),
(356, 'Akuntansi (D4)', '-', 'Rabu', '', 'REGULER', '2ACB', '16', 10, 27),
(360, 'Akuntansi (D4)', '-', 'Rabu', '', 'REGULER', '2ACA', '16', 11, 27),
(361, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Rabu', '', 'REGULER', '1 AMP A', '16', 12, 23),
(362, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Rabu', '', 'REGULER', '1 AMP B', '16', 12, 23),
(363, 'Teknik Elektronika (D4)', '-', 'Rabu', '', 'REGULER', '1A-EK', '16', 12, 9),
(364, 'Teknik Otomasi Industri (D4)', '-', 'Rabu', '', 'REGULER', 'TOI', '16', 13, 10),
(366, 'Administrasi Bisnis (D3)', '-', 'Selasa', '', 'REGULER', '2A-ABS', '16', 13, 17),
(367, 'Administrasi Bisnis (D3)', '-', 'Selasa', '', 'REGULER', '1B-ABS', '16', 13, 17),
(369, 'Administrasi Bisnis (D3)', 'PK MAMUN', 'Rabu', '', 'REGULER', '2B-ABS', '16', 14, 17),
(370, 'Administrasi Bisnis (D3)', '-', 'Rabu', '', 'REGULER', '1A-ABS', '16', 14, 17),
(371, 'Administrasi Bisnis (D3)', '-', 'Rabu', '', 'REGULER', '2A-ABS', '16', 14, 17),
(372, 'Keuangan dan Perbankan (D3)', '-', 'Kamis', '', 'REGULER', '1KP-B', '16', 9, 22),
(373, 'Keuangan dan Perbankan (D3)', '-', 'Kamis', '', 'REGULER', '1KP-A', '16', 9, 22),
(374, 'Keuangan Syariah (D4)', 'Dayat', 'Kamis', '', 'REGULER', '2KSYA', '16', 9, 24),
(375, 'Keuangan Syariah (D4)', '-', 'Kamis', '', 'REGULER', '2KSYB', '16', 9, 24),
(376, 'Keuangan Syariah (D4)', '-', 'Kamis', '', 'REGULER', '3KSYB', '16', 10, 24),
(377, 'Keuangan Syariah (D4)', '-', 'Kamis', '', 'REGULER', '3KSYA', '16', 10, 24),
(378, 'Administrasi Bisnis (D4)', '-', 'Kamis', '', 'REGULER', '3B-BA', '16', 10, 28),
(379, 'Akuntansi (D4)', '-', 'Kamis', '', 'REGULER', '1ACB', '16', 11, 27),
(380, 'Akuntansi (D4)', '-', 'Kamis', '', 'REGULER', '1ACA', '16', 11, 27),
(381, 'Akuntansi (D3)', '-', 'Kamis', '', 'REGULER', '2 AK A', '16', 11, 21),
(382, 'Akuntansi (D3)', '-', 'Kamis', '', 'REGULER', '2 AK B', '16', 11, 21),
(384, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Kamis', '', 'REGULER', '2 AMP B', '16', 12, 23),
(385, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Kamis', '', 'REGULER', '2 AMP A', '16', 12, 23),
(386, 'Administrasi Bisnis (D4)', '-', 'Kamis', '', 'REGULER', '2A-BA', '16', 13, 28),
(387, 'Administrasi Bisnis (D4)', '-', 'Kamis', '', 'REGULER', '2B-BA', '16', 13, 28),
(388, 'Administrasi Bisnis (D3)', '-', 'Kamis', '', 'REGULER', '2A-ABS', '16', 13, 17),
(389, 'Teknik Elektronika (D3)', 'Yana', 'Kamis', '', 'REGULER', '1A-TEL', '16', 14, 5),
(390, 'Teknik Elektronika (D3)', 'Yana', 'Kamis', '', 'REGULER', '1B-TEL', '16', 14, 5),
(391, 'Teknik Elektronika (D4)', '-', 'Kamis', '', 'REGULER', '1B-EK', '16', 14, 9),
(392, 'Usaha Perjalanan Wisata (D3)', '-', 'Kamis', '', 'REGULER', 'D3-UPW-1A', '16', 16, 18),
(393, 'Usaha Perjalanan Wisata (D3)', '-', 'Kamis', '', 'REGULER', 'D3-UPW-1B', '16', 16, 18),
(394, 'Keuangan Syariah (D4)', '-', 'Jumat', '', 'REGULER', '2KSYA', '16', 9, 24),
(395, 'Keuangan Syariah (D4)', '-', 'Jumat', '', 'REGULER', '2KSYB', '16', 9, 24),
(396, 'Keuangan Syariah (D4)', '-', 'Jumat', '', 'REGULER', '3KSYB', '16', 10, 24),
(397, 'Keuangan Syariah (D4)', '-', 'Jumat', '', 'REGULER', '3KSYA', '16', 10, 24),
(398, 'Akuntansi (D4)', '-', 'Jumat', '', 'REGULER', '2ACB', '16', 11, 27),
(399, 'Akuntansi (D4)', '-', 'Jumat', '', 'REGULER', '2ACA', '16', 11, 27),
(400, 'Akuntansi Manajemen Pemerintahan (D4)', '-', 'Jumat', '', 'REGULER', '2 AMP B', '16', 11, 23),
(401, 'Administrasi Bisnis (D3)', '-', 'Jumat', '', 'REGULER', '2B-ABS', '16', 12, 17),
(402, 'Administrasi Bisnis (D4)', '-', 'Jumat', '', 'REGULER', '2B-BA', '16', 13, 28),
(403, 'Administrasi Bisnis (D4)', '-', 'Jumat', '', 'REGULER', '3A-BA', '16', 14, 28),
(404, 'Administrasi Bisnis (D3)', '-', 'Jumat', '', 'REGULER', '3A-ABS', '16', 16, 17),
(405, 'Administrasi Bisnis (D3)', '-', 'Jumat', '', 'REGULER', '3B-ABS', '16', 16, 17),
(408, 'Teknik Perancangan Jalan dan Jembatan (D4)', 'Risna Rismiana Sari', 'Senin', '', 'REGULER', '1A TPJJ', '16', 19, 3),
(409, 'Proses Manufaktur (D4)', 'Adi Pamungkas', 'Senin', '', 'REGULER', '1A PM', '16', 20, 33),
(410, 'Proses Manufaktur (D4)', 'Adi Pamungkas', 'Senin', '', 'REGULER', '1B PM', '16', 20, 33),
(411, 'Teknik Perawatan dan Perbaikan Gedung (D4)', 'Heri Kasyanto', 'Senin', '', 'REGULER', '1A TPPG', '16', 21, 4),
(412, 'Teknik Konstruksi Sipil (D3)', 'Mulyadi Yuswandono', 'Senin', '', 'REGULER', '1C KSI', '16', 22, 2),
(413, 'Teknik Konstruksi Sipil (D3)', 'Mulyadi Yuswandono', 'Selasa', '', 'REGULER', '1A KSI', '16', 19, 2),
(414, 'Teknik Perancangan dan Konstruksi Mesin (D4)', 'Adi Pamungkas', 'Selasa', '', 'REGULER', '1A TPKM', '16', 20, 30),
(415, 'Teknik Perancangan dan Konstruksi Mesin (D4)', 'Adi Pamungkas', 'Selasa', '', 'REGULER', '1B TPKM', '16', 20, 30),
(416, 'Teknik Perawatan dan Perbaikan Gedung (D4)', 'Ridho Septian', 'Selasa', '', 'REGULER', '1B TPPG', '16', 21, 4),
(417, 'Teknik Konstruksi Gedung (D3)', 'Ridho Septian', 'Selasa', '', 'REGULER', '1 KGD', '16', 21, 1),
(418, 'Teknik Pendingin dan Tata Udara (D3)', '-', 'Selasa', '', 'REGULER', '1B RTU', '16', 22, 15),
(419, 'Teknik Perancangan Jalan dan Jembatan (D4)', 'Husnul Fikri', 'Rabu', '', 'REGULER', '1B TPJJ', '16', 19, 3),
(420, 'Teknik Mesin (D3)', 'Adi Pamungkas', 'Rabu', '', 'REGULER', '1A TM', '16', 20, 11),
(421, 'Teknik Mesin (D3)', 'Adi Pamungkas', 'Rabu', '', 'REGULER', '1B TM', '16', 20, 11),
(422, 'Teknik Listrik (D3)', 'Trisna/Sunarto', 'Rabu', '', 'REGULER', '1A TLI', '16', 21, 6),
(423, 'Teknik Elektronika (D3)', '-', 'Rabu', '', 'REGULER', '1A-TEL', '16', 21, 5),
(424, 'Teknik Konstruksi Gedung (D3)', 'Mulyadi Yuswandono', 'Rabu', '', 'REGULER', '1A KGE', '16', 22, 1),
(425, 'Teknik Konstruksi Sipil (D3)', 'Husnul Fikri', 'Kamis', '', 'REGULER', '1B KSI', '16', 19, 2),
(426, 'Teknik Perancangan dan Konstruksi Mesin (D4)', 'Adi Pamungkas', 'Kamis', '', 'REGULER', '1C TPKM', '16', 20, 30),
(427, 'Teknik Pendingin dan Tata Udara (D3)', 'Edi Sukamto', 'Kamis', '', 'REGULER', '2B D3-TPTU', '16', 20, 15),
(428, 'Teknik Pendingin dan Tata Udara (D3)', 'Edi Sukamto', 'Kamis', '', 'REGULER', '2A D3-TPTU', '16', 21, 15),
(429, 'Teknik Elektronika (D3)', '-', 'Kamis', '', 'REGULER', '1B-TEL', '16', 21, 5),
(430, 'Teknik Konstruksi Gedung (D3)', 'Heri Kasyanto', 'Kamis', '', 'REGULER', '1B KGE', '16', 22, 1),
(432, 'Teknik Telekomunikasi (D3)', 'Tata Supriyadi/Yasmin', 'Jumat', '', 'REGULER', 'D3 TELKOM', '16', 19, 7),
(433, 'Teknik Pendingin dan Tata Udara (D4)', 'Edi Sukamto', 'Jumat', '', 'REGULER', '2A D4-TPTU', '16', 20, 29),
(434, 'Teknik Pendingin dan Tata Udara (D4)', 'Edi Sukamto', 'Jumat', '', 'REGULER', '2B D4-TPTU', '16', 20, 29),
(435, 'Teknik Listrik (D3)', 'Trisna/Sunarto', 'Jumat', '', 'REGULER', '1B TLI', '16', 21, 6),
(441, 'Usaha Perjalanan Wisata (D3)', '-', 'Senin', '', 'REGULER', 'D3-UPW-1A', '16', 13, 18),
(442, 'Usaha Perjalanan Wisata (D3)', '-', 'Senin', '', 'REGULER', 'D3-UPW-1B', '16', 13, 18),
(443, 'Administrasi Bisnis (D3)', 'PK MAMUN', 'Rabu', '', 'REGULER', '2A-ABS', '16', 14, 17),
(448, 'RPL', 'Unang', 'Jumat', '', 'REGULER', 'JMK-48', '16', 21, 1),
(449, 'RPL', 'Unang', 'Jumat', '', 'REGULER', 'JMK-48', '16', 21, 1),
(452, 'listrik', '-', 'Jumat', '', 'REGULER', 'B3K-A', '16', 22, 1),
(456, 'pemrograman', 'Dayat', 'Senin', '', 'UAS', 'PP', '16', 9, 1),
(461, 'Konstruksi', '-', 'Senin', '', 'NONREGULER', 'KK', '16', 11, 1),
(463, 'Konstruksi Non', '-', 'Senin', '', 'NONREGULER', 'KN', '16', 9, 1),
(469, 'KONTRUKSI SS', '-', 'Senin', '', 'NONREGULER', 'KS', '16', 9, 1),
(473, 'KONTRUKSI MEKANIK', '-', 'Senin', '', 'NONREGULER', 'KM', '16', 9, 1),
(474, 'KONTRUKSI MEKANIK', '-', 'Senin', '', 'NONREGULER', 'KM', '16', 9, 1),
(476, 'KONTRUKSI MEKANIK', '-', 'Senin', '', 'NONREGULER', 'KM', '16', 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_detail`
--

CREATE TABLE `jadwal_detail` (
  `id_jadwal_detail` int(11) NOT NULL,
  `id_jam` int(50) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal_detail`
--

INSERT INTO `jadwal_detail` (`id_jadwal_detail`, `id_jam`, `id_jadwal`) VALUES
(820, 1, 311),
(821, 2, 311),
(822, 3, 311),
(823, 4, 311),
(824, 5, 311),
(825, 6, 311),
(826, 7, 312),
(827, 8, 312),
(828, 9, 312),
(829, 10, 312),
(830, 11, 312),
(841, 1, 317),
(842, 2, 317),
(843, 3, 317),
(844, 4, 318),
(845, 5, 318),
(846, 6, 318),
(847, 7, 319),
(848, 8, 319),
(849, 9, 320),
(850, 10, 320),
(851, 1, 321),
(852, 2, 321),
(853, 3, 321),
(854, 4, 322),
(855, 5, 322),
(856, 6, 322),
(860, 7, 324),
(861, 8, 324),
(862, 9, 324),
(863, 1, 325),
(864, 2, 325),
(865, 3, 325),
(866, 4, 326),
(867, 5, 326),
(868, 6, 326),
(890, 1, 332),
(891, 2, 332),
(892, 3, 332),
(893, 4, 333),
(894, 5, 333),
(895, 6, 333),
(896, 7, 334),
(897, 8, 334),
(898, 9, 334),
(903, 1, 336),
(904, 2, 336),
(905, 3, 336),
(906, 4, 337),
(907, 5, 337),
(908, 6, 337),
(909, 7, 338),
(910, 8, 338),
(911, 1, 339),
(912, 2, 339),
(913, 3, 339),
(914, 4, 340),
(915, 5, 340),
(916, 6, 340),
(917, 7, 341),
(918, 8, 341),
(919, 9, 341),
(920, 10, 341),
(921, 11, 341),
(922, 1, 342),
(923, 2, 342),
(924, 3, 343),
(925, 4, 343),
(926, 5, 344),
(927, 6, 344),
(928, 7, 344),
(929, 8, 345),
(930, 9, 345),
(931, 10, 345),
(935, 1, 347),
(936, 2, 347),
(937, 3, 347),
(938, 4, 348),
(939, 5, 348),
(940, 6, 348),
(941, 7, 348),
(942, 1, 349),
(943, 2, 349),
(944, 3, 349),
(945, 1, 350),
(946, 2, 350),
(947, 1, 351),
(948, 2, 351),
(949, 3, 351),
(950, 4, 352),
(951, 5, 352),
(952, 6, 352),
(953, 7, 353),
(954, 8, 353),
(955, 9, 353),
(956, 10, 353),
(957, 11, 353),
(958, 1, 354),
(959, 2, 354),
(960, 3, 354),
(961, 4, 355),
(962, 5, 355),
(963, 6, 355),
(964, 7, 356),
(965, 8, 356),
(966, 9, 356),
(967, 10, 356),
(977, 1, 360),
(978, 2, 360),
(979, 3, 360),
(980, 4, 360),
(981, 1, 361),
(982, 2, 361),
(983, 3, 361),
(984, 4, 362),
(985, 5, 362),
(986, 6, 362),
(987, 7, 363),
(988, 8, 363),
(989, 9, 363),
(990, 1, 364),
(991, 2, 364),
(992, 3, 364),
(993, 4, 364),
(994, 5, 364),
(999, 5, 366),
(1000, 6, 366),
(1001, 7, 366),
(1002, 8, 367),
(1003, 9, 367),
(1006, 3, 369),
(1007, 4, 369),
(1008, 6, 370),
(1009, 7, 370),
(1012, 8, 371),
(1013, 9, 371),
(1014, 1, 372),
(1015, 2, 372),
(1016, 3, 373),
(1017, 4, 373),
(1018, 5, 374),
(1019, 6, 374),
(1020, 7, 375),
(1021, 8, 375),
(1022, 1, 376),
(1023, 2, 376),
(1024, 3, 377),
(1025, 4, 377),
(1026, 5, 378),
(1027, 6, 378),
(1028, 7, 378),
(1029, 1, 379),
(1030, 2, 379),
(1031, 3, 379),
(1032, 4, 380),
(1033, 5, 380),
(1034, 6, 380),
(1035, 7, 381),
(1036, 8, 381),
(1037, 9, 382),
(1038, 10, 382),
(1042, 1, 384),
(1043, 2, 384),
(1044, 3, 384),
(1045, 4, 385),
(1046, 5, 385),
(1047, 6, 385),
(1048, 7, 385),
(1049, 8, 385),
(1050, 1, 386),
(1051, 2, 386),
(1052, 3, 386),
(1053, 4, 387),
(1054, 5, 387),
(1055, 6, 387),
(1056, 7, 388),
(1057, 8, 388),
(1058, 9, 388),
(1059, 1, 389),
(1060, 2, 389),
(1061, 3, 389),
(1062, 4, 390),
(1063, 5, 390),
(1064, 6, 390),
(1065, 7, 391),
(1066, 8, 391),
(1067, 9, 391),
(1068, 3, 392),
(1069, 4, 392),
(1070, 5, 392),
(1071, 6, 393),
(1072, 7, 393),
(1073, 8, 393),
(1074, 9, 393),
(1075, 1, 394),
(1076, 2, 394),
(1077, 3, 395),
(1078, 4, 395),
(1079, 1, 396),
(1080, 2, 396),
(1081, 3, 397),
(1082, 4, 397),
(1083, 1, 398),
(1084, 2, 398),
(1085, 3, 398),
(1086, 4, 399),
(1087, 5, 399),
(1088, 6, 399),
(1089, 7, 400),
(1090, 8, 400),
(1091, 9, 400),
(1092, 3, 401),
(1093, 4, 401),
(1094, 5, 401),
(1095, 1, 402),
(1096, 2, 402),
(1097, 3, 402),
(1098, 1, 403),
(1099, 2, 403),
(1100, 3, 403),
(1101, 4, 403),
(1102, 5, 403),
(1103, 6, 403),
(1104, 7, 403),
(1105, 8, 403),
(1106, 1, 404),
(1107, 2, 404),
(1108, 3, 404),
(1109, 4, 404),
(1110, 5, 404),
(1111, 7, 405),
(1112, 8, 405),
(1113, 9, 405),
(1114, 10, 405),
(1115, 11, 405),
(1118, 1, 408),
(1119, 2, 408),
(1120, 3, 408),
(1121, 4, 408),
(1122, 5, 408),
(1123, 6, 408),
(1124, 7, 408),
(1125, 1, 409),
(1126, 2, 409),
(1127, 3, 409),
(1128, 4, 409),
(1129, 5, 409),
(1130, 7, 410),
(1131, 8, 410),
(1132, 9, 410),
(1133, 10, 410),
(1134, 11, 410),
(1135, 1, 411),
(1136, 2, 411),
(1137, 3, 411),
(1138, 4, 411),
(1139, 5, 411),
(1140, 6, 411),
(1141, 7, 411),
(1142, 1, 412),
(1143, 2, 412),
(1144, 3, 412),
(1145, 4, 412),
(1146, 5, 412),
(1147, 6, 412),
(1148, 7, 412),
(1149, 1, 413),
(1150, 2, 413),
(1151, 3, 413),
(1152, 4, 413),
(1153, 5, 413),
(1154, 6, 413),
(1155, 7, 413),
(1156, 1, 414),
(1157, 2, 414),
(1158, 3, 414),
(1159, 4, 414),
(1160, 5, 414),
(1161, 7, 415),
(1162, 8, 415),
(1163, 9, 415),
(1164, 10, 415),
(1165, 11, 415),
(1166, 1, 416),
(1167, 2, 416),
(1168, 3, 416),
(1169, 4, 416),
(1170, 5, 416),
(1171, 6, 416),
(1172, 7, 417),
(1173, 1, 418),
(1174, 2, 418),
(1175, 3, 418),
(1176, 4, 418),
(1177, 5, 418),
(1178, 6, 418),
(1179, 7, 418),
(1180, 1, 419),
(1181, 2, 419),
(1182, 3, 419),
(1183, 4, 419),
(1184, 5, 419),
(1185, 6, 419),
(1186, 7, 419),
(1187, 1, 420),
(1188, 2, 420),
(1189, 3, 420),
(1190, 4, 420),
(1191, 5, 420),
(1192, 7, 421),
(1193, 8, 421),
(1194, 9, 421),
(1195, 10, 421),
(1196, 11, 421),
(1197, 1, 422),
(1198, 2, 422),
(1199, 3, 422),
(1200, 4, 422),
(1201, 7, 423),
(1202, 8, 423),
(1203, 9, 423),
(1204, 1, 424),
(1205, 2, 424),
(1206, 3, 424),
(1207, 4, 424),
(1208, 5, 424),
(1209, 6, 424),
(1210, 7, 424),
(1211, 1, 425),
(1212, 2, 425),
(1213, 3, 425),
(1214, 4, 425),
(1215, 5, 425),
(1216, 6, 425),
(1217, 7, 425),
(1218, 1, 426),
(1219, 2, 426),
(1220, 3, 426),
(1221, 4, 426),
(1222, 5, 426),
(1223, 7, 427),
(1224, 8, 427),
(1225, 9, 427),
(1226, 10, 427),
(1227, 11, 427),
(1228, 1, 428),
(1229, 2, 428),
(1230, 3, 428),
(1231, 4, 428),
(1232, 5, 428),
(1233, 7, 429),
(1234, 8, 429),
(1235, 9, 429),
(1236, 1, 430),
(1237, 2, 430),
(1238, 3, 430),
(1239, 4, 430),
(1240, 5, 430),
(1241, 6, 430),
(1242, 7, 430),
(1248, 1, 432),
(1249, 2, 432),
(1250, 3, 432),
(1251, 4, 432),
(1252, 5, 432),
(1253, 7, 432),
(1254, 8, 432),
(1255, 9, 432),
(1256, 10, 432),
(1257, 11, 432),
(1258, 1, 433),
(1259, 2, 433),
(1260, 3, 433),
(1261, 4, 433),
(1262, 5, 433),
(1263, 7, 434),
(1264, 8, 434),
(1265, 9, 434),
(1266, 10, 434),
(1267, 11, 434),
(1268, 1, 435),
(1269, 2, 435),
(1270, 3, 435),
(1271, 4, 435),
(1284, 1, 441),
(1285, 2, 441),
(1286, 3, 441),
(1287, 4, 441),
(1288, 9, 442),
(1289, 10, 442),
(1290, 11, 442),
(1291, 1, 443),
(1292, 2, 443),
(1313, 2, 461);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id`, `jam`) VALUES
(1, '07.00 - 07.50'),
(2, '07.50 - 08.40'),
(3, '08.40 - 09.30'),
(4, '09.30 - 10.20'),
(5, '10.40 - 11.30'),
(6, '11.30 - 12.20'),
(7, '12.50 - 13.40'),
(8, '13.40 - 14.30'),
(9, '14.30 - 15.20'),
(10, '15.20 - 16.40'),
(11, '16.40 - 17.30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Teknik Sipil'),
(3, 'Teknik Elektro'),
(4, 'Teknik Mesin'),
(5, 'Teknik Kimia'),
(6, 'Teknik Refrigerasi dan Tata Udara'),
(7, 'Teknik Konversi Energi'),
(8, 'Administrasi Niaga'),
(9, 'Akuntansi'),
(10, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori`, `nama_kategori`) VALUES
(0, ''),
(2, 'Pengumuman'),
(3, 'Musik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal` varchar(500) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`tanggal`, `id_kontak`, `nama`, `email`, `komentar`) VALUES
('2024-04-29', 1, 'Mike', 'mike@gmail.com', 'Selamat Pagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-02-04-050858', 'App\\Database\\Migrations\\CreateAdminTable', 'default', 'App', 1707024117, 1),
(2, '2024-03-18-042930', 'App\\Database\\Migrations\\CreatePasswordResetTokensTable', 'default', 'App', 1710736973, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notif`
--

CREATE TABLE `notif` (
  `id` int(11) NOT NULL,
  `notif` varchar(255) NOT NULL,
  `id_prodi` int(250) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notif`
--

INSERT INTO `notif` (`id`, `notif`, `id_prodi`, `jenis`) VALUES
(3, 'shfpohfspasfhposadfpha', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `tokens` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `tokens`, `created_at`) VALUES
('azizmfadli.04@gmail.com', '284d73ff699c02e46f56798ddc3831700a6b384c1660c971961616cc04e77de5010dca2d03b6bef83e8c630ee770a6198906cd3dc43e597f2d24801df9e8ff9ab1', '2024-03-19 02:27:01'),
('unar66@gmail.com', 'e12283e1b8d55b6e1ef3dfecea9717758ae6e4d2a0f16d71809b220d16ef95a5ebbfd31270daa620670d1aeecb40dbc397806654153448b34d069a600800a48e14', '2024-03-19 02:15:40'),
('admin2@gmail.com', '3acfd2bed129c93868e0686973bab7104b90be0729afbf8dad27781f237ddeb742dd6705739795425a2675a4d838dfa62d7cb303630acd92088449ad8a478a1c75', '2024-03-21 23:05:33'),
('adrfirt@gmail.com', 'c77a81ce3728e5c17273f978c81261569eee89ed48153860f2a4bdd5d605d2be9be13d61bad0b8ed46cc11fc6b5f92f9ba4ead7d0aef9da5610454e8f23b53e7bc', '2024-03-21 18:53:56'),
('kged3@polban.ac.id', 'ebda9f85822bd933a14372064876f6af27e45bac19384d31382c307eaa448c82abbb8c5f502634b118823b946c179f2bf26c00f7f6b4ef99c2d185896315f510d2', '2024-04-29 20:59:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nip` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `nip`) VALUES
(1, 'Setiadi Rachmat, B', '196904041998031001'),
(2, 'Yeti Nugraheni', '197804112003122002'),
(3, 'Yudhi Rachmat Kurnia', '198605162010121009'),
(4, 'Riand Saputra', '198911112019031012'),
(5, ' Resha Ramadhan Dwi ', ' 199503012022031007'),
(6, 'Tardi', '197507152007011001'),
(7, 'Mochamad Taufik', '201005003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_jadwal` int(50) NOT NULL,
  `mk` varchar(255) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `id_thn` int(200) NOT NULL,
  `id_ruangan` int(200) NOT NULL,
  `id_prodi` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id_jadwal`, `mk`, `nama_dosen`, `hari`, `tgl`, `jenis`, `kelas`, `id_thn`, `id_ruangan`, `id_prodi`) VALUES
(7, 'RPL', 'mrs Sri', 'Jumat', NULL, 'REGULER', 'PLG-2', 16, 22, 1),
(8, 'RPL', 'Unang', 'Jumat', NULL, 'REGULER', 'JMK-48', 16, 21, 1),
(20, 'listrik', '-', 'Jumat', NULL, 'REGULER', 'B3K-A', 16, 22, 1),
(24, 'listrik', 'Unang', 'Jumat', NULL, 'NONREGULER', 'B3K-A', 16, 22, 1),
(25, 'RPL', 'Azis', 'Jumat', NULL, 'NONREGULER', 'JMK-48', 16, 22, 1),
(26, 'Pemrograman', 'Dayat', 'Senin', NULL, 'UTS', 'PP', 16, 9, 1),
(27, 'pemrograman', 'Dayat', 'Senin', NULL, 'UAS', 'PP', 16, 9, 1),
(28, 'pemrograman', 'Mimi', 'Senin', NULL, 'REGULER', 'PP', 16, 22, 1),
(29, 'pemrograman', 'mrs Sri', 'Senin', NULL, 'REGULER', 'B2K-A', 16, 21, 1),
(30, 'pemrograman', 'Dayat', 'Jumat', NULL, 'UTS', 'PP', 16, 22, 1),
(31, 'listrik-3', 'Dayat', 'Jumat', NULL, 'REGULER', 'B3K-A', 16, 22, 1),
(32, 'listrik-3', 'Dayat', 'Jumat', NULL, 'REGULER', 'B3K-A', 16, 22, 1),
(33, 'listrik-3', 'Dayat', 'Jumat', NULL, 'REGULER', 'B3K-A', 16, 21, 1),
(34, 'listrik-3', 'Dayat', 'Jumat', NULL, 'REGULER', 'B3K-A', 16, 22, 1),
(35, 'listrik', 'Unang12', 'Selasa', NULL, 'UTS', 'B5M-K', 16, 22, 1),
(36, 'Konstruksi', '-', 'Senin', NULL, 'NONREGULER', 'KK', 16, 11, 1),
(37, 'Konstruksi', '-', 'Senin', NULL, 'NONREGULER', 'KKM', 16, 9, 1),
(38, 'Konstruksi Non', '-', 'Senin', NULL, 'NONREGULER', 'KN', 16, 9, 1),
(39, 'Konstruksi Non', '-', 'Senin', NULL, 'NONREGULER', 'KN', 16, 9, 1),
(40, 'Konstruksi Non', '-', 'Senin', NULL, 'NONREGULER', 'KN', 16, 9, 1),
(41, 'UAS KONSTRUKSI', '-', 'Senin', NULL, 'UAS', 'UAS KK', 16, 9, 1),
(42, 'KONTRUKSI SS', '-', 'Senin', NULL, 'NONREGULER', 'KS', 16, 10, 1),
(43, 'KONTRUKSI NON', '-', 'Senin', NULL, 'NONREGULER', 'KN', 16, 9, 1),
(44, 'KONTRUKSI NON', '-', 'Senin', NULL, 'NONREGULER', 'KN', 16, 9, 1),
(45, 'KONTRUKSI SS', '-', 'Senin', NULL, 'NONREGULER', 'KS', 16, 9, 1),
(46, 'KONTRUKSI MEKANIK', '-', 'Senin', NULL, 'NONREGULER', 'KM', 16, 9, 1),
(47, 'KONTRUKSI MEKANIK', '-', 'Senin', NULL, 'NONREGULER', 'KM', 16, 9, 1),
(48, 'KONTRUKSI MEKANIK', '-', 'Senin', NULL, 'NONREGULER', 'KM', 16, 9, 1),
(49, 'KONTRUKSI MEKANIK', '-', 'Senin', NULL, 'NONREGULER', 'KM', 16, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_detail`
--

CREATE TABLE `pengajuan_detail` (
  `id_jadwal_detail` int(50) NOT NULL,
  `id_jam` int(255) NOT NULL,
  `id_jadwal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `id_prodi` int(11) NOT NULL,
  `kode_prodi` varchar(11) NOT NULL,
  `nama_prodi` text NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `program` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `program_studi`
--

INSERT INTO `program_studi` (`id_prodi`, `kode_prodi`, `nama_prodi`, `id_jurusan`, `program`) VALUES
(1, 'KGE', 'Teknik Konstruksi Gedung', 2, 'D3'),
(2, 'KSI', 'Teknik Konstruksi Sipil', 2, 'D3'),
(3, 'TPJJ', 'Teknik Perancangan Jalan dan Jembatan', 2, 'D4'),
(4, 'TPPG', 'Teknik Perawatan dan Perbaikan Gedung', 2, 'D4'),
(5, 'TEL', 'Teknik Elektronika', 3, 'D3'),
(6, 'TLI', 'Teknik Listrik', 3, 'D3'),
(7, 'TTE', 'Teknik Telekomunikasi', 3, 'D3'),
(8, 'TNK', 'Teknik Telekomunikasi', 3, 'D4'),
(9, 'EK', 'Teknik Elektronika', 3, 'D4'),
(10, 'TOI', 'Teknik Otomasi Industri', 3, 'D4'),
(11, 'TME', 'Teknik Mesin', 4, 'D3'),
(12, 'AER', 'Teknik Aeronautika', 4, 'D3'),
(13, 'JTK', 'Teknik Komputer dan Informatika', 1, 'D3'),
(14, 'TKI', 'Teknik Kimia', 5, 'D3'),
(15, 'RTU', 'Teknik Pendingin dan Tata Udara', 6, 'D3'),
(16, 'TEN', 'Teknik Konversi Energi', 7, 'D3'),
(17, 'ABS', 'Administrasi Bisnis', 8, 'D3'),
(18, 'UPW', 'Usaha Perjalanan Wisata', 8, 'D3'),
(19, 'MPE', 'Manajemen Pemasaran', 8, 'D3'),
(20, 'MAS', 'Manajemen Aset', 8, 'D4'),
(21, 'AKU', 'Akuntansi', 9, 'D3'),
(22, 'KPN', 'Keuangan dan Perbankan', 9, 'D3'),
(23, 'AMP', 'Akuntansi Manajemen Pemerintahan', 9, 'D4'),
(24, 'KS', 'Keuangan Syariah', 9, 'D4'),
(25, 'ING', 'Bahasa Inggris', 10, 'D3'),
(26, 'IM', 'Manajemen Pemasaran', 8, 'D4'),
(27, 'AC', 'Akuntansi', 9, 'D4'),
(28, 'BA', 'Administrasi Bisnis', 8, 'D4'),
(29, 'PTU', 'Teknik Pendingin dan Tata Udara', 6, 'D4'),
(30, 'TPKM', 'Teknik Perancangan dan Konstruksi Mesin', 4, 'D4'),
(32, 'ANK', 'Analis Kimia', 5, 'D3'),
(33, 'PMA', 'Proses Manufaktur', 4, 'D4'),
(34, 'TPTL', 'Teknik Pembangkit Tenaga Listrik', 7, 'D4'),
(35, 'TKE', 'Teknik Konservasi Energi', 7, 'D4'),
(36, 'KPB', 'Teknik Kimia Produksi Bersih', 5, 'D4'),
(37, 'TI', 'Teknik Komputer dan Informatika', 1, 'D4'),
(38, 'MTRI', 'Rekayasa Infrastruktur', 2, 'S2'),
(39, 'KPSY', 'Keuangan dan Perbankan Syariah Terapan', 9, 'S2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `id_teknisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama_ruangan`, `keterangan`, `lokasi`, `id_teknisi`) VALUES
(9, 'Lab. UPT Komputer 1', 'Baik', 'Gedung P2T lantai 2', 1),
(10, 'Lab. UPT Komputer 2', 'Baik', 'Gedung P2T lantai 2', 1),
(11, 'Lab. UPT Komputer 3', 'Baik', 'Gedung P2T lantai 2', 2),
(12, 'Lab. UPT Komputer 4', 'Baik', 'Gedung P2T lantai 2', 2),
(13, 'Lab. UPT Komputer 5', 'Baik', 'Gedung P2T lantai 2', 2),
(14, 'Lab. UPT Komputer 6', 'Baik', 'Gedung P2T lantai 2', 3),
(15, 'Lab. UPT Komputer 7', 'Baik', 'Gedung P2T lantai 2', 3),
(16, 'Lab. UPT Komputer 8', 'Baik', 'Gedung P2T lantai 2', 4),
(19, 'Lab. UPT Komputer A', 'Baik', 'Gedung P2T lantai 2', 4),
(20, 'Lab. UPT Komputer B', ' Baik', 'Gedung P2T lantai 2', 4),
(21, 'Lab. UPT Komputer C', 'Baik', 'Gedung P2T lantai 2', 5),
(22, 'Lab. UPT Komputer D', 'Baik', 'Gedung P2T lantai 2', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(15) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `juruusan_pkl` varchar(11) NOT NULL,
  `asal_sekolah` varchar(30) NOT NULL,
  `id_ruangan` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama_lengkap`, `jenis_kelamin`, `juruusan_pkl`, `asal_sekolah`, `id_ruangan`) VALUES
(1, 'Adrian Firman Tadarus', 'L', 'RPL', 'SMK BINA PUTRA', 16),
(2, 'Azis Muhammad Fadli', 'L', 'RPL', 'SMK BINA PUTRA', 16),
(3, 'Celsi Amelia Pratama', 'P', 'RPL', 'SMK BINA PUTRA', 10),
(4, 'Siti Hana Khoirunnisa', 'P', 'RPL', 'SMK BINA PUTRA', 10),
(5, 'Sri Fani Faujiah', 'P', 'RPL', 'SMK BINA PUTRA', 11),
(6, 'Emilio Septaguna', 'L', 'TKJ', 'SMK TI GARUDA', 12),
(7, 'Fikri Ali Al Ihsani', 'L', 'TKJ', 'SMK TI GARUDA', 10),
(8, 'Muhammad Zaki Roihan', 'L ', 'TKJ', 'SMK TI GARUDA', 12),
(9, 'Wahyu Mulyawan', 'L', 'TKJ', 'SMK TI GARUDA', 14),
(10, '  Muhamad Rahin Almassyah Putr', '  L', '  RPL', '  SMKN 1 SUBANG', 15),
(11, 'Osep Maulana', 'L', 'RPL', 'SMKN 1 SUBANG', 16),
(12, 'Yuga Zainal Lanov', 'L', 'RPL', 'SMKN 1 SUBANG', 15),
(13, 'Wanda Ramdani', 'L', 'RPL', 'SMKN 1 SUBANG', 20),
(18, ' Kangkang Asyadulloh', ' L ', ' TKJ', ' SMK INDONESIA RAYA', 21),
(19, ' Muhamad Radit Maulana', ' L ', ' TKJ', ' SMK INDONESIA RAYA', 22),
(20, ' Ardiansyah', ' L ', ' TKJ', ' SMK INDONESIA RAYA', 20),
(21, ' Mohammad Ilham Nurhakim', ' L ', ' TKJ', ' SMK INDONESIA RAYA', 19),
(22, '  Riza Pamungkas', '  L ', '  TKJ', '  SMKN 11 BANDUNG', 12),
(23, ' Ilham Ferdiansyah', ' L ', ' TKJ', ' SMKN 11 BANDUNG', 11),
(24, 'Aditya Mulawarman', 'L ', 'RPL', 'SMK AL FALAH BANDUNG', 10),
(25, ' Fikha Erlangga Darmawan', ' L ', ' RPL', ' SMK AL FALAH BANDUNG', 9),
(26, ' Revan Irwansyah', ' L ', ' RPL', ' SMK AL FALAH BANDUNG', 9),
(27, 'Alifha Bayu Ramdhani', 'L ', 'RPL', 'SMK AL FALAH BANDUNG', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'antis', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `thn_ajaran`
--

CREATE TABLE `thn_ajaran` (
  `id_thn` int(11) NOT NULL,
  `thn_awal` int(11) NOT NULL,
  `thn_akhir` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `thn_ajaran`
--

INSERT INTO `thn_ajaran` (`id_thn`, `thn_awal`, `thn_akhir`, `semester`, `status`) VALUES
(1, 2016, 2017, 1, 'TIDAK'),
(2, 2016, 2017, 2, 'TIDAK'),
(3, 2017, 2018, 1, 'TIDAK'),
(4, 2017, 2018, 2, 'TIDAK'),
(5, 2018, 2019, 1, 'TIDAK'),
(6, 2018, 2019, 2, 'TIDAK'),
(7, 2019, 2020, 1, 'TIDAK'),
(8, 2019, 2020, 2, 'TIDAK'),
(9, 2020, 2021, 1, 'TIDAK'),
(10, 2020, 2021, 2, 'TIDAK'),
(11, 2021, 2022, 1, 'TIDAK'),
(12, 2021, 2022, 2, 'TIDAK'),
(13, 2022, 2023, 1, 'TIDAK'),
(14, 2022, 2023, 2, 'TIDAK'),
(15, 2023, 2024, 1, 'TIDAK'),
(16, 2023, 2024, 2, 'AKTIF'),
(17, 2024, 2025, 1, 'TIDAK'),
(18, 2024, 2025, 2, 'TIDAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `kode_unit` varchar(11) NOT NULL,
  `nama_unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id_unit`, `kode_unit`, `nama_unit`) VALUES
(1, 'UP-BI', 'Unit Pelaksana Bahasa Inggris'),
(2, 'UPT-S', 'Unit Pelaksana Teknis Sipil'),
(3, 'UPT-E', 'Unit Pelaksana Teknis Elektro'),
(4, 'UPT-M', 'Unit Pelaksana Teknis Mesin'),
(5, 'UPT-K', 'Unit Pelaksana Teknis Komputer'),
(6, 'UPT-KM', 'Unit Pelaksana Teknis Kimia'),
(7, 'UPT-RT', 'Unit Pelaksana Teknik Refregasi Tata Udara'),
(8, 'UPT-KE', 'Unit Pelaksana Teknis Konversi Energi'),
(9, 'UP-AG', 'Unit Pelaksana Administrasi Niaga'),
(10, 'UP-AK', 'Unit Pelaksana Akutansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `judul` text NOT NULL,
  `file` longblob NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `email`, `status`, `no_telp`, `id_prodi`) VALUES
(10, 'Teknik Sipil', 'kge', '$2y$10$XffFpi3nu2uRm7tUUP.DNeNeo1qZAS/LZIYoN7lx7z4sh3e4blQYu', 'kged3@polban.ac.id', 'aktif', '022-2013789', 1),
(11, 'Teknik Sipil', 'ksi', '$2y$10$6KdOWMkVFuBGlJll8Ctuluoj1PpdmUcEA84NcnLSidjb.ea2w5tme', 'ksid3@polban.ac.id', 'aktif', '022-2013789', 2),
(12, 'Teknik Sipil', 'tpjj', '$2y$10$wIinhBr/U60SYeEdeunNf.See9wl6AEL5jKM0RFRj0.0WJkBeAZ2W', 'tpjjd4@polban.ac.id', 'aktif', '022-2013789', 3),
(13, 'Teknik Sipil', 'tppg', '$2y$10$iUnEYcLtH8RsOjTtanvkvOGnTgXlObydt2JWV2bPADG2RQTzlCVCy', 'tppgd4@polban.ac.id', 'aktif', '022-2013789', 4),
(14, 'Teknik Elektro', 'tel', '$2y$10$cinZJmLTcmNpS6Go5eJCDO5cwO7wIrEm4eJiw7kFCyktf08UQ6kPS', 'teld3@polban.ac.id', 'aktif', '022-2013789', 5),
(15, 'Teknik Elektro', 'tli', '$2y$10$EyJcA6BmX5hVdEfQRafnAuvQmKMUzlTr1IorRsnsmVgVYSUSdZO3S', 'tlid3@polban.ac.id', 'aktif', '022-2013789', 6),
(16, 'Teknik Elektro', 'tte', '$2y$10$YlVWE1YGzYQ3h2Hp8cY1SuwoQ.ZVqb6og2ree1R.AcGbfrqUvk4gm', 'tted3@polban.ac.id', 'aktif', '022-2013789', 7),
(17, 'Teknik Elektro', 'tnk', '$2y$10$DPEKUZoFSjFV4Mmy/gwZ1esKBCsIZwd3abc63025cQ29x4PqfLr.W', 'tnkd4@polban.ac.id', 'aktif', '022-2013789', 8),
(18, 'Teknik Elektro', 'ek', '$2y$10$cEb.FetS1SgN3O0EWOE85.c8gMEReXW9raCYUD59RznG6hiR4tnI6', 'ekd4@polban.ac.id', 'aktif', '022-2013789', 9),
(19, 'Teknik Elektro', 'toi', '$2y$10$EZDMha5B0myheq8vAUtqL.WROJY6CMSCCZhM5az7HFApKCrqcD0LC', 'toid4@polban.ac.id', 'aktif', '022-2013789', 10),
(20, 'Teknik Mesin', 'tme', '$2y$10$F/AIks7YA0w.4J3pqdRU4.8LtNmIiapggNWdkpUevCAvdKNhkv6uK', 'tmed3@polban.ac.id', 'aktif', '022-2013789', 11),
(22, 'Teknik Mesin', 'aer', '$2y$10$mxnxSpwV1ErI8aJWsib0vO/9Ixk.TMMvZ6Jv5WVMOqfh1IEvZIsKa', 'aerd3@polban.ac.id', 'aktif', '022-2013789', 12),
(23, 'Teknik Komputer dan Informatika', 'jtk', '$2y$10$uRLi8ccLcJWBf2VnFVdmC.dUHE1jKT4NBa/OvcNBYDX62f3x93OEC', 'jtkd3@polban.ac.id', 'aktif', '022-2013789', 13),
(24, 'Teknik Kimia', 'tki', '$2y$10$3rLY79JgY0j2SGIk3skcWO4Hx.SygNYC//15yeSkv1dGKA7AuSMuG', 'tkid3@polban.ac.id', 'aktif', '022-2013789', 14),
(25, 'Teknik Refrigerasi dan Tata Udara', 'rtu', '$2y$10$5.Qx05/b0.m1cwMReaa1iuPZg3d/cqJss.yLaC41YyF1HOMIE.9le', 'rtud3@polban.ac.id', 'aktif', '022-2013789', 15),
(26, 'Teknik Konversi Energi', 'ten', '$2y$10$R.ttvjY0qaHWJZvA23gab.bS8Yxl9L34BpfCrO8UCMWPNsFKk/kie', 'tend3@polban.ac.id', 'aktif', '022-2013789', 16),
(27, 'Administrasi Niaga', 'abs', '$2y$10$QUZRJSQjL2kdcuEer3PmduxzQHKBPDrgPofZQslHYRHI2VdiZGJ8a', 'absd3@polban.ac.id', 'aktif', '022-2013789', 17),
(28, 'Administrasi Niaga', 'upw', '$2y$10$Kf.mrFjKw8F7hz1kddEUuOtCJ8R2ahihDT7Gbqr.vpxhqM1biWsdW', 'upwd3@polban.ac.id', 'aktif', '022-2013789', 18),
(29, 'Administrasi Niaga', 'mpe', '$2y$10$C4wXqfLCbtVXcGsMsvvMiO4YeB3u2FizPxUnuQPBobEPYepjG8RQe', 'mped3@polban.ac.id', 'aktif', '022-2013789', 19),
(30, 'Administrasi Niaga', 'mas', '$2y$10$KhEOHvq/iJCxdc.bJaKafe/p827r.eymFRcmbBjfr.wvFKaSY45Tu', 'masd4@polban.ac.id', 'aktif', '022-2013789', 20),
(31, 'Akuntansi', 'aku', '$2y$10$1iENRvsz9El2aQ6hZklQI.2L8JimGD1ma5QYnNg.dTEZC8yeWuA6C', 'akud3@polban.ac.id', 'aktif', '022-2013789', 21),
(32, 'Akuntansi', 'kpn', '$2y$10$f.L62X8hjM6daALDhBdQSehgWZSVV5.cr25ZP55UFiuPZXv4yhEme', 'kpnd3@polban.ac.id', 'aktif', '022-2013789', 22),
(33, 'Akuntansi', 'amp', '$2y$10$pjis66zpEKRKsaJnRX0hLOvGZf9NYRcGrA8Q.sXAcv04NYc7fMxju', 'ampd4@polban.ac.id', 'aktif', '022-2013789', 23),
(34, 'Akuntansi', 'ks', '$2y$10$q.HebSDzQ08VVDadh/BtvubsRroFI4jY1xsqFG0BmV.JoL/rvzDzm', 'ksd4@polban.ac.id', 'aktif', '022-2013789', 24),
(36, 'Bahasa Inggris', 'ing', '$2y$10$m7O0/L4hfkWtH/2bW6NzDuOEjIf0FmB6oPZOnvjF2C9hAnf53u.Le', 'ingd3@polban.ac.id', 'aktif', '022-2013789', 25),
(39, 'Administrasi Niaga', 'im', '$2y$10$Flc9NeF/V3CZgm60rtwmxuu8YhjuqlL9W2NZiVMOUzXb7SzoTjhYG', 'imd4@polban.ac.id', 'aktif', '022-2013789', 26),
(41, 'Akuntansi', 'ac', '$2y$10$2G0DrNFOXpS4pBH3ufhQTeBWE9TFp2HpVVuAs82NqruVBohrkKoEG', 'acd4@polban.ac.id', 'aktif', '-', 27),
(42, 'Administrasi Niaga', 'ba', '$2y$10$ESIOBBC4pg9RREZgIhee2usthkn8z2XGrqZgkc3UO8BBJlHAYhTKe', 'bad4@polban.ac.id', 'aktif', '-', 28),
(44, 'Refrigerasi dan Tata Udara', 'ptu', '$2y$10$Xtbp4H/89UULiwWVy0.h4esVoHdn0rdBcMrqRONKjGO82s0kydiXe', 'ptud4@polban.ac.id', 'aktif', '-', 29),
(45, 'Teknik Mesin', 'tpkm', '$2y$10$bjeK8p7Hisansgbr7yxtzeJ9iukqUgR30pO8BUxzoDz4tCK2fCBRm', 'tpkmd4@polban.ac.id', 'aktif', '-', 30),
(51, 'Teknik Kimia', 'ank', '$2y$10$SKak/mPsFtcL8DlMlUTyG.5JfsVneT4b3g276bPTpLZoOGQRGf5yK', 'ankd3@polban.ac.id', 'aktif', '-', 32),
(52, 'Teknik Mesin', 'pma', '$2y$10$SsfYrxO3poLeGKr29EVVLO4a76V8uX3xi2zsvdxmg1nX8eobBmZt.', 'pmad4@polban.ac.id', 'aktif', '-', 33),
(53, 'Teknik Konversi Energi', 'tptl', '$2y$10$8qgAqhjK10u97ZXeICLauu0U2HlS9Y35kQFkWg/4I6yDM6rfzemTa', 'tptld4@polban.ac.id', 'aktif', '-', 34),
(54, 'Teknik Konversi Energi', 'tke', '$2y$10$cF7HEZ9fMQEGV4FbU0nqcew8WIFVcmc2WW0fAgoudtplXExxYSJVS', 'tked4@polban.ac.id', 'aktif', '-', 35),
(55, 'Teknik Kimia', 'kpb', '$2y$10$tyV.YKyokAdX1F7OQMOUNuNpUhBV9rOpADOCpfYUPfje4jvHAcwaS', 'kpbd4@polban.ac.id', 'aktif', '-', 36),
(56, 'Teknik Informatika', 'ti', '$2y$10$AvRa7GkoGcVAhZyc4uQw2ObfNmgVO0WF/HNVEBJ0BVeSBjudzgeCG', 'tid4@polban.ac.id', 'aktif', '-', 37),
(57, 'Teknik Sipil', 'mtri', '$2y$10$sZIbNq4O1GJRIcvmWMOeyOHpaUud8/1pOA5UgAPCyegtcN8sTkO56', 'mtris2@polban.ac.id', 'aktif', '-', 38),
(58, 'Akuntansi', 'kpsy', '$2y$10$BKVfgaeb5Pifwg6dvE0xmO.Pu9zXCmA9WSlFsJuWfiL7mkiDTeX7C', 'kpsys2@polban.ac.id', 'aktif', '-', 39);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_user` (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`),
  ADD KEY `id_tipe` (`id_tipe`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `f_hardware_b`
--
ALTER TABLE `f_hardware_b`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `f_software`
--
ALTER TABLE `f_software`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_thn` (`id_thn`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  ADD PRIMARY KEY (`id_jadwal_detail`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_jam` (`id_jam`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `pengajuan_detail`
--
ALTER TABLE `pengajuan_detail`
  ADD PRIMARY KEY (`id_jadwal_detail`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_teknisi` (`id_teknisi`),
  ADD KEY `id_ruangan_2` (`id_ruangan`),
  ADD KEY `id_ruangan_3` (`id_ruangan`),
  ADD KEY `id_ruangan_4` (`id_ruangan`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  ADD PRIMARY KEY (`id_thn`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`),
  ADD KEY `id_user` (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_progdi` (`id_prodi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=867;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `f_hardware_b`
--
ALTER TABLE `f_hardware_b`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `f_software`
--
ALTER TABLE `f_software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT untuk tabel `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  MODIFY `id_jadwal_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1329;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `notif`
--
ALTER TABLE `notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_jadwal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_detail`
--
ALTER TABLE `pengajuan_detail`
  MODIFY `id_jadwal_detail` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  MODIFY `id_thn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_berita` (`id_kategori`),
  ADD CONSTRAINT `berita_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id_ruangan`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id_ruangan`),
  ADD CONSTRAINT `jadwal_ibfk_4` FOREIGN KEY (`id_prodi`) REFERENCES `program_studi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  ADD CONSTRAINT `jadwal_detail_ibfk_2` FOREIGN KEY (`id_jam`) REFERENCES `jam` (`id`),
  ADD CONSTRAINT `jadwal_detail_ibfk_3` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Ketidakleluasaan untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `program_studi` (`id_prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
