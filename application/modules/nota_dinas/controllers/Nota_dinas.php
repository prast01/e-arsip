<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Nota_dinas extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
		$this->load->model("M_notaDinas");
		$this->load->model("M_default");
		$this->load->library('form_validation');
    }
    
    public function index()
    {
        $model2 = $this->M_default;
        $id = $this->session->userdata('posisi');

		$data['nota_dinas'] = $model2->getDataNotaDinas($id)->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('dashboard', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function notaValid()
    {
        $model2 = $this->M_default;

		$data['nota_dinas'] = $model2->getDataNotaDinasValid()->result();
        if ($this->session->userdata('id_user') != '') {
            $this->template('dashboard2', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function tambah()
    {
        $model2 = $this->M_default;

        $data['dpa'] = $model2->getDPA();
        $data['rek'] = $model2->getRek();
        if ($this->session->userdata('id_user') != '') {
            $this->template('tambah-old', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function tambah2()
    {
		$Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
        $model2 = $this->M_default;

        $data['dpa'] = $model2->getDPA();
        $data['rek'] = $model2->getRek();
        $data['bulan'] = $Bulan;
        if ($this->session->userdata('id_user') != '') {
            $this->template('tambah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function add()
    {
        $model = $this->M_notaDinas;

        $hasil = json_decode($model->save(), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

        
		redirect('../nota_dinas','location');
    }
    public function add2()
    {
        $model = $this->M_notaDinas;

        $hasil = json_decode($model->save2(), true);
        if($hasil['res']){
            $model2 = $this->M_default;
            $model2->_push();
            $this->session->set_flashdata('success', $hasil['msg']);
        } else {
            $this->session->set_flashdata('gagal', $hasil['msg']);
        }
        redirect('../nota_dinas','location');
    }

    public function hapus($id)
    {
        $model = $this->M_notaDinas;
        
        $hasil = json_decode($model->delete($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../nota_dinas','location');
    }
    
    public function hapus2($id)
    {
        $model = $this->M_notaDinas;
        
        $hasil = json_decode($model->delete2($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../nota_dinas','location');
    }

    public function ubah($id)
    {
        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $hasil = $model->getNotaDinasId($id)->row();

        $data['nota_dinas'] = $hasil;

        if ($this->session->userdata('id_user') != '') {
            $this->template('ubah-old', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function edit($id)
    {
        $model = $this->M_notaDinas;
        
        $hasil = json_decode($model->edit($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../nota_dinas','location');
    }
    
    public function ubah2($id)
    {
		$Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");

        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $data['nota_dinas'] = $model->getNotaDinasId($id)->row();
        $data['detail'] = $model->getNotaDetail($data['nota_dinas']->nomor_dinas)->result();
        $data['dpa'] = $model2->getDPA();
        $data['rek'] = $model2->getRek();
        $data['bulan'] = $Bulan;

        if ($this->session->userdata('id_user') != '') {
            $this->template('ubah', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function edit2($id)
    {
        $model = $this->M_notaDinas;
        
        $hasil = json_decode($model->edit2($id), true);
        
		if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
		}

		redirect('../nota_dinas','location');
    }
	
    public function printout($id)
    {
        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $data['nota_dinas'] = $model->getNotaDinasId($id)->row();
        if ($this->session->userdata('id_user') != '') {
            // $this->template('print', $data);
            $this->load->view('cetak_notadinas-old', $data);
        } else {
            redirect('../','refresh');
        }
    }
    
    public function printout2($id)
    {
        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $data['nota_dinas'] = $model->getNotaDinasId($id)->row();
        $data['dpa'] = $model->getDpaBy($data['nota_dinas']->id_dpa);
        $data['detail'] = $model->getNotaDetail($data['nota_dinas']->nomor_dinas)->result();
        $data['ttd'] = $_POST['ttd'];
        if ($this->session->userdata('id_user') != '') {
            // $this->template('print', $data);
            $this->load->view('cetak_notadinas', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function getRekening()
    {
        $model = $this->M_notaDinas;

        $data = $model->getRekening();
        echo $data;
    }

    
    public function preview2($id)
    {
		$Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");

        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $data['nota_dinas'] = $model->getNotaDinasId($id)->row();
        $data['detail'] = $model->getNotaDetail($data['nota_dinas']->nomor_dinas)->result();
        $data['dpa'] = $model2->getDPA();
        $data['rek'] = $model2->getRek();
        $data['bulan'] = $Bulan;

        if ($this->session->userdata('id_user') != '') {
            $this->template('pre', $data);
        } else {
            redirect('../','refresh');
        }
    }

    public function preview3($id)
    {
		$Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");

        $model = $this->M_notaDinas;
        $model2 = $this->M_default;

        $data['nota_dinas'] = $model->getNotaDinasId($id)->row();
        $data['detail'] = $model->getNotaDetail($data['nota_dinas']->nomor_dinas)->result();
        $data['dpa'] = $model2->getDPA();
        $data['rek'] = $model2->getRek();
        $data['bulan'] = $Bulan;

        if ($this->session->userdata('id_user') != '') {
            $this->template('pre2', $data);
        } else {
            redirect('../','refresh');
        }
    }
}

/* End of file Controllername.php */
