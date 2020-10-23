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
        $this->template("dashboard");
    }

    public function tambah()
    {
        $this->template("tambah");
    }
}

/* End of file Pinjam.php */
