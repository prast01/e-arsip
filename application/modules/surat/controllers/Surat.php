<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
		$this->load->model("M_surat");
		$this->load->model("M_default");
    }
    
    public function index()
    {
        $model2 = $this->M_default;

        $data['surat'] = $model2->getDataSurat()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('dashboard', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function tambah()
    {
        if ($this->session->userdata('id_user') != '') {
            $this->template('tambah');
        } else {
            redirect('../','refresh');
        }
    }

    public function add()
    {
        $model = $this->M_surat;

        $hasil = json_decode($model->save(), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../surat','location');
    }
    
    public function hapus($id)
    {
        $model = $this->M_surat;
        
        $hasil = json_decode($model->delete($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../surat','location');
    }

    public function ubah($id)
    {
        $model = $this->M_surat;
        $hasil = $model->getSuratId($id)->row();

        $data['surat'] = $hasil;

        if ($this->session->userdata('id_user') != '') {
            $this->template('ubah', $data);
        } else {
            redirect('../','refresh');
        }
    }
    
    public function edit($id)
    {
        $model = $this->M_surat;
        
        $hasil = json_decode($model->edit($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../surat','location');
    }
}

/* End of file Controllername.php */
