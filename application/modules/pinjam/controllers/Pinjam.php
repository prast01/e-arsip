<?php


defined('BASEPATH') or exit('No direct script access allowed');

class Pinjam extends MY_Controller
{


    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->load->model('M_pinjam');
    }


    public function index()
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $data['daftar'] = $model->get_data();
            $this->template("dashboard", $data);
        } else {
            redirect('../', 'refresh');
        }
    }

    public function kembali()
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $data['daftar'] = $model->get_data_kembali();
            $this->template("dashboard2", $data);
        } else {
            redirect('../', 'refresh');
        }
    }

    public function tambah()
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $data['last'] = $model->last_num();
            $data['unit_kerja'] = $model->get_unit_kerja();
            $this->template("tambah", $data);
        } else {
            redirect('../', 'refresh');
        }
    }

    // CRUD
    public function add()
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $add = $model->add();
            if ($add['res']) {
                $this->session->set_flashdata("success", $add["msg"]);
            } else {
                $this->session->set_flashdata("gagal", $add["msg"]);
            }
            redirect('../pinjam', 'refresh');
        } else {
            redirect('../', 'refresh');
        }
    }
}

/* End of file Pinjam.php */
