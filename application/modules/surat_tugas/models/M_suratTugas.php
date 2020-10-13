<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_suratTugas extends CI_Model
{

    public function save()
    {
        $h = $this->db->query("SELECT MAX(nomor_surat) as maks FROM tb_surat_tugas")->row();
        $nomor_surat = $h->maks + 1;

        $post = $this->input->post();

        if ($post['sppd']) {
            $h2 = $this->db->query("SELECT MAX(nomor_sppd) as maks2 FROM tb_surat_tugas WHERE sppd_surat='1'")->row();
            // $sppd = $h2->maks2 + 1;
            $sppd = NULL;
            $kendaraan = $post['kendaraan'];
            if ($post['nopol'] != '') {
                $nopol = strtoupper($post['nopol']);
            } else {
                $nopol = NULL;
            }
            $nominal = $post['nominal'];
            $nominal2 = $post['nominal2'];
        } else {
            $sppd = NULL;
            $kendaraan = NULL;
            $nopol = NULL;
            $nominal = NULL;
            $nominal2 = NULL;
        }

        $tgl = explode('-', $post['tgl_kegiatan']);
        $data = array(
            'nomor_surat' => $nomor_surat,
            'dasar_surat' => $post['dasar_surat'],
            'tgl_kegiatan' => date("Y-m-d", strtotime($tgl[0])),
            'tgl_kegiatan_2' => date("Y-m-d", strtotime($tgl[1])),
            'lokasi_kegiatan' => $post['lokasi_kegiatan'],
            'nama_kegiatan' => $post['nama_kegiatan'],
            'dalam_luar_tugas' => $post['dalam_luar'],
            'sppd_surat' => $post['sppd'],
            'nomor_sppd' => $sppd,
            'kendaraan' => $kendaraan,
            'nopol' => $nopol,
            'mata_perdin' => $nominal,
            'mata_bbm' => $nominal2,
            'created_at' => $post['created_at'],
            'created_by' => $this->session->userdata('posisi')
        );

        $pegawai = $this->_uploadPegawai($nomor_surat, $tgl[0], $post['sppd'], $nominal);
        if ($pegawai) {
            $cek = $this->db->insert('tb_surat_tugas', $data);

            if ($cek) {
                $msg = array('res' => 1, 'msg' => 'Surat Tugas Berhasil diarsipkan.');
            } else {
                $msg = array('res' => 0, 'msg' => 'Surat Tugas Gagal diarsipkan.');
            }
        } else {
            $msg = array('res' => 0, 'msg' => 'Insert Pegawai Gagal.');
        }
        return json_encode($msg);
    }

    public function getDasar($posisi)
    {

        if ($posisi == '1') {
            $q = "SELECT * FROM tb_surat_masuk_2 a, tb_klasifikasi b WHERE a.sub_sub_klasifikasi=b.sub_sub_klasifikasi ORDER BY a.nomor_dinas DESC";
        } elseif ($posisi == '19') {
            $q = "SELECT * FROM tb_surat_masuk_2 a, tb_klasifikasi b WHERE a.sub_sub_klasifikasi=b.sub_sub_klasifikasi AND a.arsipkan_2='0' AND a.nomor_dinas NOT IN (SELECT nomor_dinas FROM tb_dispo_sekdin GROUP BY nomor_dinas) ORDER BY a.nomor_dinas DESC";
        } elseif ($posisi > '1' && $posisi < '5') {
            $q = "SELECT * FROM tb_surat_masuk_2 a, tb_klasifikasi b WHERE a.sub_sub_klasifikasi=b.sub_sub_klasifikasi AND a.arsipkan_2='0' AND a.nomor_dinas IN (SELECT nomor_dinas FROM tb_dispo_sekdin WHERE posisi_sekdin='$posisi' GROUP BY nomor_dinas) AND a.nomor_dinas NOT IN (SELECT nomor_dinas FROM tb_dispo_bidang GROUP BY nomor_dinas) ORDER BY a.nomor_dinas DESC";
        } elseif ($posisi == '5' || $posisi == '6' || $posisi == '16' || $posisi == '17') {
            $q = "SELECT * FROM tb_surat_masuk_2 a, tb_klasifikasi b WHERE a.sub_sub_klasifikasi=b.sub_sub_klasifikasi AND a.arsipkan_2='0' AND a.nomor_dinas IN (SELECT nomor_dinas FROM tb_dispo_sekdin WHERE posisi_sekdin='$posisi' GROUP BY nomor_dinas) ORDER BY a.nomor_dinas DESC";
        } else {
            $q = "SELECT * FROM tb_surat_masuk_2 a, tb_klasifikasi b WHERE a.sub_sub_klasifikasi=b.sub_sub_klasifikasi AND a.arsipkan_3='0' AND a.nomor_dinas IN (SELECT nomor_dinas FROM tb_dispo_bidang WHERE posisi_bidang='$posisi' GROUP BY nomor_dinas) ORDER BY a.nomor_dinas DESC";
        }

        $data = $this->db->query($q)->result();
        return $data;
    }

    public function getROK($posisi)
    {
        $url = "http://sikupat2020.sikdkkjepara.net/getRok.php?id=" . $posisi;
        $content = file_get_contents($url);
        $clean_content = $this->removeBomUtf8($content);
        $decoded = json_decode($clean_content, true);

        return $decoded;
    }

    public function getNota($id)
    {
        $where = array(
            'created_by' => $id
        );

        $data = $this->db->get_where('tb_nota_dinas', $where)->result();

        return $data;
    }

    private function removeBomUtf8($s)
    {
        if (substr($s, 0, 3) == chr(hexdec('EF')) . chr(hexdec('BB')) . chr(hexdec('BF'))) {
            return substr($s, 3);
        } else {
            return $s;
        }
    }

    private function _uploadPegawai($nomor_surat, $tgl, $sppd, $perdin)
    {
        $pegawai = $_POST['id_pegawai'];
        $bln = date("Y-m", strtotime($tgl));
        $dalam_luar = $_POST['dalam_luar'];
        $minggu = $this->_getMinggu($tgl);
        $hsl = 0;
        foreach ($pegawai as $key => $value) {
            if ($sppd == '1') {
                if ($perdin != '0') {
                    if ($dalam_luar == '1') {
                        $q = "SELECT COUNT(jml_berangkat) AS jml FROM tb_detail_pegawai WHERE id_pegawai='$value' AND bln_kegiatan='$bln' AND dalam_luar='$dalam_luar' AND jml_berangkat != '0'";
                    } else {
                        $q = "SELECT COUNT(jml_berangkat) AS jml FROM tb_detail_pegawai WHERE id_pegawai='$value' AND bln_kegiatan='$bln' AND dalam_luar='$dalam_luar' AND minggu='$minggu' AND jml_berangkat != '0'";
                    }
                    $h = $this->db->query($q)->row();
                    $jml = $h->jml + 1;
                } else {
                    $jml = 0;
                }
            } else {
                $jml = 0;
            }

            // $h = $this->db->get_where("tb_detail_pegawai", ["id_pegawai"=> $value, "bln_kegiatan"=> $bln, "dalam_luar"=>$dalam_luar])->num_rows();
            // $jml = $h+1;

            $data = array(
                'nomor_surat' => $nomor_surat,
                'id_pegawai' => $value,
                'bln_kegiatan' => $bln,
                'dalam_luar' => $dalam_luar,
                'jml_berangkat' => $jml,
                'minggu' => $minggu
            );
            $cek = $this->db->insert('tb_detail_pegawai', $data);

            if ($cek) {
                $hsl = 1;
            } else {
                $hsl = 0;
            }
        }

        return $hsl;
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
        $data = $this->db->get_where('tb_surat_tugas', ['id_surat_tugas' => $id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            "id_surat_tugas" => $id
        );
        $post = $this->input->post();

        if ($post['sppd']) {
            if ($post['nomor_sppd'] == '') {
                $h2 = $this->db->query("SELECT MAX(nomor_sppd) as maks2 FROM tb_surat_tugas WHERE sppd_surat='1'")->row();
                // $sppd = $h2->maks2 + 1;
                $sppd = NULL;
            } else {
                // $sppd = $post['nomor_sppd'];
                $sppd = NULL;
            }

            $kendaraan = $post['kendaraan'];
            if ($post['nopol'] != '') {
                $nopol = strtoupper($post['nopol']);
            } else {
                $nopol = NULL;
            }
            $nominal = $post['nominal'];
            $nominal2 = $post['nominal2'];
        } else {
            $sppd = NULL;
            $kendaraan = NULL;
            $nopol = NULL;
            $nominal = NULL;
            $nominal2 = NULL;
        }

        $tgl = explode('-', $post['tgl_kegiatan']);
        $data = array(
            'dasar_surat' => $post['dasar_surat'],
            'tgl_kegiatan' => date("Y-m-d", strtotime($tgl[0])),
            'tgl_kegiatan_2' => date("Y-m-d", strtotime($tgl[1])),
            'lokasi_kegiatan' => $post['lokasi_kegiatan'],
            'nama_kegiatan' => $post['nama_kegiatan'],
            'dalam_luar_tugas' => $post['dalam_luar'],
            'sppd_surat' => $post['sppd'],
            'nomor_sppd' => $sppd,
            'kendaraan' => $kendaraan,
            'nopol' => $nopol,
            'mata_perdin' => $nominal,
            'mata_bbm' => $nominal2
        );

        $delPeg = $this->_deletePegawai($post['nomor_surat']);

        if ($delPeg) {
            $pegawai = $this->_uploadPegawai($post['nomor_surat'], $tgl[0], $post['sppd'], $nominal);
            if ($pegawai) {
                if (!empty($_FILES['file']['name'])) {
                    $hasil = json_decode($this->_uploadFile('suratTugas', 'surat-tugas'), true);
                    if ($hasil['res']) {
                        $this->_deleteFile('suratTugas', $post['old_file']);
                        $nama_file = $hasil['name_file'];
                        $data2 = array(
                            'file_surat' => $nama_file
                        );
                        $data3 = array_merge($data, $data2);

                        $cek = $this->db->update('tb_surat_tugas', $data3, $where);
                        if ($cek) {
                            $msg = array('res' => 1, 'msg' => 'Surat Tugas Berhasil diubah.');
                        } else {
                            $msg = array('res' => 0, 'msg' => 'Surat Tugas Gagal diubah.');
                        }
                    } else {
                        $msg = array('res' => 0, 'msg' => $hasil['msg']);
                    }
                } else {
                    $cek = $this->db->update('tb_surat_tugas', $data, $where);

                    if ($cek) {
                        $msg = array('res' => 1, 'msg' => 'Surat Tugas Berhasil diubah.');
                    } else {
                        $msg = array('res' => 0, 'msg' => 'Surat Tugas Gagal diubah.');
                    }
                }
            }
        }

        return json_encode($msg);
    }

    public function _deletePegawai($nomor_surat)
    {
        $cek = $this->db->delete('tb_detail_pegawai', ['nomor_surat' => $nomor_surat]);

        return $cek;
    }

    public function delete($id)
    {
        $where = array(
            "id_surat_tugas" => $id
        );

        $h = $this->db->get_where('tb_surat_tugas', $where)->row();
        $nama = $h->file_surat;
        $nomor_surat = $h->nomor_surat;
        $qrcode = $h->qrcode;

        $cek = $this->db->delete('tb_surat_tugas', $where);
        $cek2 = $this->_deletePegawai($nomor_surat);

        if ($cek && $cek2) {
            if ($nama != '') {
                $this->_deleteFile('suratTugas', $nama);
            }
            if ($qrcode != '') {
                unlink("./dist/img/QRCode/" . $qrcode);
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
            "id_surat_tugas" => $id
        );

        $data = array(
            'validasi' => '1'
        );

        $cek = $this->db->update('tb_surat_tugas', $data, $where);

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
            'id_surat_tugas' => $id
        );
        if (!empty($_FILES['file']['name'])) {
            $hasil = json_decode($this->_uploadFile('suratTugas', 'surat-tugas'), true);
            if ($hasil['res']) {
                $nama_file = $hasil['name_file'];

                $data = array(
                    'file_surat' => $nama_file
                );

                $cek = $this->db->update('tb_surat_tugas', $data, $where);

                if ($cek) {
                    $msg = array('res' => 1, 'msg' => 'Surat Tugas Berhasil diarsipkan.');
                } else {
                    $msg = array('res' => 0, 'msg' => 'Surat Tugas Gagal diarsipkan.');
                }
            } else {
                $msg = array('res' => 0, 'msg' => $hasil['msg']);
            }
        } else {
            $msg = array('res' => 0, 'msg' => 'Berkas Belum dipilih.');
        }

        return json_encode($msg);
    }

    public function getPegawai($id)
    {
        $msg = array();
        $this->db->order_by('level_user', 'asc');
        $this->db->order_by('posisi_user', 'asc');
        $this->db->order_by('pangkat_pegawai', 'asc');
        $p = $this->db->get('tb_pegawai')->result();
        $no = 0;
        foreach ($p as $row) {
            $data = $this->db->get_where('tb_detail_pegawai', ['nomor_surat' => $id, 'id_pegawai' => $row->id_pegawai])->num_rows();
            $sel = "";

            if ($data > 0) {
                $sel = "selected";
            } else {
                $sel = "";
            }

            $data2 = $this->db->get_where('tb_level_user', ['id_level_user' => $row->level_user])->row();
            $data3 = $this->db->get_where('tb_posisi', ['id_posisi' => $row->posisi_user])->row();
            $data4 = $this->db->get_where('tb_pangkat', ['id_pangkat' => $row->pangkat_pegawai])->row();
            if ($row->posisi_user == '1') {
                $jab = $data3->posisi . " Kesehatan Kab. Jepara";
            } else {
                $jab = $data2->user_level . " " . $data3->posisi;
            }

            $pangkat = $data4->pangkat;

            $msg[$no]['id_pegawai'] = $row->id_pegawai;
            $msg[$no]['nama_pegawai'] = $row->nama_pegawai;
            $msg[$no]['nip_pegawai'] = $row->nip_pegawai;
            $msg[$no]['selected'] = $sel;
            $msg[$no]['jabatan'] = $jab;
            $msg[$no]['pangkat'] = $pangkat;

            $no++;
        }

        return $msg;
    }

    public function getPegawai2($id)
    {
        $msg = array();
        $this->db->order_by('level_user', 'asc');
        $this->db->order_by('pangkat_pegawai', 'asc');

        $p = $this->db->get('tb_pegawai')->result();
        $no = 0;
        foreach ($p as $row) {
            $data = $this->db->get_where('tb_detail_pegawai', ['nomor_surat' => $id, 'id_pegawai' => $row->id_pegawai])->num_rows();
            $sel = "";

            if ($data > 0) {
                $data2 = $this->db->get_where('tb_level_user', ['id_level_user' => $row->level_user])->row();
                $data3 = $this->db->get_where('tb_posisi', ['id_posisi' => $row->posisi_user])->row();
                $data4 = $this->db->get_where('tb_pangkat', ['id_pangkat' => $row->pangkat_pegawai])->row();
                $jab = $data2->user_level . " " . $data3->posisi;
                $pangkat = $data4->pangkat;

                $msg[$no]['no'] = $no;
                $msg[$no]['id_pegawai'] = $row->id_pegawai;
                $msg[$no]['nama_pegawai'] = $row->nama_pegawai;
                $msg[$no]['nip_pegawai'] = $row->nip_pegawai;
                $msg[$no]['jabatan'] = $jab;
                $msg[$no]['pangkat'] = $pangkat;

                $no++;
            }
        }

        return $msg;
    }

    public function cetakId($id)
    {
        $where = array(
            "id_surat_tugas" => $id
        );
        $data = array(
            'ttd_surat' => $_POST['ttd'],
            'tgl_surat' => $_POST['tgl_surat']
        );

        $cek = $this->db->update('tb_surat_tugas', $data, $where);
        if ($cek) {
            $msg = array("res" => 1);
        } else {
            $msg = array("res" => 0);
        }

        return json_encode($msg);
    }

    public function getDataPegawai($posisi)
    {
        $data = $this->db->query('SELECT * FROM tb_pegawai a, tb_pangkat b, tb_posisi c, tb_level_user d WHERE a.pangkat_pegawai=b.id_pangkat AND a.posisi_user=c.id_posisi AND a.level_user=d.id_level_user AND a.posisi_user="' . $posisi . '"');
        return $data;
    }

    public function getDPA()
    {
        $data = $this->db->get_where("tb_dpa", ["st_dpa" => "1"])->result();
        return $data;
    }

    public function _getMinggu($tgl)
    {
        $ref_date = strtotime($tgl);
        $te = date('W', $ref_date);

        return $te;
    }

    public function createQR($id)
    {
        $d = $this->db->get_where('tb_surat_tugas', ['id_surat_tugas' => $id])->row();
        if ($d->sppd_surat == '1') {
            require __DIR__ . '/phpqrcode/qrlib.php';
            $tempdir = './dist/img/QRCode/';

            $text = "Validasi Oleh E-Arsip Management pada " . date("d-m-Y H:i:s");

            //namafile setelah jadi qrcode
            $namafile = "QR-" . date("YmdHis") . ".png";
            //kualitas dan ukuran qrcode
            $quality = 'H';
            $ukuran = 4;
            $padding = 0;

            if ($d->qrcode == '') {
                QRCode::png($text, $tempdir . $namafile, QR_ECLEVEL_H, $ukuran, $padding);
            } else {
                $del = unlink("./dist/img/QRCode/" . $d->qrcode);

                QRCode::png($text, $tempdir . $namafile, QR_ECLEVEL_H, $ukuran, $padding);
            }

            $where = array(
                'id_surat_tugas' => $id
            );

            $data = array(
                'qrcode' => $namafile
            );

            $cek = $this->db->update('tb_surat_tugas', $data, $where);
            if ($cek) {
                $namafile2 = $namafile;
            } else {
                $namafile2 = '';
            }
        } else {
            $namafile2 = '';
        }

        return $namafile2;
    }
}

/* End of file ModelName.php */
