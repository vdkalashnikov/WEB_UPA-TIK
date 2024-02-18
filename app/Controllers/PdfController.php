<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\barangModel;
use App\Models\RuanganModel;
use CodeIgniter\HTTP\ResponseInterface;
use Dompdf\Dompdf;
use App\Models\HardwareLab10;
use App\Models\HardwareLab9;
use App\Models\HardwareLab11;
use App\Models\HardwareLab12;
use App\Models\HardwareLab14;
use App\Models\HardwareLab13;
use App\Models\HardwareLab15;
use App\Models\HardwareLab16;
use App\Models\fasilitas_softwareModel;


class PdfController extends BaseController
{
    public function exportPdf($modelNumber)
    {
        switch ($modelNumber) {
            case 9:
                $model = new HardwareLab9();
                break;
            case 10:
                $model = new HardwareLab10();
                break;
            case 11:
                $model = new HardwareLab11();
                break;
            case 12:
                $model = new HardwareLab12();
                break;
            case 13:
                $model = new HardwareLab13();
                break;
            case 14:
                $model = new HardwareLab14();
                break;
            case 15:
                $model = new HardwareLab15();
                break;
            case 16:
                $model = new HardwareLab16();
                break;
            // Tambahkan case lainnya sesuai dengan model yang Anda miliki
            default:
                // Jika nomor model tidak cocok, kembalikan dengan pesan kesalahan
                return redirect()->back()->with('error', 'Nomor model tidak valid.');
        }

        $data = [
            'pageTitle' => 'export pdf',
            'model' => $model->findAll(),
            'modelNumber' => $modelNumber
        ];
        // Render HTML
        //$html = view('fasilitas_software/pdf', $data);
        $view = view('pdf/export-pdf', $data);

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
}
