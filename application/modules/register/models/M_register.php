<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_register extends CI_Model {
    public $id_user;
    public $username_user;
    public $pass_user;
    public $level_user;
    public $posisi_user;
    public $id_pegawai;

    public function save()
    {
        $post = $this->input->post();
        $this->id_user = '';
        $this->username_user = $post["user"];
        $this->pass_user = hash('sha256', $post['password']);
        $this->level_user = $post["level_user"];
        $this->posisi_user = $post["posisi_user"];
        $this->id_pegawai = $post["id_pegawai"];

        if ($post["password"] == $post["password_2"]) {
            if ($this->db->get_where('tb_user', ['username_user' => $this->username_user])->row() != null) {
                $msg = array("res"=> 0, "msg"=> 'User Sudah Terdaftar');
            } else {
                if($this->db->insert('tb_user', $this)){
                    $msg = array("res"=> 1, "msg"=> 'Terima kasih sudah mendaftar');
                } else {
                    $msg = array("res"=> 0, "msg"=> 'Pendaftaran Gagal');
                }
            }
        } else {
            $msg = array("res"=> 0, "msg"=> 'Password tidak sama');
        }

        return json_encode($msg);
    }

    // public function getDataLevel()
    // {
    //     return $this->db->get('tb_level_user');
    // }
    // public function getDataPosisi()
    // {
    //     return $this->db->get('tb_posisi');
    // }
    // public function getDataPegawai()
    // {
    //     return $this->db->get('tb_pegawai');
    // }
}

/* End of file ModelName.php */


?>