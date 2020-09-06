<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pegawai extends CI_Model {
    public $id_pegawai;
    public $nama_pegawai;
    public $nip_pegawai;
    public $pangkat_pegawai;
    public $posisi_user;
    public $level_user;

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
        $this->id_pegawai = '';
        $this->nama_pegawai = $post['nama_pegawai'];
        $this->nip_pegawai = $post['nip_pegawai'];
        $this->pangkat_pegawai = $post['pangkat_pegawai'];
        $this->posisi_user = $post['posisi_user'];
        $this->level_user = $post['level_user'];

        $cek = $this->db->insert('tb_pegawai', $this);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"Pegawai Berhasil Ditambah");
        } else {
            $msg = array("res"=> 0, "msg"=>"Pegawai Gagal Ditambah");
        }

        return json_encode($msg);
    }

    public function delete($id)
    {
        $where = array(
            'id_pegawai' => $id
        );
        $cek = $this->db->delete('tb_pegawai', $where);
        
        if ($cek) {
            $msg = array("res"=> 1, "msg"=> 'Pegawai berhasil dihapus');
        } else {
            $msg = array("res"=> 0, "msg"=> 'Pegawai gagal dihapus');
        }
        
        return json_encode($msg);
    }

    public function getPegawaiId($id)
    {
        $data = $this->db->get_where('tb_pegawai', ['id_pegawai'=>$id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            'id_pegawai' => $id
        );
        
        $post = $this->input->post();
        $data = array(
            "nama_pegawai" => $post['nama_pegawai'],
            "nip_pegawai" => $post['nip_pegawai'],
            "pangkat_pegawai" => $post['pangkat_pegawai'],
            "posisi_user" => $post['posisi_user'],
            "level_user" => $post['level_user']
        );

        $this->db->where($where);
        $cek = $this->db->update('tb_pegawai', $data);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"Pegawai Berhasil Dirubah");
        } else {
            $msg = array("res"=> 0, "msg"=>"Pegawai Gagal Dirubah");
        }

        return json_encode($msg);
    }
}

/* End of file ModelName.php */
