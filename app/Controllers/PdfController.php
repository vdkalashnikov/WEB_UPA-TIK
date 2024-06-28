<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\barangModel;
use App\Models\jurusanModel;
use App\Models\RuanganModel;
use App\Models\JadwalModel;
use CodeIgniter\HTTP\ResponseInterface;
use Dompdf\Dompdf;
use App\Models\th_ajarModel;
use App\Models\prodiModel;
use App\Models\unitModel;
use App\Models\PegawaiModel;
use App\Models\SiswaModel;
use App\Models\userModel;
use App\Models\kritikModel;
use App\Models\fasilitas_softwareModel;
use App\Models\fasilitas_hardwareModel;
use App\Models\JamModel;
use App\Models\JadwalDetailModel;
use Dompdf\Options;


class PdfController extends BaseController
{
    public function exportHardware($id_ruangan)
    {
        $model = new fasilitas_hardwareModel();
        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'model' => $model->where('id_ruangan', $id_ruangan)->findAll(),
            'ruangan' => $ruanganModel->find($id_ruangan)
        ];

        $view = view('pdf/export-hardware', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-fasilitas-hardware.pdf"');
        return $this->response->setBody($output);
    }


    public function exportRuangan()
    {
        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'ruangan' => $ruanganModel->joinPegawai()->findAll()
        ];

