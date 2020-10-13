<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Surat_keluar extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model("M_default");
    $this->load->model("M_suratKeluar");
  }

  public function index()
  {
    $model = $this->M_default;
    $id = $this->session->userdata('posisi');
    $data['surat'] = $model->getSuratKeluarAll($id)->result();
    if ($this->session->userdata('id_user') != '') {
      // $this->template('dashboard', $data);
      $this->template('maintenance', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function request()
  {
    $model = $this->M_default;

    $data['jenis_surat'] = $model->getDataSurat()->result();
    if ($this->session->userdata('id_user') != '') {
      $this->template('tambah', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function add()
  {
    $model = $this->M_suratKeluar;

    $hasil = json_decode($model->save(), true);

    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }


    redirect('../surat_keluar', 'location');
  }

  public function ubah($id)
  {
    $model = $this->M_suratKeluar;
    $model2 = $this->M_default;

    $data['jenis_surat'] = $model2->getDataSurat()->result();
    $data['surat'] = $model->getSurat($id)->row();
    if ($this->session->userdata('id_user') != '') {
      $this->template('ubah', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function edit($id)
  {
    $model = $this->M_suratKeluar;

    $hasil = json_decode($model->edit($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_keluar', 'location');
  }

  public function hapus($id)
  {
    $model = $this->M_suratKeluar;

    $hasil = json_decode($model->delete($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_keluar', 'location');
  }

  public function validasi($id)
  {
    $model = $this->M_suratKeluar;

    $hasil = json_decode($model->valid($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_keluar', 'location');
  }

  public function modal()
  {
    $model = $this->M_suratKeluar;
    $id = $_POST['id_surat_keluar'];
    $data['surat'] = $model->getSurat($id)->row();
    if ($this->session->userdata('id_user') != '') {
      $this->load->view('modal', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function upload($id)
  {
    $model = $this->M_suratKeluar;

    $hasil = json_decode($model->upload($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_keluar', 'location');
  }

  public function listSurat()
  {
    $model = $this->M_default;

    $id = $this->session->userdata('posisi');
    $data['surat'] = $model->getSuratKeluarAll($id)->result();

    $this->load->view('listSurat', $data);
    // echo json_encode($data);

  }
}

/* End of file Controllername.php */
