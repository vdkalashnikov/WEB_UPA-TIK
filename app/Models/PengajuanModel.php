<?php

namespace App\Models;

use CodeIgniter\Model;

class PengajuanModel extends Model
{
    protected $table = 'pengajuan';
    protected $primaryKey = 'id_jadwal';
    protected $useAutoIncrement = true;
    protected $returnType = 'array';
    protected $useSoftDeletes = false;
    protected $protectFields = true;
    protected $allowedFields = [
        'mk',
        'nama_dosen',
        'hari',
        'tgl',
        'jenis',
        'kelas',
        'id_thn',
        'id_ruangan',
        'id_prodi'
    ];


    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = false;


    public function joinRuangan()
    {
        return $this->join('ruangan', 'ruangan.id_ruangan = pengajuan.id_ruangan', 'left');
    }
    public function joinTA()
    {
        return $this->join('thn_ajaran', 'thn_ajaran.id_thn = pengajuan.id_thn', 'left')
            ->where('thn_ajaran.status', 'AKTIF');
    }

    public function joinProdi()
    {
        return $this->join('program_studi', 'program_studi.id_prodi = pengajuan.id_prodi', 'left');
    }

    public function joinJam()
    {
        return $this->join('pengajuan_detail', 'pengajuan_detail.id_jadwal = pengajuan.id_jadwal')
            ->join('jam', 'jam.id = pengajuan_detail.id_jam', 'left')
            ->orderBy('pengajuan_detail.id_jadwal', 'DESC');
    }

    public function getPengajuanById($id)
    {
        // Mendapatkan data jadwal berdasarkan ID dari tabel 'approval'
        $builder = $this->db->table('pengajuan')
            ->join('pengajuan_detail', 'pengajuan_detail.id_jadwal = pengajuan.id_jadwal')
            ->join('jam', 'jam.id = pengajuan_detail.id_jam', 'left')
            ->where('pengajuan.id_jadwal', $id)
            ->orderBy('pengajuan_detail.id_jadwal', 'DESC');

        $query = $builder->get();

        // Periksa apakah jadwal ditemukan
        if ($query->getNumRows() > 0) {
            // Mengembalikan data jadwal dan id jam sebagai array asosiatif
            return $query->getRowArray();
        } else {
            return false; // Mengembalikan false jika jadwal tidak ditemukan
        }
    }

    public function insertApprovedSchedule($mk, $kelas, $id_ruangan, $jam, $nama_dosen, $jenis, $id_thn, $hari, $id_prodi)
    {
        $total = [];
        $jadwalret = [
            'mk' => $mk,
            'nama_dosen' => $nama_dosen,
            'jenis' => $jenis,
            'kelas' => $kelas,
            'id_thn' => $id_thn,
            'id_ruangan' => $id_ruangan,
            'id_prodi' => $id_prodi,
            'hari' => $hari
        ];
        $insert = $this->db->table('jadwal')->insert($jadwalret);
        if ($insert) {
            $id_jd = $this->db->insertID();
            $insertJam = $this->db->query("INSERT INTO jadwal_detail (id_jam, id_jadwal) VALUES ('$jam', '$id_jd')");
            $total[] = $this->db->affectedRows() > 0;
        } else {
            $total[] = false;
        }
        $totalSuccess = !in_array(false, $total);
        if ($totalSuccess) {
            echo "<script>alert('Data Telah Disimpan')</script>";
            return redirect()->to('jadwal');
        } else {
            echo "<script>alert('Terjadi kesalahan dalam pengisian!')</script>";
            return redirect()->back();
        }

        // $jadwalreg = [
        //     'mk' => $mk,
        //     'nama_dosen' => $nama_dosen,
        //     'jenis' => $jenis,
        //     'kelas' => $kelas,
        //     'id_thn' => $id_thn,
        //     'id_ruangan' => $id_ruangan,
        //     'id_prodi' => $id_prodi,
        //     'hari' => $hari
        // ];
        // // Insert data ke tabel jadwal
        // $input = $this->db->table('jadwal')->insert($jadwalreg);



        // if ($input) {
        //     $id_jadwal = $this->db->table('jadwal')
        //         ->select('jadwal.id_jadwal')
        //         ->where('nama_dosen', $nama_dosen)
        //         ->where('jenis', $jenis)
        //         ->where('id_ruangan', $id_ruangan)
        //         ->where('id_prodi', $id_prodi)
        //         ->where('id_thn', $id_thn)
        //         ->where('hari', $hari)
        //         ->where('mk', $mk)
        //         ->where('kelas', $kelas)
        //         ->get()
        //         ->getRowArray();
        //     if ($id_jadwal) {
        //         $id_jadwalreg = $id_jadwal['id_jadwal'];
        //         if (!is_array($jam)) {
        //             $jam = array($jam);
        //         }

        //         // Sekarang jalankan loop foreach
        //         foreach ($jam as $j) {
        //             $query = $this->db->query("INSERT INTO jadwal_detail (id_jadwal, id_jam) VALUES ('$id_jadwalreg', '$j')");
        //         }
        //         echo "<script>alert('Data Telah Disimpan')</script>";
        //         return redirect()->to('jadwal');
        //     } else {
        //         echo "<script>alert('Terjadi kesalahan dalam pengisian!')</script>";
        //         return redirect()->back();
        //     }
        // }
    }


    public function deleteSchedule($id)
    {
        // Hapus data dari tabel pengajuan_detail berdasarkan id_jadwal
        $this->db->table('pengajuan_detail')->where('id_jam', $id)->delete();
    }

    public function simpan_jadwal($mk, $kelas, $id_ruangan, $jam, $nama_dosen, $jenis, $id_thn, $hari, $id_prodi)
    {
        $total = [];

        foreach ($jam as $jm) {
            $jadwalreq = [
                'mk' => $mk,
                'nama_dosen' => $nama_dosen,
                'jenis' => $jenis,
                'kelas' => $kelas,
                'id_thn' => $id_thn,
                'id_ruangan' => $id_ruangan,
                'id_prodi' => $id_prodi,
                'hari' => $hari
            ];
            $insert = $this->db->table('pengajuan')->insert($jadwalreq);
            if ($insert) {
                $id_jd = $this->db->insertID();
                $insertJam = $this->db->query("INSERT INTO pengajuan_detail VALUES (NULL, '$jm', '$id_jd')");
                $total[] = $this->db->affectedRows() > 0;
            } else {
                $total[] = false;
            }
        }
        $totalSuccess = !in_array(false, $total);
        if ($totalSuccess) {
            echo "<script>alert('Data Telah Disimpan')</script>";
            return redirect()->to('jadwal');
        } else {
            echo "<script>alert('Terjadi kesalahan dalam pengisian!')</script>";
            return redirect()->back();
        }
    }

    public function getIdProdi()
    {
        $result = $this->select('program_studi.id_prodi as id_prodi')->joinProdi()->first();
        return $result ? $result['id_prodi'] : null;
    }
}
