<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
		$this->load->model("M_user");
		$this->load->model("M_default");
    }
    
    public function index()
    {
        $model2 = $this->M_default;

		$data['user'] = $model2->getDataUser()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('dashboard', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function gantiPassword($id_user)
    {
        $data['id'] = $id_user;
        if ($this->session->userdata('id_user') != '') {
            $this->template('password', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function changePass($id_user)
    {
        $model = $this->M_user;
        $hasil = json_decode($model->changePass($id_user), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../user','location');
    }

    public function tambah()
    {
        $model2 = $this->M_default;

		$data['level'] = $model2->getDataLevel()->result();
		$data['posisi'] = $model2->getDataPosisi()->result();
		$data['pegawai'] = $model2->getDataPegawai()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('tambah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function add()
    {
        $model = $this->M_user;

        $hasil = json_decode($model->save(), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../user','location');
    }

    public function hapus($id)
    {
        $model = $this->M_user;
        
        $hasil = json_decode($model->delete($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../user','location');
    }

    public function ubah($id)
    {
        $model = $this->M_user;
        $model2 = $this->M_default;

        $hasil = $model->getUserId($id)->row();

		$data['level'] = $model2->getDataLevel()->result();
		$data['posisi'] = $model2->getDataPosisi()->result();
		$data['pegawai'] = $model2->getDataPegawai()->result();
        $data['user'] = $hasil;

        if ($this->session->userdata('id_user') != '') {
            $this->template('ubah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function edit($id)
    {
        $model = $this->M_user;
        
        $hasil = json_decode($model->edit($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../user','location');
    }
}

/* End of file Controllername.php */
