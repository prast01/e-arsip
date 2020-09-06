<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {
    public $id_user;
    public $username_user;
    public $pass_user;
    public $level_user;
    public $posisi_user;
    public $id_pegawai;

    public function changePass($id_user)
    {
        $post = $this->input->post();
        $pass_b = $post['pass_b'];
        $pass_b2 = $post['pass_b2'];

        $where = array(
            'id_user' => $id_user
        );

        $data = array(
            'pass_user' => hash('sha256', $pass_b)
        );

        if ($pass_b == $pass_b2) {
            $this->db->where($where);
            $cek = $this->db->update('tb_user', $data);
            if ($cek) {
                $msg = array("res"=> 1, "msg"=>"Berhasil Merubah Password");
            } else {
                $msg = array("res"=> 0, "msg"=>"Gagal Merubah Password");
            }
            
        } else {
            $msg = array("res"=> 0, "msg"=>"Ulangi Input Password, Password Tidak sama.");
        }
        
        return json_encode($msg);
    }

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

    public function delete($id)
    {
        $where = array(
            'id_user' => $id
        );
        $cek = $this->db->delete('tb_user', $where);
        
        if ($cek) {
            $msg = array("res"=> 1, "msg"=> 'User berhasil dihapus');
        } else {
            $msg = array("res"=> 0, "msg"=> 'User gagal dihapus');
        }
        
        return json_encode($msg);
    }

    public function getUserId($id)
    {
        $data = $this->db->get_where('tb_user', ['id_user'=>$id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            'id_user' => $id
        );
        
        $post = $this->input->post();
        $data = array(
            "username_user" => $post['user'],
            "id_pegawai" => $post['id_pegawai'],
            "posisi_user" => $post['posisi_user'],
            "level_user" => $post['level_user']
        );

        $this->db->where($where);
        $cek = $this->db->update('tb_user', $data);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"User Berhasil Dirubah");
        } else {
            $msg = array("res"=> 0, "msg"=>"User Gagal Dirubah");
        }

        return json_encode($msg);
    }
}

/* End of file ModelName.php */
