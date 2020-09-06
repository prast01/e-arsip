<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Arsip extends MY_Controller {
  
  public function __construct()
  {
    parent::__construct();
    $this->load->model('M_default');
  }
  

  public function index()
  {
    $model = $this->M_default;
    $id = $this->session->userdata('posisi');
    $data = json_decode($model->getJumlahSurat($id), true);
    $data['posisi'] = $this->session->userdata('posisi');
    $data['level'] = $this->session->userdata('level');
    
    if ($this->session->userdata('id_user') != '') {
      $this->template('dashboard', $data);
    } else {
      redirect('../','refresh');
    }
  }

  public function jumlahSurat()
  {
    $model = $this->M_default;
    $id = $this->session->userdata('posisi');
    $data = $model->getJumlahSurat($id);
    echo $data;
  }

}

/* End of file Controllername.php */
