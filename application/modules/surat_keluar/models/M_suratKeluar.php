<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_suratKeluar extends CI_Model
{

    public function save()
    {
        $post = $this->input->post();

        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratkeluar', 'surat-keluar'), true);

            if ($hasil['res']) {
                $nama_file = $hasil['name_file'];
                $nomor = $post['nomor_dinas'];

                $data = array(
                    'nomor_dinas' => $nomor,
                    'klasifikasi' => $post['klas'],
                    'sub_klasifikasi' => $post['sub_klas'],
                    'sub_sub_klasifikasi' => $post['sub_sub_klas'],
                    'nomor_surat' => $post['nomor_surat'],
                    'tgl_naik' => $post['tgl_naik'],
                    'tgl_surat' => $post['tgl_surat'],
                    'masalah' => $post['masalah'],
                    'nama_berkas' => $post['nama_berkas'],
                    'sifat_surat' => $post['sifat_surat'],
                    'ringkasan' => $post['ringkasan'],
                    'penerima' => $post['penerima'],
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
                    'perihal' => $post['perihal'],
                    'lampiran' => $post['lampiran'],
                    'lampiran_satuan' => $post['lampiran_satuan'],
                    'komposisi' => $post['komposisi'],
                    'akses' => $post['akses'],
                    'tgl_ttd' => $post['tgl_ttd'],
                    'unit_kerja' => $post['unit_kerja'],
                    'catatan' => $post['catatan']
                );

                if ($nomor != '') {
                    $cek = $this->db->insert('tb_surat_keluar_2', $data);

                    if ($cek) {
                        $msg = array('res' => 1, 'msg' => 'Surat Keluar Berhasil diarsipkan.');
                    } else {
                        $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diarsipkan.');
                    }
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diarsipkan.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } else {
            $msg = array('res' => 2, 'msg' => "Berkas Belum dilampirkan.");
        }

        return json_encode($msg);
    }

    private function _uploadFile($lokasi, $name)
    {
        $config['upload_path'] = './dist/upload/' . $lokasi . '/';
        $config['file_name'] = $name . '-' . date("Ymd His");
        $config['allowed_types'] = 'pdf';
        $config['max_size']  = '2048';

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
        $data = $this->db->get_where('tb_surat_keluar_2', ['id_surat_keluar' => $id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            "id_surat_keluar" => $id
        );
        $post = $this->input->post();
        $nomor = $post['nomor_dinas'];
        $data = array(
            'nomor_dinas' => $nomor,
            'klasifikasi' => $post['klas'],
            'sub_klasifikasi' => $post['sub_klas'],
            'sub_sub_klasifikasi' => $post['sub_sub_klas'],
            'nomor_surat' => $post['nomor_surat'],
            'tgl_naik' => $post['tgl_naik'],
            'tgl_surat' => $post['tgl_surat'],
            'masalah' => $post['masalah'],
            'nama_berkas' => $post['nama_berkas'],
            'sifat_surat' => $post['sifat_surat'],
            'ringkasan' => $post['ringkasan'],
            'penerima' => $post['penerima'],
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
            'perihal' => $post['perihal'],
            'lampiran' => $post['lampiran'],
            'lampiran_satuan' => $post['lampiran_satuan'],
            'komposisi' => $post['komposisi'],
            'akses' => $post['akses'],
            'unit_kerja' => $post['unit_kerja'],
            'catatan' => $post['catatan'],
            'tgl_ttd' => $post['tgl_ttd']
        );

        if (!empty($_FILES['file']['name']) && $nomor != '') {
            $hasil = json_decode($this->_uploadFile('suratKeluar', 'surat-keluar'), true);
            if ($hasil['res']) {
                $this->_deleteFile('suratKeluar', $post['old_file']);
                $nama_file = $hasil['name_file'];
                $data2 = array(
                    'file_surat' => $nama_file
                );
                $data3 = array_merge($data, $data2);

                $cek = $this->db->update('tb_surat_keluar_2', $data3, $where);

                if ($cek) {
                    $msg = array('res' => 1, 'msg' => 'Surat Keluar Berhasil diubah.');
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diubah.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } elseif ($nomor != '') {
            $cek = $this->db->update('tb_surat_keluar_2', $data, $where);

            if ($cek) {
                $msg = array('res' => 1, 'msg' => 'Surat Keluar Berhasil diubah.');
            } else {
                $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diubah.');
            }
        } else {
            $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diubah.');
        }

        return json_encode($msg);
    }

    public function delete($id)
    {
        $where = array(
            "id_surat_keluar" => $id
        );

        $h = $this->db->get_where('tb_surat_keluar_2', $where)->row();
        $nama = $h->file_surat;

        $cek = $this->db->delete('tb_surat_keluar_2', $where);

        if ($cek) {
            if ($nama != '') {
                $this->_deleteFile('suratKeluar', $nama);
            }
            $msg = array('res' => 1, 'msg' => 'Berkas Berhasil Dihapus');
        } else {
            $msg = array('res' => 0, 'msg' => 'Berkas Gagal Dihapus');
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
            $msg = array('res' => 1, 'msg' => 'Berkas Berhasil Divalidasi');
        } else {
            $msg = array('res' => 0, 'msg' => 'Berkas Gagal Divalidasi');
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

                $data = array(
                    'file_surat' => $nama_file
                );

                $cek = $this->db->update('tb_surat_keluar', $data, $where);

                if ($cek) {
                    $msg = array('res' => 1, 'msg' => 'Surat Keluar Berhasil diarsipkan.');
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Keluar Gagal diarsipkan.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } else {
            $msg = array('res' => 0, 'msg' => 'Berkas Belum dipilih.');
        }

        return json_encode($msg);
    }


    public function getNomor()
    {
        $h = $this->db->query("SELECT MAX(nomor_dinas) as nomor FROM tb_surat_keluar_2")->row();
        $nomor = $h->nomor + 1;

        return $nomor;
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
        $data = $this->db->get_where("tb_surat_keluar_2", ["penyimpanan" => $p])->num_rows();

        return $data + 1;
    }
}

/* End of file ModelName.php */
