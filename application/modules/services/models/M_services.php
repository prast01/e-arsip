<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_services extends CI_Model {

    public function getDataAll($tabel)
    {
        return $this->db->get($tabel);
    }

    public function getTransaksi($where)
    {
        $this->db->select('*');
        $this->db->from('tb_transaksi');
        $this->db->join('tb_peminjam', 'tb_transaksi.id_peminjam = tb_peminjam.id_peminjam');
        $this->db->join('tb_barang', 'tb_transaksi.id_barang = tb_barang.id_barang');
        $this->db->where($where);
        $this->db->order_by('tb_transaksi.tgl_pinjam', 'asc');
        
        
        return $this->db->get();
    }

    public function getNota($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );

        $this->db->select('*');
        $this->db->from('tb_nota_dinas');
        $this->db->join('tb_dpa', 'tb_nota_dinas.id_dpa = tb_dpa.id_dpa');
        $this->db->join('v_nota_detail', 'tb_nota_dinas.nomor_dinas = v_nota_detail.nomor_dinas');
        $this->db->where($where);
        return $this->db->get();
    }

    public function getKepala($id)
    {
        $where = array(
            'posisi_user' => $id,
            'level_user' => '2'
        );

        $data = $this->db->get_where('tb_pegawai', $where)->row();
        return $data;
    }

    public function updateNota($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );
        $data = array(
            'valid' => 1
        );

        $cek = $this->db->update('tb_nota_dinas', $data, $where);

        if ($cek) {
            $msg = array('res'=>1, 'msg' => 'Validasi Berhasil.');
        } else {
            $msg = array('res'=>0, 'msg' => 'Validasi Gagal.');
        }

        return json_encode($msg);
    }

    public function getSurtug($id)
    {
        $where = array(
            'id_surat_tugas' => $id
        );

        $hasil = $this->db->get_where('tb_surat_tugas', $where);
        return $hasil;
    }
    
    public function valid($id)
    {
        $where = array(
            "id_surat_tugas" => $id
        );

        $data = array(
            'validasi' => '1'
        );

        $cek = $this->db->update('tb_surat_tugas', $data, $where);

        if ($cek) {
            $msg = array('res'=>1, 'msg'=>'Berkas Berhasil Divalidasi');
        } else {
            $msg = array('res'=>0, 'msg'=>'Berkas Gagal Divalidasi');
        }
        
        return json_encode($msg);
    }
}

/* End of file ModelName.php */