        $view = view('pdf/export-ruangan', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-ruangan.pdf"');
        return $this->response->setBody($output);
    }
    public function exportBarang()
    {
        $barangModel = new barangModel();

        $data = [
            'pageTitle' => 'export pdf',
            'barang' => $barangModel->joinRuangan()->findAll()
        ];

        $view = view('pdf/export-barang', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-barang.pdf"');
        return $this->response->setBody($output);
    }
    public function exportJadwal($jenis)
    {
        $jadwalModel = new JadwalModel();
        $semester = $jadwalModel->getSemester();
        $thn_awal = $jadwalModel->getTahunAwal();
        $thn_akhir = $jadwalModel->getTahunAkhir();

        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.jenis', $jenis)->findAll(),
            'jenis' => $jenis,
            'thn_awal' => $thn_awal,
            'thn_akhir' => $thn_akhir,
            'semester' => $semester
        ];

        $view = view('pdf/export-jadwal', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $filename = 'jadwal-' . $jenis . '.pdf';
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="' . $filename . '"');
        return $this->response->setBody($output);
    }


    public function exportJadwalNonReguler()
    {
        $jadwalModel = new JadwalModel();

        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.jenis', 'NONREGULER')->findAll()
        ];

        $view = view('pdf/export-jadwal', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="jadwal-nonreguler.pdf"');
        return $this->response->setBody($output);
    }

    public function exportJadwalUAS()
    {
        $jadwalModel = new JadwalModel();

        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.jenis', 'UAS')->findAll()
        ];

        $view = view('pdf/export-jadwal', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="jadwal-uas.pdf"');
        return $this->response->setBody($output);
    }

    public function exportJadwalUTS()
    {
        $jadwalModel = new JadwalModel();

        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.jenis', 'UTS')->findAll()
        ];

        $view = view('pdf/export-jadwal', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="jadwal-uts.pdf"');
        return $this->response->setBody($output);
    }






    // -------------EXPORT JADWAL USER PRODI --------------------------------- \\
    public function exportSoftware($id_ruangan)
    {
        $model = new fasilitas_softwareModel();
        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'model' => $model->where('id_ruangan', $id_ruangan)->findAll(),
            'ruangan' => $ruanganModel->find($id_ruangan)
        ];

        $view = view('pdf/export-software', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-fasilitas-software.pdf"');
        return $this->response->setBody($output);
    }
    public function exportProdiReguler($idProdi, $namaProdi, $jenis)
    {
        $jadwalModel = new JadwalModel();
        $semester = $jadwalModel->getSemester();
        $thn_awal = $jadwalModel->getTahunAwal();
        $thn_akhir = $jadwalModel->getTahunAkhir();

        $jadwalProdi = $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.id_prodi', $idProdi)->where('jenis', $jenis)->findAll();
        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalProdi,
            'namaProdi' => $namaProdi,
            'jenis' => $jenis,
            'thn_awal' => $thn_awal,
            'thn_akhir' => $thn_akhir,
            'semester' => $semester
        ];

        $view = view('pdf/export-reguler', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $filename = 'prodi-' . $jenis . '.pdf';
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="' . $filename . '"');
        return $this->response->setBody($output);
    }
    public function exportProdiNonReguler($idProdi)
    {
        $jadwalModel = new JadwalModel();
        $jadwalProdi = $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.id_prodi', $idProdi)->where('jenis', 'NONREGULER')->findAll();
        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalProdi
        ];

        $view = view('pdf/export-reguler', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="prodi-nonreguler.pdf"');
        return $this->response->setBody($output);
    }
    public function exportProdiUAS($idProdi)
    {
        $jadwalModel = new JadwalModel();
        $jadwalProdi = $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.id_prodi', $idProdi)->where('jenis', 'UAS')->findAll();
        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalProdi
        ];

        $view = view('pdf/export-reguler', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="prodi-UAS.pdf"');
        return $this->response->setBody($output);
    }
    public function exportProdiUTS($idProdi)
    {
        $jadwalModel = new JadwalModel();
        $jadwalProdi = $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.id_prodi', $idProdi)->where('jenis', 'UTS')->findAll();
        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalProdi
        ];

        $view = view('pdf/export-reguler', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="prodi-UTS.pdf"');
        return $this->response->setBody($output);
    }

    public function exportTA()
    {
        $thjrModel = new th_ajarModel();
        $data = [
            'ta' => $thjrModel->findAll(),
            'pageTitle' => "Tahun Ajaran",
        ];

        $view = view('pdf/export-ta', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-TA.pdf"');
        return $this->response->setBody($output);
    }

    public function exportJurusan()
    {
        $jurusanModel = new jurusanModel();
        $data = [
            'jurusan' => $jurusanModel->findAll(),
            'pageTitle' => "Jurusan",
        ];

        $view = view('pdf/export-jurusan', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Jurusan.pdf"');
        return $this->response->setBody($output);
    }
    public function exportProdi()
    {
        $prodiModel = new prodiModel();
        $data = [
            'prodi' => $prodiModel->joinJurusan()->findAll(),
            'pageTitle' => "Jurusan",
        ];

        $view = view('pdf/export-prodi', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Prodi.pdf"');
        return $this->response->setBody($output);
    }
    public function exportUnit()
    {
        $unitModel = new unitModel();
        $data = [
            'prodi' => $unitModel->findAll(),
            'pageTitle' => "Unit",
        ];

        $view = view('pdf/export-unit', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Unit.pdf"');
        return $this->response->setBody($output);
    }
    public function exportUser()
    {
        $userModel = new userModel();
        $data = [
            'user' => $userModel->joinProdi()->findAll(),
            'pageTitle' => "User",
        ];

        $view = view('pdf/export-user', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-User.pdf"');
        return $this->response->setBody($output);
    }
    public function exportKritik()
    {
        $kritik = new kritikModel();
        $data = [
            'kritik' => $kritik->findAll(),
            'pageTitle' => "Kritik",
        ];

        $view = view('pdf/export-kritik', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Kritik.pdf"');
        return $this->response->setBody($output);
    }
    public function exportPegawai()
    {
        $pegawai = new PegawaiModel();
        $data = [
            'pegawai' => $pegawai->findAll(),
            'pageTitle' => "Pegawai",
        ];

        $view = view('pdf/export-pegawai', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Pegawai.pdf"');
        return $this->response->setBody($output);
    }
    public function exportSiswa()
    {
        $siswa = new SiswaModel();
        $data = [
            'siswa' => $siswa->findAll(),
            'pageTitle' => "Pegawai",
        ];

        $view = view('pdf/export-siswa', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="data-Siswa.pdf"');
        return $this->response->setBody($output);
    }

    public function exportV_Jadwal($jenis)
    {
        $jadwalModel = new JadwalModel();

        // Fetch required data from the model
        $thn_awal = $jadwalModel->getTahunAwal();
        $thn_akhir = $jadwalModel->getTahunAkhir();
        $semester = $jadwalModel->getSemester();
        $hari = $jadwalModel->getHari();
        $jam = $jadwalModel->getJam();
        $ruangan = $jadwalModel->getRuangan();
        $jadwal = $jadwalModel->getJadwal($jenis);


        // Calculate the number of rooms
        $jumlahLab = count($ruangan);

        $data = [
            'thn_awal' => $thn_awal,
            'thn_akhir' => $thn_akhir,
            'hari' => $hari,
            'jenis' => $jenis,
            'jam' => $jam,
            'ruangan' => $ruangan,
            'jadwal' => $jadwal,
            'jumlahLab' => $jumlahLab,
            'semester' => $semester // Pass the calculated value to the view
        ];

        $view = view('pdf/export-v_jadwal', $data);

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output PDF
        $output = $dompdf->output();

        // Download PDF
        $filename = 'data-Jadwal-' . $jenis . '.pdf';
        $this->response->setContentType('application/pdf');
        $this->response->setHeader('Content-Disposition', 'attachment; filename="' . $filename . '"');
        return $this->response->setBody($output);
    }

    public function preview_siswa()
{
    // Inisialisasi DOMPDF
    $dompdf = new Dompdf();

    $siswa = new SiswaModel();
    $data = [
        'siswa' => $siswa->joinRuangan()->findAll(),
        'pageTitle' => "Pegawai",
    ];
    
    // Load HTML content
    $view = view('pdf/export-siswa', $data);

    $dompdf->loadHtml($view);

    // (Opsional) Set ukuran kertas dan orientasi
    $dompdf->setPaper('A4', 'portrait');

    // Render HTML menjadi PDF
    $dompdf->render();

    // Nama file yang diinginkan
    $filename = "Data Siswa.pdf";

    // Output the generated PDF to Browser with specified name
    // The second parameter "inline" allows the file to be displayed in the browser and allows renaming before saving
    return $this->response
                ->setHeader('Content-Type', 'application/pdf')
                ->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"')
                ->setBody($dompdf->output())
                ->send();
}


    public function preview_pegawai()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $pegawai = new PegawaiModel();
        $data = [
            'pegawai' => $pegawai->findAll(),
            'pageTitle' => "Pegawai",
        ];
        
        // Load HTML content
        $view = view('pdf/export-pegawai', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Pegawai.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_hardware($id_ruangan)
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $model = new fasilitas_hardwareModel();
        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'model' => $model->where('id_ruangan', $id_ruangan)->findAll(),
            'ruangan' => $ruanganModel->find($id_ruangan)
        ];
        
        // Load HTML content
        $view = view('pdf/export-hardware', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Fasilitas Hardware.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_software($id_ruangan)
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $model = new fasilitas_softwareModel();
        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'model' => $model->where('id_ruangan', $id_ruangan)->findAll(),
            'ruangan' => $ruanganModel->find($id_ruangan)
        ];
        
        // Load HTML content
        $view = view('pdf/export-software', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Fasilitas Software.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_barang()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $barangModel = new barangModel();

        $data = [
            'pageTitle' => 'export pdf',
            'barang' => $barangModel->joinRuangan()->findAll()
        ];
        
        // Load HTML content
        $view = view('pdf/export-barang', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Barang.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_ruangan()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $ruanganModel = new RuanganModel();

        $data = [
            'pageTitle' => 'export pdf',
            'ruangan' => $ruanganModel->joinPegawai()->findAll()
        ];
        
        // Load HTML content
        $view = view('pdf/export-ruangan', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Ruangan.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_ta()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $thjrModel = new th_ajarModel();
        $data = [
            'ta' => $thjrModel->findAll(),
            'pageTitle' => "Tahun Ajaran",
        ];
        
        // Load HTML content
        $view = view('pdf/export-ta', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Tahun Ajaran.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_jurusan()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $jurusanModel = new jurusanModel();
        $data = [
            'jurusan' => $jurusanModel->findAll(),
            'pageTitle' => "Jurusan",
        ];
        
        // Load HTML content
        $view = view('pdf/export-jurusan', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Jurusan.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_prodi()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();
        
        $prodiModel = new prodiModel();
        $data = [
            'prodi' => $prodiModel->joinJurusan()->findAll(),
            'pageTitle' => "Jurusan",
        ];
        
        // Load HTML content
        $view = view('pdf/export-prodi', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Prodi.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_unit()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();
        
        $unitModel = new unitModel();
        $data = [
            'prodi' => $unitModel->findAll(),
            'pageTitle' => "Unit",
        ];
        
        // Load HTML content
        $view = view('pdf/export-unit', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Unit.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }
    
    public function preview_jadwal($jenis)
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();
        
        $jadwalModel = new JadwalModel();
        $semester = $jadwalModel->getSemester();
        $thn_awal = $jadwalModel->getTahunAwal();
        $thn_akhir = $jadwalModel->getTahunAkhir();

        $data = [
            'pageTitle' => 'export pdf',
            'jadwal' => $jadwalModel->joinRuangan()->joinTA()->joinProdi()->joinJam()->where('jadwal.jenis', $jenis)->findAll(),
            'jenis' => $jenis,
            'thn_awal' => $thn_awal,
            'thn_akhir' => $thn_akhir,
            'semester' => $semester
        ];

        $view = view('pdf/export-jadwal', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Jadwal " .$jenis .".pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_user()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $userModel = new userModel();
        $data = [
            'user' => $userModel->joinProdi()->findAll(),
            'pageTitle' => "User",
        ];
        
        // Load HTML content
        $view = view('pdf/export-user', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data User.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }

    public function preview_kritik()
    {
        // Inisialisasi DOMPDF
        $dompdf = new Dompdf();

        $kritik = new kritikModel();
        $data = [
            'kritik' => $kritik->findAll(),
            'pageTitle' => "Kritik",
        ];
        
        // Load HTML content
        $view = view('pdf/export-kritik', $data);

        $dompdf->loadHtml($view);

        // (Opsional) Set ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');


        // Render HTML menjadi PDF
        $dompdf->render();

        // Dapatkan output PDF sebagai string
        $output = $dompdf->output();

        $filename = "Data Kritik.pdf";

        // Set response header untuk konten PDF
        $this->response->setHeader('Content-Type', 'application/pdf');
        $this->response->setHeader('Content-Disposition', 'inline; filename="' . $filename . '"');
        $this->response->setBody($output);
        return $this->response->send();
    }
}

