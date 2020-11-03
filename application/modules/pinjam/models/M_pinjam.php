<?php


defined('BASEPATH') or exit('No direct script access allowed');

class M_pinjam extends CI_Model
{

    public function add()
    {
        $post = $this->input->post();

        if ($post['no_surat'] == "" || $post['id_surat'] == "") {
            $msg = array("res" => 0, "msg" => "Berkas Belum Dipilih !");
            return $msg;
        }

        if ($post['unit_kerja'] == "") {
            $msg = array("res" => 0, "msg" => "Unit Kerja Belum Dipilih !");
            return $msg;
        }

        if ($post['nama_peminjam'] == "") {
            $msg = array("res" => 0, "msg" => "Nama Peminjam Belum Diisi !");
            return $msg;
        }

        $jenis = ($post["jenis_surat"] == "suratMasuk") ? 1 : 2;

        $data = array(
            "id_surat" => $post["id_surat"],
            "jenis_surat" => $jenis,
            "tgl_pinjam" => $post["tgl_pinjam"],
            "no_pinjam" => $post["no_pinjam"],
            "referensi" => $post["referensi"],
            "unit_kerja" => $post["unit_kerja"],
            "nama_peminjam" => $post["nama_peminjam"],
            "keperluan" => $post["keperluan"],
            "catatan" => $post["catatan"],
            "no_surat" => $post["no_surat"],
            "kode_klas" => $post["kode_klas"],
            "ringkasan" => $post["ringkasan"],
        );

        $cek = $this->db->insert("tb_pinjam", $data);

        if ($cek) {
            $msg = array("res" => 1, "msg" => "Data Peminjaman Berhasil Dibuat");
        } else {
            $msg = array("res" => 0, "msg" => "Data Peminjaman Gagal Dibuat");
        }

        return $msg;
    }

    // get Last Number
    public function last_num()
    {
        $data = $this->db->query("SELECT MAX(no_pinjam) AS last_num FROM tb_pinjam")->row();
        $last = $data->last_num + 1;

        return $last;
    }

    // get Unit Kerja
    public function get_unit_kerja()
    {
        $this->db->order_by("level", "ASC");
        $data = $this->db->get("tb_posisi")->result();

        return $data;
    }

    // get all pinjam
    public function get_data()
    {
        $this->db->order_by("no_pinjam", "ASC");
        $data = $this->db->get_where("v_pinjam", ["status_pinjam" => 0])->result();

        return $data;
    }
    public function get_data_kembali()
    {
        $this->db->order_by("no_pinjam", "ASC");
        $data = $this->db->get_where("v_pinjam", ["status_pinjam" => 1])->result();

        return $data;
    }
}

/* End of file M_pinjam.php */
