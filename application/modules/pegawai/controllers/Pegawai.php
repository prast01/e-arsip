<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
		$this->load->model("M_pegawai");
		$this->load->model("M_default");
    }
    
    public function index()
    {
        $model2 = $this->M_default;

		$data['pegawai'] = $model2->getDataPegawai()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('dashboard', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function gantiPassword()
    {
        if ($this->session->userdata('id_user') != '') {
            $this->template('password');
        } else {
            redirect('../','refresh');
        }
    }

    public function changePass()
    {
        $model = $this->M_pegawai;
        $id_user = $this->session->userdata('id_user');
        $hasil = json_decode($model->changePass($id_user), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../pegawai/gantiPassword','location');
    }

    public function tambah()
    {
        $model2 = $this->M_default;

		$data['pangkat'] = $model2->getDataPangkat()->result();
		$data['level'] = $model2->getDataLevel()->result();
		$data['posisi'] = $model2->getDataPosisi()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('tambah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function add()
    {
        $model = $this->M_pegawai;

        $hasil = json_decode($model->save(), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../pegawai','location');
    }

    public function hapus($id)
    {
        $model = $this->M_pegawai;
        
        $hasil = json_decode($model->delete($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../pegawai','location');
    }

    public function ubah($id)
    {
        $model = $this->M_pegawai;
        $model2 = $this->M_default;

        $hasil = $model->getPegawaiId($id)->row();

		$data['pangkat'] = $model2->getDataPangkat()->result();
		$data['level'] = $model2->getDataLevel()->result();
		$data['posisi'] = $model2->getDataPosisi()->result();
        $data['pegawai'] = $hasil;

        if ($this->session->userdata('id_user') != '') {
            $this->template('ubah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function edit($id)
    {
        $model = $this->M_pegawai;
        
        $hasil = json_decode($model->edit($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../pegawai','location');
    }
}

/* End of file Controllername.php */
