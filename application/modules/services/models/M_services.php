<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_services extends CI_Model
{

    public function getDataAll($tabel)
    {
        return $this->db->get($tabel);
    }

    public function getTransaksi($where)
    {
        $this->db->select('*');
        $this->db->from('tb_transaksi');
        $this->db->join('tb_peminjam', 'tb_transaksi.id_peminjam = tb_peminjam.id_peminjam');
        $this->db->join('tb_barang', 'tb_transaksi.id_barang = tb_barang.id_barang');
        $this->db->where($where);
        $this->db->order_by('tb_transaksi.tgl_pinjam', 'asc');


        return $this->db->get();
    }

    public function getNota($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );

        $this->db->select('*');
        $this->db->from('tb_nota_dinas');
        $this->db->join('tb_dpa', 'tb_nota_dinas.id_dpa = tb_dpa.id_dpa');
        $this->db->join('v_nota_detail', 'tb_nota_dinas.nomor_dinas = v_nota_detail.nomor_dinas');
        $this->db->where($where);
        return $this->db->get();
    }

    public function getKepala($id)
    {
        $where = array(
            'posisi_user' => $id,
            'level_user' => '2'
        );

        $data = $this->db->get_where('tb_pegawai', $where)->row();
        return $data;
    }

    public function updateNota($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );
        $data = array(
            'valid' => 1
        );

        $cek = $this->db->update('tb_nota_dinas', $data, $where);

        if ($cek) {
            $msg = array('res' => 1, 'msg' => 'Validasi Berhasil.');
        } else {
            $msg = array('res' => 0, 'msg' => 'Validasi Gagal.');
        }

        return json_encode($msg);
    }

    public function getSurtug($id)
    {
        $where = array(
            'id_surat_tugas' => $id
        );

        $hasil = $this->db->get_where('tb_surat_tugas', $where);
        return $hasil;
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

    public function search($title)
    {
        $this->db->like('pengirim', $title, 'both');
        $this->db->order_by('pengirim', 'ASC');
        $this->db->limit(5);
        return $this->db->get('tb_surat_masuk_2')->result();
    }

    public function search_wil($title)
    {
        $this->db->like('wilayah', $title, 'both');
        $this->db->order_by('wilayah', 'ASC');
        $this->db->limit(5);
        return $this->db->get('tb_surat_masuk_2')->result();
    }

    public function search_2($title)
    {
        $this->db->like('penerima', $title, 'both');
        $this->db->order_by('penerima', 'ASC');
        $this->db->limit(5);
        return $this->db->get('tb_surat_keluar_2')->result();
    }

    public function search_wil_2($title)
    {
        $this->db->like('wilayah', $title, 'both');
        $this->db->order_by('wilayah', 'ASC');
        $this->db->limit(5);
        return $this->db->get('tb_surat_keluar_2')->result();
    }

    public function get_klasifikasi()
    {
        $search = $_GET['search'];

        $this->db->select("*");
        $this->db->from('tb_klasifikasi');
        $this->db->like("sub_sub_klasifikasi", $search);
        $data = $this->db->get()->result();

        return $data;
    }


    public function get_surat($id, $surat)
    {
        if ($surat == "suratMasuk") {
            $table = "tb_surat_masuk_2";
            $where = array(
                'id_surat_masuk' => $id
            );

            $data = $this->db->get_where($table, $where);
        } else {
            $table = "tb_surat_keluar_2";
            $where = array(
                'id_surat_keluar' => $id
            );
            $this->db->from($table);
            $this->db->join("tb_posisi", "tb_surat_keluar_2.unit_kerja=tb_posisi.id_posisi");
            $this->db->where($where);
            $data = $this->db->get();
        }



        return $data->row();
    }

    public function get_dispo($nomor_surat)
    {
        $this->db->select("posisi");
        $this->db->from("tb_dispo_kadin");
        $this->db->join("tb_posisi", "tb_dispo_kadin.posisi_kadin=tb_posisi.id_posisi");
        $this->db->where("nomor_dinas", $nomor_surat);
        $data = $this->db->get()->result_array();

        return $data;
    }

    public function get_surat_no($no, $jenis)
    {
        if ($jenis == "suratMasuk") {
            $table = "tb_surat_masuk_2";
        } else {
            $table = "tb_surat_keluar_2";
        }

        $pinjam = $this->get_daftar_pinjam();

        $this->db->from($table);
        $this->db->where("nomor_surat", $no);
        if (count($pinjam) != 0) {
            $this->db->where_not_in("nomor_dinas", $pinjam);
        }

        $data = $this->db->get();

        return $data;
    }

    private function get_daftar_pinjam()
    {
        $data = $this->db->get_where("tb_pinjam", ["status_pinjam" => 0])->result();

        $dt = array();
        $no = 0;
        foreach ($data as $key) {
            $dt[$no] = $key->nomor_dinas;
            $no++;
        }

        return $dt;
    }

    public function get_surat_tugas($kode_seksi, $jenis)
    {
        $seksi = array(
            "DJ001" =>  '5',
            "DJ002" =>  '6',
            "DJ004" =>  '7',
            "DJ005" =>  '8',
            "DJ003" =>  '9',
            "DJ006" => '10',
            "DJ008" => '11',
            "DJ010" => '12',
            "DJ011" => '13',
            "DJ007" => '14',
            "DJ009" => '15',
            "DJ012" => '16',
            "DJ013" => '17'
        );

        $bulan = date("m");
        $tahun = date("Y");

        if ($jenis == "bbm") {
            $data = $this->db->query("SELECT dasar_surat, mata_bbm AS nominal FROM tb_surat_tugas WHERE sppd_surat = 1 AND validasi = 1 AND MONTH(created_at) <= '$bulan' AND YEAR(created_at) = '$tahun' AND created_by = '$seksi[$kode_seksi]' AND dasar_surat LIKE 'SM-%' AND mata_bbm != 0 ORDER BY created_at DESC")->result();
        } elseif ($jenis == "perdin") {
            $data = $this->db->query("SELECT dasar_surat, mata_perdin AS nominal FROM tb_surat_tugas WHERE sppd_surat = 1 AND validasi = 1 AND MONTH(created_at) <= '$bulan' AND YEAR(created_at) = '$tahun' AND created_by = '$seksi[$kode_seksi]' AND dasar_surat LIKE 'SM-%' AND mata_perdin != 0 ORDER BY created_at DESC")->result();
        }

        $no = 0;
        $hsl = array();
        foreach ($data as $key) {
            $hsl[$no++] = array(
                "surat" => $key->dasar_surat,
                "nominal" => $key->nominal,
            );
        }

        return $hsl;
    }
}

/* End of file ModelName.php */
