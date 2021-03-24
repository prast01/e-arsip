<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Surat_tugas extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model("M_default");
    $this->load->model("M_suratTugas");
  }

  public function index()
  {
    $model = $this->M_default;
    $model2 = $this->M_suratTugas;

    $id = $this->session->userdata('posisi');
    if (isset($_POST['cari'])) {
      $tgl = explode('-', $_POST['tgl_kegiatan']);
    }
    $data['jenis'] = (isset($_POST['cari'])) ? $_POST['dalam_luar'] : 'all';
    $data['tgl1'] = (isset($_POST['cari'])) ? date('m/d/Y', strtotime($tgl[0])) : date('m/d/Y');
    $data['tgl2'] = (isset($_POST['cari'])) ? date('m/d/Y', strtotime($tgl[1])) : date('m/d/Y');
    $data['valid'] = (isset($_POST['cari'])) ? $_POST['valid'] : 'all';
    if (isset($_POST['cari'])) {
      $data['surat'] = $model->getSuratTugasBy($id)->result();
    } elseif (isset($_POST['excel'])) {
      $data['surat'] = $model->getSuratTugasBy($id)->result();
    } else {
      $data['surat'] = $model->getSuratTugasAll($id)->result();
    }

    if (isset($_POST['excel'])) {
      $this->load->view('export_excel', $data);
    } else {
      if ($this->session->userdata('id_user') != '') {
        $this->template('dashboard', $data);
      } else {
        redirect('../', 'refresh');
      }
    }
  }

  public function semua()
  {
    $model = $this->M_default;
    $model2 = $this->M_suratTugas;

    $id = $this->session->userdata('posisi');
    if (isset($_POST['cari'])) {
      $tgl = explode('-', $_POST['tgl_kegiatan']);
    }
    $data['jenis'] = (isset($_POST['cari'])) ? $_POST['dalam_luar'] : 'all';
    $data['tgl1'] = (isset($_POST['cari'])) ? date('m/d/Y', strtotime($tgl[0])) : date('m/d/Y');
    $data['tgl2'] = (isset($_POST['cari'])) ? date('m/d/Y', strtotime($tgl[1])) : date('m/d/Y');
    // $data['valid'] = (isset($_POST['cari'])) ? $_POST['valid'] : 'all' ;
    if (isset($_POST['cari'])) {
      $data['surat'] = $model->getSuratTugasBy2($id)->result();
    } elseif (isset($_POST['excel'])) {
      $data['surat'] = $model->getSuratTugasBy2($id)->result();
    } else {
      $data['surat'] = $model->getSuratTugasAll2($id)->result();
    }

    if (isset($_POST['excel'])) {
      $this->load->view('export_excel', $data);
    } else {
      if ($this->session->userdata('id_user') != '') {
        $this->template('dashboard2', $data);
      } else {
        redirect('../', 'refresh');
      }
    }
  }

  public function request()
  {
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id = $this->session->userdata('posisi');
    $data['pegawai'] = $model2->getDataPegawai()->result();
    $data['rok'] = $model->getROK($id);
    // if ($id == '6') {
    //   $data['dasar'] = $model->getDasar($id, 1);
    // } else {
    $data['dasar'] = $model->getDasar($id, 0);
    // }

    if ($this->session->userdata('id_user') != '') {
      $this->template('tambah', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function add()
  {
    $model = $this->M_suratTugas;

    if ($_POST['sppd'] == '1') {
      if ($_POST['dasar_surat'] != '') {
        $hasil = json_decode($model->save(), true);
        if ($hasil['res']) {
          $model2 = $this->M_default;
          $model2->_push();
          $this->session->set_flashdata('success', $hasil['msg']);
        } else {
          $this->session->set_flashdata('gagal', $hasil['msg']);
        }

        redirect('../surat_tugas', 'location');
      } else {
        $this->session->set_flashdata('gagal', 'Dasar Surat Tidak Boleh Kosong.');
        redirect('../surat_tugas/request', 'location');
      }
    } else {
      $hasil = json_decode($model->save(), true);
      if ($hasil['res']) {
        $model2 = $this->M_default;
        $model2->_push();
        $this->session->set_flashdata('success', $hasil['msg']);
      } else {
        $this->session->set_flashdata('gagal', $hasil['msg']);
      }

      redirect('../surat_tugas', 'location');
    }
  }

  public function ubah($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id2 = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['rok'] = $model->getROK($id2);
    if ($id2 == '6') {
      $data['dasar'] = $model->getDasar($id2, 1);
    } else {
      $data['dasar'] = $model->getDasar($id2, 0);
    }
    if ($this->session->userdata('id_user') != '') {
      $this->template('ubah', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function preview($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id2 = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['rok'] = $model->getROK($id2);
    $data['dpa'] = $model->getDPA();
    if ($id2 == '6') {
      $data['dasar'] = $model->getDasar($id2, 1);
    } else {
      $data['dasar'] = $model->getDasar($id2, 0);
    }
    if ($this->session->userdata('id_user') != '') {
      $this->template('pre', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function cetak($id)
  {
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;
    if ($this->session->userdata('id_user') != '') {
      // $this->template('pre', $data);
      $hasil = json_decode($model->cetakId($id), true);
      if ($hasil['res']) {
        redirect('../surat_tugas/printout/' . $id, 'refresh');
      } else {
        redirect('../surat_tugas/preview/' . $id, 'refresh');
      }
    } else {
      redirect('../', 'refresh');
    }
  }

  public function preview2($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id2 = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['rok'] = $model->getROK($id2);
    $data['dpa'] = $model->getDPA();
    if ($id2 == '6') {
      $data['dasar'] = $model->getDasar($id2, 1);
    } else {
      $data['dasar'] = $model->getDasar($id2, 0);
    }
    if ($this->session->userdata('id_user') != '') {
      $this->template('pre2', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function preview3($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id2 = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['rok'] = $model->getROK($id2);
    $data['dpa'] = $model->getDPA();
    if ($id2 == '6') {
      $data['dasar'] = $model->getDasar($id2, 1);
    } else {
      $data['dasar'] = $model->getDasar($id2, 0);
    }
    if ($this->session->userdata('id_user') != '') {
      $this->template('pre3', $data);
    } else {
      redirect('../', 'refresh');
    }
  }
  public function printout($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['qrcode'] = $model->createQR($id);
    if ($this->session->userdata('id_user') != '') {
      // $this->template('print', $data);
      $this->load->view('cetak_surtug', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function printoutx($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['qrcode'] = $model->createQR($id);
    // if ($this->session->userdata('id_user') != '') {
    //   // $this->template('print', $data);
    //   $this->load->view('cetak_surtug', $data);
    // } else {
    //   redirect('../','refresh');
    // }

    print_r($data['qrcode']);
  }

  public function printout2($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai2($data['surat']->nomor_surat);
    $data['mata'] = "10201.40523.060." . $_POST['rekening'];
    $data['tgl'] = $_POST['tgl_surat'];

    if ($this->session->userdata('id_user') != '') {
      // $this->template('print', $data);
      $this->load->view('cetak_sppd', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function printout3($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai2($data['surat']->nomor_surat);
    if ($this->session->userdata('id_user') != '') {
      // $this->template('print', $data);
      $this->load->view('cetak_sppd2', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function edit($id)
  {
    $model = $this->M_suratTugas;

    if ($_POST['sppd'] == '1') {
      if ($_POST['dasar_surat'] != '') {
        $hasil = json_decode($model->edit($id), true);
        if ($hasil['res']) {
          $model2 = $this->M_default;
          $model2->_push();
          $this->session->set_flashdata('success', $hasil['msg']);
        } else {
          $this->session->set_flashdata('gagal', $hasil['msg']);
        }

        redirect('../surat_tugas', 'location');
      } else {
        $this->session->set_flashdata('gagal', 'Dasar Surat Tidak Boleh Kosong.');
        redirect('../surat_tugas/request', 'location');
      }
    } else {
      $hasil = json_decode($model->edit($id), true);
      if ($hasil['res']) {
        $model2 = $this->M_default;
        $model2->_push();
        $this->session->set_flashdata('success', $hasil['msg']);
      } else {
        $this->session->set_flashdata('gagal', $hasil['msg']);
      }

      redirect('../surat_tugas', 'location');
    }
  }

  public function hapus($id)
  {
    $model = $this->M_suratTugas;

    $hasil = json_decode($model->delete($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_tugas', 'location');
  }

  public function preValid($id)
  {
    error_reporting(E_ALL ^ E_NOTICE);
    $model = $this->M_suratTugas;
    $model2 = $this->M_default;

    $id2 = $this->session->userdata('posisi');
    $data['surat'] = $model->getSurat($id)->row();
    $data['speg'] = $model->getPegawai($data['surat']->nomor_surat);
    $data['rok'] = $model->getROK($id2);
    $data['dpa'] = $model->getDPA();
    if ($id2 == '6') {
      $data['dasar'] = $model->getDasar($id2, 1);
    } else {
      $data['dasar'] = $model->getDasar($id2, 0);
    }
    if ($this->session->userdata('id_user') != '') {
      $this->template('pre4', $data);
    } else {
      redirect('../', 'refresh');
    }
  }
  public function validasi($id)
  {
    $model = $this->M_suratTugas;

    $hasil = json_decode($model->valid($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_tugas', 'location');
  }

  public function modal()
  {
    $model = $this->M_suratTugas;
    $id = $_POST['id_surat_tugas'];
    $data['surat'] = $model->getSurat($id)->row();
    if ($this->session->userdata('id_user') != '') {
      $this->load->view('modal', $data);
    } else {
      redirect('../', 'refresh');
    }
  }

  public function upload($id)
  {
    $model = $this->M_suratTugas;

    $hasil = json_decode($model->upload($id), true);
    if ($hasil['res']) {
      $model2 = $this->M_default;
      $model2->_push();
      $this->session->set_flashdata('success', $hasil['msg']);
    } else {
      $this->session->set_flashdata('gagal', $hasil['msg']);
    }

    redirect('../surat_tugas', 'location');
  }

  public function listSurat()
  {
    $model = $this->M_default;

    $id = $this->session->userdata('posisi');
    $data['surat'] = $model->getSuratTugasAll($id)->result();

    $this->load->view('listSurat', $data);
    // echo json_encode($data);

  }

  public function dasar()
  {
    $model = $this->M_suratTugas;
    $id = $this->session->userdata('posisi');
    $data['rok'] = $model->getROK($id);
    $data['dasar'] = $model->getDasar($id);
    // $data['nota'] = $model->getNota($id);

    $this->load->view('dasar', $data);
  }
}

/* End of file Controllername.php */
