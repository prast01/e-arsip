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

        $p_bln = (isset($_POST['bulan'])) ? $_POST['bulan'] : date('m');
        $p_thn = (isset($_POST['tahun'])) ? $_POST['tahun'] : date('Y');
        $Bulan = array(
            "all" => "Semua Bulan",
            "1" => "Januari",
            "2" => "Februari",
            "3" => "Maret",
            "4" => "April",
            "5" => "Mei",
            "6" => "Juni",
            "7" => "Juli",
            "8" => "Agustus",
            "9" => "September",
            "10" => "Oktober",
            "11" => "November",
            "12" => "Desember"
        );

        $tahun = array("2018", "2019", "2020", "2021");

        if ($this->session->userdata("id_user") != "") {
            $data['daftar'] = $model->get_data($p_bln, $p_thn);
            $data['bulan'] = $Bulan;
            $data['p_bln'] = $p_bln;
            $data['tahun'] = $tahun;
            $data['p_thn'] = $p_thn;
            if (isset($_POST['export'])) {
                $data['jenis'] = 1;
                $this->load->view('export_excel', $data);
            } else {
                $this->template("dashboard", $data);
            }
        } else {
            redirect('../', 'refresh');
        }
    }

    public function kembali()
    {
        $model = $this->M_pinjam;

        $p_bln = (isset($_POST['bulan'])) ? $_POST['bulan'] : date('m');
        $p_thn = (isset($_POST['tahun'])) ? $_POST['tahun'] : date('Y');
        $Bulan = array(
            "all" => "Semua Bulan",
            "1" => "Januari",
            "2" => "Februari",
            "3" => "Maret",
            "4" => "April",
            "5" => "Mei",
            "6" => "Juni",
            "7" => "Juli",
            "8" => "Agustus",
            "9" => "September",
            "10" => "Oktober",
            "11" => "November",
            "12" => "Desember"
        );

        $tahun = array("2018", "2019", "2020", "2021");

        if ($this->session->userdata("id_user") != "") {
            $data['daftar'] = $model->get_data_kembali($p_bln, $p_thn);
            $data['bulan'] = $Bulan;
            $data['p_bln'] = $p_bln;
            $data['tahun'] = $tahun;
            $data['p_thn'] = $p_thn;
            if (isset($_POST['export'])) {
                $data['jenis'] = 2;
                $this->load->view('export_excel', $data);
            } else {
                $this->template("dashboard2", $data);
            }
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

    public function ubah($id)
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $data['berkas'] = $model->get_berkas($id);
            $data['unit_kerja'] = $model->get_unit_kerja();
            $this->template("ubah", $data);
        } else {
            redirect('../', 'refresh');
        }
    }

    public function kembalikan($id)
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $data['berkas'] = $model->get_berkas($id);
            $data['unit_kerja'] = $model->get_unit_kerja();
            $this->template("kembali", $data);
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

    public function edit($id)
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $add = $model->edit($id);
            if ($add['res']) {
                $this->session->set_flashdata("success", $add["msg"]);
                redirect('../pinjam', 'refresh');
            } else {
                $this->session->set_flashdata("gagal", $add["msg"]);
                redirect('../pinjam/ubah/' . $id, 'refresh');
            }
        } else {
            redirect('../', 'refresh');
        }
    }

    public function back($id)
    {
        $model = $this->M_pinjam;
        if ($this->session->userdata("id_user") != "") {
            $add = $model->back($id);
            if ($add['res']) {
                $this->session->set_flashdata("success", $add["msg"]);
                redirect('../pinjam', 'refresh');
            } else {
                $this->session->set_flashdata("gagal", $add["msg"]);
                redirect('../pinjam/kembalikan/' . $id, 'refresh');
            }
        } else {
            redirect('../', 'refresh');
        }
    }
}

/* End of file Pinjam.php */
