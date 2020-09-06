<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_home extends CI_Model {
    public $id_transaksi;
    public $id_barang;
    public $id_peminjam;
    public $tgl_pinjam;
    public $jumlah;
    public $keperluan;

    // public function getDataAll()
    // {
    //     return $this->db->get('tb_barang');
    // }

    // public function getPeminjam()
    // {
    //     return $this->db->get('tb_peminjam');
    // }

    // public function getDataTrans()
    // {
    //     return $this->db->query('SELECT a.id_barang FROM tb_barang a WHERE a.id_barang IN (SELECT id_barang FROM tb_transaksi WHERE tgl_kembali="0000-00-00" GROUP BY id_barang)');
    // }

    // public function getDataId($table,$where)
    // {
    //     return $this->db->get_where($table,$where)->result();
    // }

    // public function getTransaksi($where)
    // {
    //     $this->db->select('*');
    //     $this->db->from('tb_transaksi');
    //     $this->db->join('tb_peminjam', 'tb_transaksi.id_peminjam = tb_peminjam.id_peminjam');
    //     $this->db->where($where);
        
    //     return $this->db->get()->result();
    // }

    // public function save()
    // {
    //     $post = $this->input->post();
    //     $this->id_transaksi = uniqid();
    //     $this->id_barang = $post['barang'];
    //     $this->id_peminjam = $post['peminjam'];
    //     $this->tgl_pinjam = $post['tgl_pinjam'];
    //     $this->tgl_kembali = '0000-00-00';
    //     $this->jumlah = $post['jumlah'];
    //     $this->keperluan = $post['keperluan'];

    //     $cek = $this->db->insert('tb_transaksi', $this);

    //     if ($cek) {
    //         $data = array(
    //             'id_barang' => $post['id_barang']
    //         );
    //         $hasil = $this->getDataId('tb_barang', $data);

    //         foreach ($hasil as $key) {
    //             $jumlah_pinjam = $key->jumlah_pinjam;
    //         }

    //         $sisa = $jumlah_pinjam + $post['jumlah'];
            
    //         $data2 = array(
    //             'jumlah_pinjam' => $sisa
    //         );
    //         $this->db->where('id_barang', $this->id_barang);
    //         $this->db->update('tb_barang', $data2);
    //         $msg = array("res"=> 1, "msg"=> 'Barang berhasil ditambahkan');
    //     } else {
    //         $msg = array("res"=> 0, "msg"=> 'Barang gagal disimpan');
    //     }
        
    //     return json_encode($msg);
    // }

    
    // public function update()
    // {
    //     $post = $this->input->post();
    //     $where = array(
    //         'id_barang' => $post['id_transaksi']
    //     );

    //     $data = array(
    //         'nama_barang' => $post['nama'],
    //         'jumlah_barang' => $post['jumlah'],
    //         'kondisi_barang' => $post['kondisi'],
    //     );

    //     // $cek = $this->db->insert('tb_barang', $this);
    //     $this->db->where($where);
    //     $cek = $this->db->update('tb_barang', $data);
        
    //     if ($cek) {
    //         $msg = array("res"=> 1, "msg"=> 'Barang berhasil diubah');
    //     } else {
    //         $msg = array("res"=> 0, "msg"=> 'Barang gagal diubah');
    //     }
        
    //     return json_encode($msg);
    // }

    // public function delete($where)
    // {
    //     $cek = $this->db->delete('tb_barang', $where);
        
    //     if ($cek) {
    //         $msg = array("res"=> 1, "msg"=> 'Barang berhasil dihapus');
    //     } else {
    //         $msg = array("res"=> 0, "msg"=> 'Barang gagal dihapus');
    //     }
        
    //     return json_encode($msg);
    // }

    // public function kembali($id_barang)
    // {
    //     $post = $this->input->post();
    //     $where = array(
    //         'id_transaksi' => $post['id_transaksi']
    //     );

    //     $data = array(
    //         'tgl_kembali' => $post['tgl_kembali']
    //     );

    //     // $cek = $this->db->insert('tb_barang', $this);
    //     $this->db->where($where);
    //     $cek = $this->db->update('tb_transaksi', $data);
        
    //     if ($cek) {
    //         $data = array(
    //             'id_barang' => $id_barang
    //         );
    //         $hasil = $this->getDataId('tb_barang', $data);

    //         foreach ($hasil as $key) {
    //             $jumlah_pinjam = $key->jumlah_pinjam;
    //         }

    //         $sisa = $jumlah_pinjam - $post['jumlah'];
            
    //         $data2 = array(
    //             'jumlah_pinjam' => $sisa
    //         );
    //         $this->db->where('id_barang', $id_barang);
    //         $this->db->update('tb_barang', $data2);

    //         $msg = array("res"=> 1, "msg"=> 'Barang sudah dikembalikan');
    //     } else {
    //         $msg = array("res"=> 0, "msg"=> 'Barang gagal dikembalikan');
    //     }
        
    //     return json_encode($msg);
    // }
}

/* End of file ModelName.php */
