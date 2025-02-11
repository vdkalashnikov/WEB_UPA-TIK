<?php

namespace App\Models;

use CodeIgniter\Model;

class NotifModel extends Model
{
    protected $table = 'notif';
    protected $primaryKey = 'id';
    protected $useAutoIncrement = true;
    protected $returnType = 'array';
    protected $useSoftDeletes = false;
    protected $protectFields = true;
    protected $allowedFields = [
        'id',
        'notif',
        'id_prodi',
        'jenis'
    ];

    // Dates
    protected $useTimestamps = false;


    public function notifSimpan($notif, $id_prodi, $jenis)
    {
        $data = [
            'notif' => $notif,
            'id_prodi' => $id_prodi,
            'jenis' => $jenis
        ];
        $this->db->table('notif')->insert($data);
    }
}