<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
    public function __construct()
    {
      parent::__construct();
      $this->load->model("M_home");
    }
    
    public function index()
    {
      $barang = $this->M_home;

      // $data['barang'] = $barang->getDataAll()->result();
      // $row = $barang->getDataTrans()->result();
      // if($row != null){
      //   foreach ($row as $value) {
      //     $data['transaksi'][] = $value->id_barang;
      //   }
      // } else {
      //   $data['transaksi'][] = '';
      // }
      if ($this->session->userdata('id_user') != '') {
        $this->template('home');
        // echo json_encode($data['transaksi']);
      } else {
        redirect('../','refresh');
      }
      
    }

    public function lihat($id)
    {
      $barang = $this->M_home;
      $where = array(
          'id_barang' => $id
      );
      $where2 = array(
          'id_barang' => $id,
          'tgl_kembali' => '0000-00-00'
      );

      $data['barang'] = $barang->getDataId('tb_barang',$where);
      $data['transaksi'] = $barang->getTransaksi($where2);
      $this->template('lihat', $data);
      // echo json_encode($data['transaksi']);
    }

    public function tambah()
    {
      date_default_timezone_set('Asia/Jakarta');
      $barang = $this->M_home;
      $data['barang'] = $barang->getDataAll()->result();
      $data['peminjam'] = $barang->getPeminjam()->result();
      $this->template('tambah', $data);
    }

    public function add()
    {
      $barang = $this->M_home;
      
      $hasil = json_decode($barang->save(), true);
        
      if($hasil['res']){
        $this->session->set_flashdata('success', $hasil['msg']);
      } else {
        $this->session->set_flashdata('gagal', $hasil['msg']);
      }
  
          
      redirect('../home','location');
    }

    public function kembali($id)
    {
      $barang = $this->M_home;
      
      $hasil = json_decode($barang->kembali($id), true);
        
      if($hasil['res']){
        $this->session->set_flashdata('success', $hasil['msg']);
      } else {
        $this->session->set_flashdata('gagal', $hasil['msg']);
      }
  
          
      redirect('../home','location');
    }
}

/* End of file Controllername.php */