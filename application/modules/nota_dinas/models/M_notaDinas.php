<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_notaDinas extends CI_Model {


    public function save()
    {
		$data = array(
			"tgl_nota_dinas" => $_POST['tgl_nota_dinas'],
			"nomor_nota_dinas" => $_POST['nomor_nota_dinas'],
			"tujuan_nota_dinas" => $_POST['tujuan_nota_dinas'],
			"sifat_nota_dinas" => $_POST['sifat_nota_dinas'],
			"lampiran_nota_dinas" => $_POST['lampiran_nota_dinas'],
			"perihal_nota_dinas" => $_POST['perihal_nota_dinas'],
			"tgl_kegiatan" => $_POST['tgl_kegiatan'],
			"tempat_kegiatan" => $_POST['tempat_kegiatan'],
			"acara_kegiatan" => $_POST['acara_kegiatan'],
			"isi_nota_dinas" => $_POST['isi_nota_dinas'],
			"created_at" => $_POST['created_at'],
            "created_by" => $this->session->userdata('posisi')
		);

        $cek = $this->db->insert('tb_nota_dinas', $data);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"Nota Dinas Berhasil Ditambah");
        } else {
            $msg = array("res"=> 0, "msg"=>"Nota Dinas Gagal Ditambah");
        }

        return json_encode($msg);
    }

    public function save2()
    {
        $h = $this->db->query("SELECT MAX(nomor_dinas) as maks FROM tb_nota_dinas")->row();
        $nomor_dinas = $h->maks + 1;

		$data = array(
			"tgl_nota_dinas" => $_POST['tgl_nota_dinas'],
			"nomor_nota_dinas" => NULL,
			"tujuan_nota_dinas" => 'Kepala Subag Perencanaan, Evaluasi dan Keuangan',
			"sifat_nota_dinas" => '-',
			"lampiran_nota_dinas" => '-',
			"perihal_nota_dinas" => 'Penambahan Anggaran Bulan '.$_POST['bulan'].' '.date("Y").' - '.$this->session->userdata('jabatan'),
			"tgl_kegiatan" => NULL,
			"tempat_kegiatan" => NULL,
			"acara_kegiatan" => NULL,
			"isi_nota_dinas" => NULL,
			"created_at" => date('Y-m-d'),
            "created_by" => $this->session->userdata('posisi'),
            'nomor_dinas' => $nomor_dinas,
            "id_dpa" => $_POST['kegiatan'],
            "bulan" =>$_POST['bulan']
        );
        
        $nota_detail = $this->_insertDetail($nomor_dinas);

        if ($nota_detail) {
            $cek = $this->db->insert('tb_nota_dinas', $data);
    
            if ($cek) {
                $msg = array("res"=> 1, "msg"=>"Nota Dinas Berhasil Ditambah");
            } else {
                $msg = array("res"=> 0, "msg"=>"Nota Dinas Gagal Ditambah");
            }
        }
        return json_encode($msg);
    }
    
    public function edit2($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );

        $nomor_dinas = $_POST['nomor_dinas'];

		$data = array(
			"tgl_nota_dinas" => $_POST['tgl_nota_dinas'],
			"perihal_nota_dinas" => 'Penambahan Anggaran Bulan '.$_POST['bulan'].' '.date("Y").' - '.$this->session->userdata('jabatan'),
            "id_dpa" => $_POST['kegiatan'],
            "bulan" =>$_POST['bulan']
        );

        $delNotaDetail = $this->_deleteNota($nomor_dinas);

        if ($delNotaDetail) {
            $nota_detail = $this->_insertDetail($nomor_dinas);
    
            if ($nota_detail) {

                $this->db->where($where);
                $cek = $this->db->update('tb_nota_dinas', $data);
        
                if ($cek) {
                    $msg = array("res"=> 1, "msg"=>"Nota Dinas Berhasil Dirubah");
                } else {
                    $msg = array("res"=> 0, "msg"=>"Nota Dinas Gagal Dirubah");
                }
            }
        }
        
        return json_encode($msg);
    }

    public function _insertDetail($nomor)
    {
        $rekening = $_POST['id_rekening'];
        $jumlah = $_POST['jumlah'];
        $rok = $_POST['rok'];
        $alasan = $_POST['alasan'];

        $total = count($rekening);
        $hsl = 0;

        for ($i=0; $i < $total ; $i++) { 
            $data = array(
                'nomor_dinas' => $nomor,
                'id_rekening' => $rekening[$i],
                'nominal' => $jumlah[$i],
                'rok' => $rok[$i],
                'alasan' => $alasan[$i],
            );

            $cek = $this->db->insert('tb_nota_detail', $data);

            if ($cek) {
                $hsl = 1;
            } else {
                $hsl = 0;
            }
        }

        return $hsl;
    }

    public function _deleteNota($nomor)
    {
        $cek = $this->db->delete('tb_nota_detail', ['nomor_dinas'=> $nomor]);
        
        return $cek;
    }

    public function delete($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );
        $cek = $this->db->delete('tb_nota_dinas', $where);
        
        if ($cek) {
            $msg = array("res"=> 1, "msg"=> 'Nota Dinas berhasil dihapus');
        } else {
            $msg = array("res"=> 0, "msg"=> 'Nota Dinas gagal dihapus');
        }
        
        return json_encode($msg);
    }
    
    public function delete2($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );
        
        $h = $this->db->get_where('tb_nota_dinas', $where)->row();
        $nomor = $h->nomor_dinas;

        $cek = $this->db->delete('tb_nota_dinas', $where);
        $cek2 = $this->_deleteNota($nomor);
        
        if ($cek && $cek2) {
            $msg = array("res"=> 1, "msg"=> 'Nota Dinas berhasil dihapus');
        } else {
            $msg = array("res"=> 0, "msg"=> 'Nota Dinas gagal dihapus');
        }
        
        return json_encode($msg);
    }

    public function getNotaDinasId($id)
    {
        $data = $this->db->get_where('tb_nota_dinas', ['id_nota_dinas'=>$id]);

        return $data;
    }

    public function edit($id)
    {
        $where = array(
            'id_nota_dinas' => $id
        );
        
        $post = $this->input->post();
        $data = array(
            "tgl_nota_dinas" => $post['tgl_nota_dinas'],
            "nomor_nota_dinas" => $post['nomor_nota_dinas'],
            "tujuan_nota_dinas" => $post['tujuan_nota_dinas'],
            "sifat_nota_dinas" => $post['sifat_nota_dinas'],
            "lampiran_nota_dinas" => $post['lampiran_nota_dinas'],
            "perihal_nota_dinas" => $post['perihal_nota_dinas'],
            "tgl_kegiatan" => $post['tgl_kegiatan'],
            "tempat_kegiatan" => $post['tempat_kegiatan'],
            "acara_kegiatan" => $post['acara_kegiatan'],
			"isi_nota_dinas" => $post['isi_nota_dinas']
        );

        $this->db->where($where);
        $cek = $this->db->update('tb_nota_dinas', $data);

        if ($cek) {
            $msg = array("res"=> 1, "msg"=>"Nota Dinas Berhasil Dirubah");
        } else {
            $msg = array("res"=> 0, "msg"=>"Nota Dinas Gagal Dirubah");
        }

        return json_encode($msg);
    }

    public function getRekening()
    {
        $where = array(
            'id_rekening' => $_POST['id_rek']
        );

        $total = $_POST['rok'] + $_POST['jml'];
        $jml = array(
            'rok' => number_format($_POST['rok'], 0, ',', '.'),
            'jumlah' => number_format($_POST['jml'], 0, ',', '.'),
            'total' => number_format($total, 0, ',', '.'),
            'alasan' => ucfirst($_POST['alasan'])
        );

        $data = $this->db->get_where('tb_rekening', $where)->row();

        $x = array(
            'id_rekening' => $data->id_rekening,
            'kode_rekening' => $data->kode_rekening,
            'uraian_rekening' => $data->uraian_rekening
        );
        $data2 = array_merge($x, $jml);
        return json_encode($data2);
    }

    public function getNotaDetail($nomor)
    {
        $where = array(
            'tb_nota_detail.nomor_dinas' => $nomor
        );
        $this->db->select('*');
        $this->db->from('tb_nota_detail');
        $this->db->join('tb_rekening', 'tb_nota_detail.id_rekening = tb_rekening.id_rekening');
        $this->db->where($where);
        $data = $this->db->get();

        return $data;
    }

    public function getDpaBy($id)
    {
        $where = array(
            'id_dpa' => $id
        );

        $data = $this->db->get_where('tb_dpa', $where)->row();

        return $data;
    }
}

/* End of file ModelName.php */
