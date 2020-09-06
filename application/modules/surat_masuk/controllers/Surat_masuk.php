<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Surat_masuk extends MY_Controller {

  public function __construct()
  {
    parent::__construct();
		$this->load->model("M_default");
		$this->load->model("M_suratMasuk");

  }

  public function index()
  {
    $p_bln = (isset($_POST['bulan'])) ? $_POST['bulan'] : date('m') ;
    $p_thn = (isset($_POST['tahun'])) ? $_POST['tahun'] : date('Y') ;
		$Bulan = array(
      "all"=>"Semua Bulan",
      "1"=>"Januari",
      "2"=>"Februari",
      "3"=>"Maret",
      "4"=>"April",
      "5"=>"Mei",
      "6"=>"Juni",
      "7"=>"Juli",
      "8"=>"Agustus",
      "9"=>"September",
      "10"=>"Oktober",
      "11"=>"November",
      "12"=>"Desember"
    );

    $tahun = array("2018", "2019", "2020");

    $model = $this->M_default;
    $model2 = $this->M_suratMasuk;
    $id = $this->session->userdata('posisi');
    $id2 = $this->session->userdata('level');
    $data['surat'] = $model->getSuratMasukAll($id, $p_bln, $p_thn)->result();
    $data['posisi'] = $id;
    $data['level'] = $id2;
    $data['bulan'] = $Bulan;
    $data['p_bln'] = $p_bln;
    $data['tahun'] = $tahun;
    $data['p_thn'] = $p_thn;
    if ($this->session->userdata('id_user') != '') {
      $this->template('dashboard', $data);
    } else {
      redirect('../','refresh');
    }
  }

  public function tambah()
  {
    $model = $this->M_default;
    $model2 = $this->M_suratMasuk;
    $id = $this->session->userdata('posisi');
    
    $data['dispo'] = $model->getDispo($id, '1');
    $data['jenis_surat'] = $model->getDataSurat()->result();
    $data['nomor_dinas'] = $model2->getNomor();
    if ($this->session->userdata('id_user') != '') {
      $this->template('tambah', $data);
    } else {
      redirect('../','refresh');
    }
  }

  public function add()
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->save(), true);
    
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
      redirect('../surat_masuk','location');
    } elseif ($hasil['res'] == '2') {
      $this->session->set_flashdata('gagal', $hasil['msg']);
      redirect('../surat_masuk/tambah','location');
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
      redirect('../surat_masuk','location');
    }

  }

  public function ubah($id)
  {
    $model = $this->M_suratMasuk;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['jenis_surat'] = $model2->getDataSurat()->result();
    $id2 = $this->session->userdata('posisi');
    $data['dispo'] = $model2->getDispo($id2, '2', $data['surat']->nomor_dinas);
    if ($this->session->userdata('id_user') != '') {
      $this->template('ubah', $data);
    } else {
      redirect('../','refresh');
    }
  }

  public function edit($id)
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->edit($id), true);
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_masuk','location');
  }

  public function hapus($id)
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->delete($id), true);
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_masuk','location');
  }
  
  public function listSurat()
  {
    $model = $this->M_default;

    $id = $this->session->userdata('posisi');
    $data['surat'] = $model->getSuratMasukAll($id)->result();

    $this->load->view('listSurat', $data);
    // echo json_encode($data);
    
  }

  public function validasi($id)
  {
    $model = $this->M_suratMasuk;
    $model->valid($id);
    $model2 = $this->M_default;
    $model2->_push();
  }

  public function dispo($id)
  {
    $model = $this->M_suratMasuk;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['jenis_surat'] = $model2->getDataSurat()->result();
    $data['dispo'] = $model2->getDispo('1', '2', $data['surat']->nomor_dinas);
    $data['dispo2'] = $model2->getDispo('19', '2', $data['surat']->nomor_dinas);
    if ($this->session->userdata('id_user') != '') {
      $this->template('dispo', $data);
    } else {
      redirect('../','refresh');
    }
  }

  public function d($id)
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->dispoSekdin($id), true);
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_masuk','location');
  }

  public function dispo2($id)
  {
    $model = $this->M_suratMasuk;
    $model2 = $this->M_default;

    $posisi = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['jenis_surat'] = $model2->getDataSurat()->result();
    $data['dispo'] = $model2->getDispo('1', '2', $data['surat']->nomor_dinas);
    $data['dispo2'] = $model2->getDispo('19', '2', $data['surat']->nomor_dinas);
    $data['dispo3'] = $model2->getDispo($posisi, '2', $data['surat']->nomor_dinas);
    if ($this->session->userdata('id_user') != '') {
      $this->template('dispo2', $data);
    } else {
      redirect('../','refresh');
    }
  }
  public function d2($id)
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->dispoBidang($id), true);
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_masuk','location');
  }

  public function dispo3($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratMasuk;
    $model2 = $this->M_default;

    $atasan = $this->session->userdata('atasan');
    $posisi = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['jenis_surat'] = $model2->getDataSurat()->result();
    $data['dispo'] = $model2->getDispo(1, 2, $data['surat']->nomor_dinas);
    $data['dispo2'] = $model2->getDispo(19, 2, $data['surat']->nomor_dinas);
    $data['dispo3'] = $model2->getDispo($atasan, 2, $data['surat']->nomor_dinas);
    $data['dispo4'] = $model2->getDispo($posisi, 2, $data['surat']->nomor_dinas);
    if ($this->session->userdata('id_user') != '') {
      $this->template('dispo3', $data);
    } else {
      redirect('../','refresh');
    }
  }
  public function d3($id)
  {
    $model = $this->M_suratMasuk;

    $hasil = json_decode($model->dispoSeksi($id), true);
    if($hasil['res']){
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_masuk','location');
  }

  public function terdispo()
  {
    $p_bln = (isset($_POST['bulan'])) ? $_POST['bulan'] : date('m') ;
    $p_thn = (isset($_POST['tahun'])) ? $_POST['tahun'] : date('Y') ;
		$Bulan = array(
      "all"=>"Semua Bulan",
      "1"=>"Januari",
      "2"=>"Februari",
      "3"=>"Maret",
      "4"=>"April",
      "5"=>"Mei",
      "6"=>"Juni",
      "7"=>"Juli",
      "8"=>"Agustus",
      "9"=>"September",
      "10"=>"Oktober",
      "11"=>"November",
      "12"=>"Desember"
    );

    $tahun = array("2018", "2019", "2020");

    $model = $this->M_default;
    $model2 = $this->M_suratMasuk;
    $id = $this->session->userdata('posisi');
    $id2 = $this->session->userdata('level');
    $data['surat'] = $model->getSuratMasukTerdispo($id, $p_bln, $p_thn)->result();
    $data['posisi'] = $id;
    $data['level'] = $id2;
    $data['bulan'] = $Bulan;
    $data['p_bln'] = $p_bln;
    $data['tahun'] = $tahun;
    $data['p_thn'] = $p_thn;

    if (isset($_POST['excel'])) {
      $this->load->view('export_excel', $data);
    } else {
      if ($this->session->userdata('id_user') != '') {
        $this->template('dashboard2', $data);
      } else {
        redirect('../','refresh');
      }
    }
  }
  public function semua()
  {
    $p_bln = (isset($_POST['bulan'])) ? $_POST['bulan'] : date('m') ;
    $p_thn = (isset($_POST['tahun'])) ? $_POST['tahun'] : date('Y') ;
		$Bulan = array(
      "all"=>"Semua Bulan",
      "1"=>"Januari",
      "2"=>"Februari",
      "3"=>"Maret",
      "4"=>"April",
      "5"=>"Mei",
      "6"=>"Juni",
      "7"=>"Juli",
      "8"=>"Agustus",
      "9"=>"September",
      "10"=>"Oktober",
      "11"=>"November",
      "12"=>"Desember"
    );

    $tahun = array("2018", "2019", "2020");
    $model = $this->M_default;
    $model2 = $this->M_suratMasuk;
    $id = $this->session->userdata('posisi');
    $id2 = $this->session->userdata('level');
    $data['surat'] = $model->getSuratMasukAll(1, $p_bln, $p_thn)->result();
    $data['posisi'] = $id;
    $data['level'] = $id2;
    $data['bulan'] = $Bulan;
    $data['p_bln'] = $p_bln;
    $data['tahun'] = $tahun;
    $data['p_thn'] = $p_thn;

    if (isset($_POST['excel'])) {
      $this->load->view('export_excel', $data);
    } else {
      if ($this->session->userdata('id_user') != '') {
        $this->template('dashboard3', $data);
      } else {
        redirect('../','refresh');
      }
    }
  }
  
}

/* End of file Controllername.php */
