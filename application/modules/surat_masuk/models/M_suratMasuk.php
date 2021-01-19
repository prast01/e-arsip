<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_suratMasuk extends CI_Model
{

    public function save()
    {
        $post = $this->input->post();

        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratMasuk', 'surat-masuk'), true);

            if ($hasil['res']) {
                $nama_file = $hasil['name_file'];
                $nomor = $post['nomor_dinas'];

                $data = array(
                    'nomor_dinas' => $nomor,
                    'klasifikasi' => $post['klas'],
                    'sub_klasifikasi' => $post['sub_klas'],
                    'sub_sub_klasifikasi' => $post['sub_sub_klas'],
                    'nomor_surat' => $post['nomor_surat'],
                    'tgl_terima' => $post['tgl_terima'],
                    'tgl_surat' => $post['tgl_surat'],
                    'masalah' => $post['masalah'],
                    'nama_berkas' => $post['nama_berkas'],
                    'sifat_surat' => $post['sifat_surat'],
                    'ringkasan' => $post['ringkasan'],
                    'pengirim' => $post['pengirim'],
                    'wilayah' => $post['wilayah'],
                    'r_aktif' => $post['r_aktif'],
                    'r_inaktif' => $post['r_inaktif'],
                    'thn_aktif' => $post['thn_aktif'],
                    'thn_inaktif' => $post['thn_inaktif'],
                    'serie' => $post['serie'],
                    'ket_jra' => $post['ket_jra'],
                    'nilai_guna' => $post['nilai_guna'],
                    'penyimpanan' => $post['penyimpanan'],
                    'nomor_penyimpanan' => $post['nomor_penyimpanan'],
                    'jenis' => $post['jenis'],
                    'file_surat' => $nama_file,
                    'tgl_dispo' => $post['tgl_dispo'],
                    'tgl_terus' => $post['tgl_terus'],
                    'perihal' => $post['perihal'],
                    'lampiran' => $post['lampiran'],
                    'lampiran_satuan' => $post['lampiran_satuan'],
                    'komposisi' => $post['komposisi'],
                    'akses' => $post['akses'],
                    'tindakan' => $post['tindakan'],
                    'catatan' => $post['catatan'],
                    'arsipkan_1' => $post['arsip']
                );

                if ($nomor != '') {
                    $cek = $this->db->insert('tb_surat_masuk_2', $data);

                    if ($cek) {
                        if ($post['arsip'] == '0') {
                            $this->_insertDispo($nomor, $post['dispo_surat'], '0', $post['catatan']);
                        }
                        $msg = array('res' => 1, 'msg' => 'Surat Masuk Berhasil diarsipkan.');
                    } else {
                        $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
                    }
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } else {
            // $msg = array('res' => 2, 'msg' => "Berkas Belum dilampirkan.");$nomor = $post['nomor_dinas'];

            $nomor = $post['nomor_dinas'];
            $data = array(
                'nomor_dinas' => $nomor,
                'klasifikasi' => $post['klas'],
                'sub_klasifikasi' => $post['sub_klas'],
                'sub_sub_klasifikasi' => $post['sub_sub_klas'],
                'nomor_surat' => $post['nomor_surat'],
                'tgl_terima' => $post['tgl_terima'],
                'tgl_surat' => $post['tgl_surat'],
                'masalah' => $post['masalah'],
                'nama_berkas' => $post['nama_berkas'],
                'sifat_surat' => $post['sifat_surat'],
                'ringkasan' => $post['ringkasan'],
                'pengirim' => $post['pengirim'],
                'wilayah' => $post['wilayah'],
                'r_aktif' => $post['r_aktif'],
                'r_inaktif' => $post['r_inaktif'],
                'thn_aktif' => $post['thn_aktif'],
                'thn_inaktif' => $post['thn_inaktif'],
                'serie' => $post['serie'],
                'ket_jra' => $post['ket_jra'],
                'nilai_guna' => $post['nilai_guna'],
                'penyimpanan' => $post['penyimpanan'],
                'nomor_penyimpanan' => $post['nomor_penyimpanan'],
                'jenis' => $post['jenis'],
                'tgl_dispo' => $post['tgl_dispo'],
                'tgl_terus' => $post['tgl_terus'],
                'perihal' => $post['perihal'],
                'lampiran' => $post['lampiran'],
                'lampiran_satuan' => $post['lampiran_satuan'],
                'komposisi' => $post['komposisi'],
                'akses' => $post['akses'],
                'tindakan' => $post['tindakan'],
                'catatan' => $post['catatan'],
                'arsipkan_1' => $post['arsip']
            );

            if ($nomor != '') {
                $cek = $this->db->insert('tb_surat_masuk_2', $data);

                if ($cek) {
                    if ($post['arsip'] == '0') {
                        $this->_insertDispo($nomor, $post['dispo_surat'], '0', $post['catatan']);
                    }
                    $msg = array('res' => 1, 'msg' => 'Surat Masuk Berhasil diarsipkan.');
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diarsipkan.');
            }
        }

        return json_encode($msg);
    }

    public function getNomor()
    {
        $thn = date("Y");
        $h = $this->db->query("SELECT MAX(nomor_dinas) as nomor FROM tb_surat_masuk_2 WHERE YEAR(tgl_terima) = '$thn'")->row();
        $nomor = $h->nomor + 1;

        return $nomor;
    }

    private function _uploadFile($lokasi, $name)
    {
        $config['upload_path'] = './dist/upload/' . $lokasi . '/';
        $config['file_name'] = $name . '-' . date("Ymd His");
        $config['allowed_types'] = 'pdf|jpg|png';
        $config['max_size']  = '10000';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('file')) {
            $msg = array("res" => 0, "msg" => $this->upload->display_errors());
        } else {
            $msg = array("res" => 1, "name_file" => $this->upload->data('file_name'));
        }

        return json_encode($msg);
    }

    private function _deleteFile($lokasi, $name)
    {
        return unlink("./dist/upload/" . $lokasi . "/" . $name);
    }

    public function getSurat($id)
    {
        $data = $this->db->get_where('tb_surat_masuk_2', ['id_surat_masuk' => $id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            "id_surat_masuk" => $id
        );
        $post = $this->input->post();
        $nomor = $post['nomor_dinas'];
        $data = array(
            'nomor_dinas' => $nomor,
            'klasifikasi' => $post['klas'],
            'sub_klasifikasi' => $post['sub_klas'],
            'sub_sub_klasifikasi' => $post['sub_sub_klas'],
            'nomor_surat' => $post['nomor_surat'],
            'tgl_terima' => $post['tgl_terima'],
            'tgl_surat' => $post['tgl_surat'],
            'masalah' => $post['masalah'],
            'nama_berkas' => $post['nama_berkas'],
            'sifat_surat' => $post['sifat_surat'],
            'ringkasan' => $post['ringkasan'],
            'pengirim' => $post['pengirim'],
            'wilayah' => $post['wilayah'],
            'r_aktif' => $post['r_aktif'],
            'r_inaktif' => $post['r_inaktif'],
            'thn_aktif' => $post['thn_aktif'],
            'thn_inaktif' => $post['thn_inaktif'],
            'serie' => $post['serie'],
            'ket_jra' => $post['ket_jra'],
            'nilai_guna' => $post['nilai_guna'],
            'penyimpanan' => $post['penyimpanan'],
            'nomor_penyimpanan' => $post['nomor_penyimpanan'],
            'jenis' => $post['jenis'],
            'tgl_dispo' => $post['tgl_dispo'],
            'tgl_terus' => $post['tgl_terus'],
            'perihal' => $post['perihal'],
            'lampiran' => $post['lampiran'],
            'lampiran_satuan' => $post['lampiran_satuan'],
            'komposisi' => $post['komposisi'],
            'akses' => $post['akses'],
            'tindakan' => $post['tindakan'],
            'catatan' => $post['catatan'],
            'arsipkan_1' => $post['arsip']
        );

        if (!empty($_FILES['file']['name']) && $nomor != '') {
            $hasil = json_decode($this->_uploadFile('suratMasuk', 'surat-masuk'), true);
            if ($hasil['res']) {
                if ($post['old_file'] != '') {
                    $this->_deleteFile('suratMasuk', $post['old_file']);
                }
                $nama_file = $hasil['name_file'];
                $data2 = array(
                    'file_surat' => $nama_file
                );
                $data3 = array_merge($data, $data2);

                $cek = $this->db->update('tb_surat_masuk_2', $data3, $where);

                if ($cek) {
                    if ($post['arsip'] == '0') {
                        $this->_insertDispo($nomor, $post['dispo_surat'], '0', $post['catatan']);
                    } else {
                        $this->_delDispo($nomor, '0');
                    }
                    $msg = array('res' => 1, 'msg' => 'Surat Masuk Berhasil diubah.');
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diubah.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } elseif ($nomor != '') {
            $cek = $this->db->update('tb_surat_masuk_2', $data, $where);

            if ($cek) {
                if ($post['arsip'] == '0') {
                    $this->_insertDispo($nomor, $post['dispo_surat'], '0');
                } else {
                    $this->_delDispo($nomor, '0');
                }
                $msg = array('res' => 1, 'msg' => 'Surat Masuk Berhasil diubah.');
            } else {
                $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diubah.');
            }
        } else {
            $msg = array('res' => 0, 'msg' => 'Surat Masuk Gagal diubah.');
        }

        return json_encode($msg);
    }

    public function delete($id)
    {
        $where = array(
            "id_surat_masuk" => $id
        );
        $h = $this->db->get_where('tb_surat_masuk_2', $where)->row();
        $nama = $h->file_surat;
        $nomor = $h->nomor_dinas;
        $where2 = array(
            "nomor_dinas" => $nomor
        );

        $cek = $this->db->delete('tb_surat_masuk_2', $where);

        if ($cek) {
            $this->_deleteFile('suratMasuk', $nama);
            $this->db->delete('tb_dispo_kadin', $where2);
            $this->db->delete('tb_dispo_sekdin', $where2);
            $this->db->delete('tb_dispo_bidang', $where2);
            $this->db->delete('tb_dispo_pegawai', $where2);
            $msg = array('res' => 1, 'msg' => 'Berkas Berhasil Dihapus');
        } else {
            $msg = array('res' => 0, 'msg' => 'Berkas Gagal Dihapus');
        }

        return json_encode($msg);
    }

    public function valid($id)
    {
        $data = $this->db->update('tb_surat_masuk', ['validasi' => '1'], ['file_surat' => $id]);
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
            'arsipkan_2' => $post['arsip']
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_surat_sekdin'], '1');
        } else {
            $this->_delDispo($post['nomor_dinas'], '1');
            $dispo = 1;
        }

        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk_2', $data, $where);
            if ($cek) {
                $msg = array("res" => 1, "msg" => "Disposisi Berhasil");
            } else {
                $msg = array("res" => 0, "msg" => "Disposisi Gagal");
            }
        } else {
            $msg = array("res" => 0, "msg" => "Disposisi Gagal");
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
            'catatan_kabid' => $post['catatan_bidang'],
            'arsipkan_3' => $post['arsip']
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_surat_bidang'], '2');
        } else {
            $this->_delDispo($post['nomor_dinas'], '2');
            $dispo = 1;
        }
        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk_2', $data, $where);
            if ($cek) {
                $msg = array("res" => 1, "msg" => "Disposisi Berhasil");
            } else {
                $msg = array("res" => 0, "msg" => "Disposisi Gagal");
            }
        } else {
            $msg = array("res" => 0, "msg" => "Disposisi Gagal");
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
            'catatan_kasie' => $post['catatan_seksi']
        );

        if ($post['arsip'] == '0') {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['dispo_pegawai'], '3', $post['catatan_seksi']);
        } else {
            $dispo = $this->_insertDispo($post['nomor_dinas'], $post['arsip_2'], '3', $post['catatan_seksi']);
            $dispo = 1;
        }

        if ($dispo) {
            $cek = $this->db->update('tb_surat_masuk_2', $data, $where);
            if ($cek) {
                $msg = array("res" => 1, "msg" => "Disposisi Berhasil");
            } else {
                $msg = array("res" => 0, "msg" => "Disposisi Gagal");
            }
        } else {
            $msg = array("res" => 0, "msg" => "Disposisi Gagal");
        }


        return $msg;
    }

    public function _insertDispo($nomor, $dispo, $p, $catatan = NULL)
    {
        $hasil = 0;
        $h = $this->_delDispo($nomor, $p);

        if ($h) {
            for ($i = 0; $i < count($dispo); $i++) {
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

    public function get_penyimpanan()
    {
        $data = $this->db->get("tb_penyimpanan")->result();

        return $data;
    }

    public function get_komposisi()
    {
        $data = $this->db->get("tb_komposisi")->result();

        return $data;
    }

    public function get_no_penyimpanan($p)
    {
        $data = $this->db->get_where("tb_surat_masuk_2", ["penyimpanan" => $p])->num_rows();

        return $data + 1;
    }

    public function get_disposisi($nomor_dinas)
    {
        $this->db->select("posisi");
        $this->db->from("tb_dispo_kadin");
        $this->db->join("tb_posisi", "tb_dispo_kadin.posisi_kadin=tb_posisi.id_posisi");
        $this->db->where("nomor_dinas", $nomor_dinas);
        $data = $this->db->get()->result_array();

        return $data;
    }
}

/* End of file ModelName.php */
