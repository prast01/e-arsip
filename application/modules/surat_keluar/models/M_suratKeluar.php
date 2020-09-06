<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_suratKeluar extends CI_Model {

    public function save()
    {
        $post = $this->input->post();
        $data = array (
            'tgl_surat' => $post['tgl_surat'],
            'id_jenis_surat' => $post['id_jenis_surat'],
            'perihal_surat' => $post['perihal_surat'],
            'sifat_surat' => strtoupper($post['sifat_surat']),
            'lampiran_surat' => $post['lampiran_surat'],
            'created_at' => $post['created_at'],
            'created_by' => $this->session->userdata('posisi')
        );
        
        $cek = $this->db->insert('tb_surat_keluar', $data);

        if ($cek) {
            $msg = array('res'=>1, 'msg' => 'Surat Keluar Berhasil diarsipkan.');
        } else {
            $msg = array('res'=>0, 'msg' => 'Surat Keluar Gagal diarsipkan.');
        }
        
        return json_encode($msg);
    }

    private function _uploadFile($lokasi, $name)
    {
        $config['upload_path'] = './dist/upload/'.$lokasi.'/';
        $config['file_name'] = $name.'-'.date("Ymd His");
        $config['allowed_types'] = 'pdf';
        $config['max_size']  = '2048';
        
        $this->load->library('upload', $config);
        
        if ( ! $this->upload->do_upload('file')){
            $msg = array("res"=>0, "msg" => $this->upload->display_errors());
        }else{
            $msg = array("res"=>1, "name_file"=>$this->upload->data('file_name'));
        }
        
        return json_encode($msg);
    }

    private function _deleteFile($lokasi, $name)
    {
        return unlink("./dist/upload/".$lokasi."/".$name);
    }

    public function getSurat($id)
    {
        $data = $this->db->get_where('tb_surat_keluar', ['id_surat_keluar'=>$id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            "id_surat_keluar" => $id
        );
        $post = $this->input->post();
        $data = array (
            'tgl_surat' => $post['tgl_surat'],
            'id_jenis_surat' => $post['id_jenis_surat'],
            'perihal_surat' => $post['perihal_surat'],
            'sifat_surat' => strtoupper($post['sifat_surat']),
            'lampiran_surat' => $post['lampiran_surat']
        );

        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratMasuk', 'surat-masuk'), true);
            if ($hasil['res']) {
                $this->_deleteFile('suratMasuk', $post['old_file']);
                $nama_file = $hasil['name_file'];
                $data2 = array(
                    'file_surat'=>$nama_file
                );
                $data3 = array_merge($data, $data2);

                $cek = $this->db->update('tb_surat_masuk', $data3, $where);
                if ($cek) {
                    $msg = array('res'=>1, 'msg' => 'Surat Masuk Berhasil diubah.');
                } else {
                    $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diubah.');
                }
            } else {
                $msg = array('res'=>0, 'msg' => $hasil['msg']);
            }
            
        } else {
            $cek = $this->db->update('tb_surat_keluar', $data, $where);

            if ($cek) {
                $msg = array('res'=>1, 'msg' => 'Surat Keluar Berhasil diubah.');
            } else {
                $msg = array('res'=>0, 'msg' => 'Surat Keluar Gagal diubah.');
            }
        }
        
        return json_encode($msg);
    }

    public function delete($id)
    {
        $where = array(
            "id_surat_keluar" => $id
        );

        $h = $this->db->get_where('tb_surat_keluar', $where)->row();
        $nama = $h->file_surat;

        $cek = $this->db->delete('tb_surat_keluar', $where);

        if ($cek) {
            if($nama != ''){
                $this->_deleteFile('suratKeluar', $nama);
            }
            $msg = array('res'=>1, 'msg'=>'Berkas Berhasil Dihapus');
        } else {
            $msg = array('res'=>0, 'msg'=>'Berkas Gagal Dihapus');
        }
        
        return json_encode($msg);
    }

    public function valid($id)
    {
        $where = array(
            "id_surat_keluar" => $id
        );
        $a = $this->db->get_where('tb_surat_keluar', $where)->row();
        $id_jenis_surat = $a->id_jenis_surat;

        $h = $this->db->query("SELECT MAX(nomor_surat) as maks FROM tb_surat_keluar")->row();
        $nomor = $h->maks + 1;

        $data = array(
            'validasi' => '1',
            'nomor_surat' => $nomor
        );

        $cek = $this->db->update('tb_surat_keluar', $data, $where);

        if ($cek) {
            $msg = array('res'=>1, 'msg'=>'Berkas Berhasil Divalidasi');
        } else {
            $msg = array('res'=>0, 'msg'=>'Berkas Gagal Divalidasi');
        }
        
        return json_encode($msg);
    }

    public function upload($id)
    {
        $where = array(
            'id_surat_keluar' => $id
        );
        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratKeluar', 'surat-keluar'), true);
            if ($hasil['res']) {
                $nama_file = $hasil['name_file'];
    
                $data = array (
                    'file_surat' => $nama_file
                );
                
                $cek = $this->db->update('tb_surat_keluar', $data, $where);
    
                if ($cek) {
                    $msg = array('res'=>1, 'msg' => 'Surat Keluar Berhasil diarsipkan.');
                } else {
                    $msg = array('res'=>0, 'msg' => 'Surat Keluar Gagal diarsipkan.');
                }
            } else {
                $msg = array('res'=>0, 'msg' => $hasil['msg']);
            }
                      
        } else {
            $msg = array('res'=>0, 'msg' => 'Berkas Belum dipilih.');
        }
        
        return json_encode($msg);
    }
}

/* End of file ModelName.php */
