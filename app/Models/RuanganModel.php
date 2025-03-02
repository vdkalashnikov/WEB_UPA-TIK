<?php

namespace App\Models;

use CodeIgniter\Model;

class RuanganModel extends Model
{
    protected $table = 'ruangan';
    protected $primaryKey = 'id_ruangan';
    protected $allowedFields = [
        'id_ruangan',
        'nama_ruangan',
        'keterangan',
        'lokasi',
        'id_nama',
        'id_teknisi'
    ];

    public function joinPegawai()
    {
        return $this->join('pegawai', 'pegawai.id = ruangan.id_teknisi', 'left');
    }
}
