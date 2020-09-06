<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_suratMasuk extends CI_Model {

    public function save()
    {
        $post = $this->input->post();
        
        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratMasuk', 'surat-masuk'), true);

            if ($hasil['res']){
                $nama_file = $hasil['name_file'];
                $h = $this->db->query("SELECT MAX(nomor_dinas) as nomor FROM tb_surat_masuk")->row();
                // $nomor = $h->nomor + 1;
                $nomor = $post['nomor_dinas'];
    
                $data = array (
                    'tgl_surat' => $post['tgl_surat'],
                    'id_jenis_surat' => $post['id_jenis_surat'],
                    'nomor_surat' => $post['nomor_surat'],
                    'pengirim_surat' => $post['pengirim_surat'],
                    'catatan_surat' => $post['catatan_surat'],
                    'perihal_surat' => $post['perihal_surat'],
                    'sifat_surat' => strtoupper($post['sifat_surat']),
                    'lampiran_surat' => $post['lampiran_surat'],
                    'file_surat' => $nama_file,
                    'created_at' => $post['created_at'],
                    'nomor_dinas' => $nomor,
                    'arsipkan_1' => $post['arsip']
                );

                if ($nomor != '') {
                    $cek = $this->db->insert('tb_surat_masuk', $data);
        
                    if ($cek) {
                        if ($post['arsip'] == '0') {
                            $dispo = $this->_insertDispo($nomor, $post['dispo_surat'], '0');
                        }
                        $msg = array('res'=>1, 'msg' => 'Surat Masuk Berhasil diarsipkan.');
                    } else {
                        $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
                    }
                } else {
                    $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
                }
                
            }
            else{
                $msg = array('res'=>0, 'msg' => $hasil['msg']);
            }
        } else {
                $msg = array('res'=>2, 'msg' => "Berkas Belum dilampirkan.");
        }
        
        return json_encode($msg);
    }

    public function getNomor()
    {
        $h = $this->db->query("SELECT MAX(nomor_dinas) as nomor FROM tb_surat_masuk")->row();
        $nomor = $h->nomor + 1;

        return $nomor;
    }

    private function _uploadFile($lokasi, $name)
    {
        $config['upload_path'] = './dist/upload/'.$lokasi.'/';
        $config['file_name'] = $name.'-'.date("Ymd His");
        $config['allowed_types'] = 'pdf|jpg|png';
        $config['max_size']  = '10000';
        
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
        $data = $this->db->get_where('tb_surat_masuk', ['id_surat_masuk'=>$id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            "id_surat_masuk" => $id
        );
        $post = $this->input->post();
        $data = array (
            'tgl_surat' => $post['tgl_surat'],
            'id_jenis_surat' => $post['id_jenis_surat'],
            'nomor_surat' => $post['nomor_surat'],
            'pengirim_surat' => $post['pengirim_surat'],
            'catatan_surat' => $post['catatan_surat'],
            'perihal_surat' => $post['perihal_surat'],
            'sifat_surat' => strtoupper($post['sifat_surat']),
            'lampiran_surat' => $post['lampiran_surat'],
            'arsipkan_1' => $post['arsip']
        );
        $nomor = $post['nomor_dinas'];

        if (!empty($_FILES['file']['name']) && $nomor != '') {
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
                    if ($post['arsip'] == '0') {
                        $dispo = $this->_insertDispo($nomor, $post['dispo_surat'], '0');
                    } else {
                        $this->_delDispo($nomor, '0');
                    }
                    $msg = array('res'=>1, 'msg' => 'Surat Masuk Berhasil diubah.');
                } else {
                    $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diubah.');
                }
            } else {
                $msg = array('res'=>0, 'msg' => $hasil['msg']);
            }
            
        } elseif ($nomor != '') {
            $cek = $this->db->update('tb_surat_masuk', $data, $where);

            if ($cek) {
                if ($post['arsip'] == '0') {
                    $dispo = $this->_insertDispo($nomor, $post['dispo_surat'], '0');
                } else {
                    $this->_delDispo($nomor, '0');
                }
                $msg = array('res'=>1, 'msg' => 'Surat Masuk Berhasil diubah.');
            } else {
                $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diubah.');
            }
        } else {
            $msg = array('res'=>0, 'msg' => 'Surat Masuk Gagal diubah.');
        }
        
        return json_encode($msg);
    }

    public function delete($id)
    {
        $where = array(
            "id_surat_masuk" => $id
        );
        $h = $this->db->get_where('tb_surat_masuk', $where)->row();
        $nama = $h->file_surat;
        $nomor = $h->nomor_dinas;
        $where2 = array(
            "nomor_dinas" => $nomor
        );

        $cek = $this->db->delete('tb_surat_masuk', $where);

        if ($cek) {
            $this->_deleteFile('suratMasuk', $nama);
            $this->db->delete('tb_dispo_kadin', $where2);
            $this->db->delete('tb_dispo_sekdin', $where2);
            $this->db->delete('tb_dispo_bidang', $where2);
            $this->db->delete('tb_dispo_pegawai', $where2);
            $msg = array('res'=>1, 'msg'=>'Berkas Berhasil Dihapus');
        } else {
            $msg = array('res'=>0, 'msg'=>'Berkas Gagal Dihapus');
        }
        
        return json_encode($msg);
    }

    public function valid($id)
    {
        $data = $this->db->update('tb_surat_masuk', ['validasi'=> '1'], ['file_surat'=>$id]);
        return $data;
    }

    public function dispoSekdin($id)
    {
        $where = array(
            'id_surat_masuk' => $id
        );
        $post = $this->input->post();
        $data = array(
            'catatan_sekdin' => $post['catatan_sekdin'],
            'validasi' => '1',
            'arsipkan_2' => $post['arsip']
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_surat_sekdin'], '1');
        } else {
            $this->_delDispo($nomor, '1');
            $dispo = 1;
        }

        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk', $data, $where);
            if ($cek) {
                $msg = array("res"=> 1, "msg"=> "Disposisi Berhasil");
            } else {
                $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
            }
        } else {
            $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
        }
        
        return $msg;
    }

    public function dispoBidang($id)
    {
        $where = array(
            'id_surat_masuk' => $id
        );
        $post = $this->input->post();
        $data = array(
            'catatan_bidang' => $post['catatan_bidang'],
            'validasi' => '2',
            'arsipkan_3' => $post['arsip']
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_surat_bidang'], '2');
        } else {
            $this->_delDispo($nomor, '2');
            $dispo = 1;
        }
        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk', $data, $where);
            if ($cek) {
                $msg = array("res"=> 1, "msg"=> "Disposisi Berhasil");
            } else {
                $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
            }
        } else {
            $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
        }
        
        return $msg;
    }
    public function dispoSeksi($id)
    {
        $where = array(
            'id_surat_masuk' => $id
        );
        $post = $this->input->post();

        $data = array(
            'validasi' => '3'
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_pegawai'], '3', $post['catatan_seksi']);
        } else {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['arsip_2'], '3', $post['catatan_seksi']);
            $dispo = 1;
        }

        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk', $data, $where);
            if ($cek) {
                $msg = array("res"=> 1, "msg"=> "Disposisi Berhasil");
            } else {
                $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
            }
        } else {
            $msg = array("res"=> 0, "msg"=> "Disposisi Gagal");
        }
        
        
        return $msg;
    }

    public function _insertDispo($nomor, $dispo, $p, $catatan = NULL)
    {
        $hasil = 0;
        $h = $this->_delDispo($nomor, $p);

        if ($h) {
            for ($i=0; $i < count($dispo) ; $i++) {
                if ($p == '0') {
                    $data = array(
                        'nomor_dinas' => $nomor,
                        'posisi_kadin' => $dispo[$i]
                    );
                    $cek = $this->db->insert('tb_dispo_kadin', $data);
                } elseif ($p == '1') {
                    $data = array(
                        'nomor_dinas' => $nomor,
                        'posisi_sekdin' => $dispo[$i]
                    );
                    $cek = $this->db->insert('tb_dispo_sekdin', $data);
                } elseif ($p == '2') {
                    $data = array(
                        'nomor_dinas' => $nomor,
                        'posisi_bidang' => $dispo[$i],
                        'bidang' => $this->session->userdata('posisi')
                    );
                    $cek = $this->db->insert('tb_dispo_bidang', $data);
                } elseif ($p == '3') {
                    $data = array(
                        'nomor_dinas' => $nomor,
                        'id_pegawai' => $dispo[$i],
                        'seksi' => $this->session->userdata('posisi'),
                        'catatan' => $catatan
                    );
                    $cek = $this->db->insert('tb_dispo_pegawai', $data);
                }
    
                if ($cek) {
                    $hasil = 1;
                } else {
                    $hasil = 0;
                }
                
            }
        } else {
            $hasil = 0;
        }
        
        return $hasil;
    }

    public function _delDispo($nomor, $p)
    {
        $hasil = 0;
        $where = array(
            'nomor_dinas' => $nomor
        );
        if ($p == '0') {
            $hapus = $this->db->delete('tb_dispo_kadin', $where);
        } elseif ($p == '1') {
            $hapus = $this->db->delete('tb_dispo_sekdin', $where);
        } elseif ($p == '2') {
            $hapus = $this->db->delete('tb_dispo_bidang', $where);
        } elseif ($p == '3') {
            $where2 = array(
                'nomor_dinas' => $nomor,
                'seksi' => $this->session->userdata('posisi')
            );
            $hapus = $this->db->delete('tb_dispo_pegawai', $where2);
        }

        if ($hapus) {
            $hasil = 1;
        }

        return $hasil;
    }
}

/* End of file ModelName.php */
