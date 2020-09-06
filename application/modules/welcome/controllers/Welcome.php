<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    public function __construct()
    {
        parent::__construct();
		$this->load->model("M_welcome");
	}

	public function index()
	{
		$this->load->view('welcome_message');
		if ($this->session->userdata('id_user') != '') {
			redirect('../arsip','refresh');
		}
	}

	public function login()
	{
		$login = $this->M_welcome;

		$hasil = json_decode($login->cek_login(), true);

		if($hasil['res']){
			$this->session->set_userdata('id_user', $hasil['data']['id_user']);
			$this->session->set_userdata('level', $hasil['data']['level_user']);
			$this->session->set_userdata('posisi', $hasil['data']['posisi_user']);

			$pegawai = json_decode($login->getPegawai($hasil['data']['id_pegawai']), true);
			$level = json_decode($login->getLevel($hasil['data']['level_user']), true);
			$posisi = json_decode($login->getPosisi($hasil['data']['posisi_user']), true);

			// $jabatan = $level['data']['user_level']." ".$posisi['data']['posisi'];
			$jabatan = $posisi['data']['posisi'];
			$this->session->set_userdata('nama_user', $pegawai['data']['nama_pegawai']);
			$this->session->set_userdata('jabatan', $jabatan);
			redirect('../arsip','refresh');
		} else {
			$this->session->set_flashdata('gagal', $hasil['msg']);
			redirect('../','refresh');
		}
	}

	public function get_autocomplete(){
        if (isset($_GET['term'])) {
            $result = $this->M_welcome->search($_GET['term']);
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = $row->username_user;
                echo json_encode($arr_result);
            }
        }
    }
}
