<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_surat extends CI_Model {
    public $id_jenis_surat;
    public $kode_surat;
    public $jenis_surat;

    public function save()
    {
        $post = $this->input->post();
        $this->id_jenis_surat = '';
        $this->kode_surat = $post['kode_surat'];
        $this->jenis_surat = $post['jenis_surat'];

        $cek = $this->db->get_where("tb_jenis_surat", ["kode_surat"=>$this->kode_surat])->num_rows();
        if ($cek == 0) {
            $hasil = $this->db->insert('tb_jenis_surat', $this);
            if ($hasil) {
                $msg = array("res"=>1, "msg"=>"Surat berhasil Disimpan.");
            } else {
                $msg = array("res"=>0, "msg"=>"Surat gagal Disimpan.");
            }
            
        } else {
            $msg = array("res"=>0, "msg"=>"Surat gagal Disimpan. Kode Surat Sudah Ada.");
        }
        
        return json_encode($msg);
    }
    
    public function delete($id)
    {
        $where = array(
            'id_jenis_surat' => $id
        );
        $cek = $this->db->delete('tb_jenis_surat', $where);
        
        if ($cek) {
            $msg = array("res"=> 1, "msg"=> 'Jenis Surat berhasil dihapus');
        } else {
            $msg = array("res"=> 0, "msg"=> 'Jenis Surat gagal dihapus');
        }
        
        return json_encode($msg);
    }

    public function getSuratId($id)
    {
        $data = $this->db->get_where('tb_jenis_surat', ['id_jenis_surat'=>$id]);

        return $data;
    }
    
    public function edit($id)
    {
        $where = array(
            'id_jenis_surat' => $id
        );
        
        $post = $this->input->post();
        $data = array(
            "kode_surat" => $post['kode_surat'],
            "jenis_surat" => $post['jenis_surat']
        );

        $this->db->where($where);
        $cek = $this->db->update('tb_jenis_surat', $data);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"Jenis Surat Berhasil Dirubah");
        } else {
            $msg = array("res"=> 0, "msg"=>"Jenis Surat Gagal Dirubah");
        }

        return json_encode($msg);
    }
}

/* End of file ModelName.php */
