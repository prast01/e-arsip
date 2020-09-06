<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notif extends MY_Controller {

    public function __construct()
    {
      parent::__construct();
      $this->load->model('M_default');
    }

    public function index()
    {
        $model = $this->M_default;
        $data = $model->getNotif();
        echo $data;
    }

    public function notif_2()
    {
      $model = $this->M_default;
      $id = $this->session->userdata('posisi');
      $data = $model->getNotif2($id);
      echo $data;
    }

    public function notif_3()
    {
      $model = $this->M_default;
      $data = $model->getNotif3();
      echo $data;
    }

}

/* End of file Controllername.php */
