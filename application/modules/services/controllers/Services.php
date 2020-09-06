<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends MY_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model("M_services");
        header("Access-Control-Allow-Origin: *");
    }

    public function postNota($id)
    {
        $model = $this->M_services;
        $data = $model->getNota($id)->result();
        $send = array();
		$bulan = array(
            "Januari" => "1",
            "Februari" => "2",
            "Maret" => "3",
            "April" => "4",
            "Mei" => "5",
            "Juni" => "6",
            "Juli" => "7",
            "Agustus" => "8",
            "September" => "9",
            "Oktober" => "10",
            "November" => "11",
            "Desember" => "12"
        );
		$seksi = array(
			'5' => "DJ001",
			'6' => "DJ002",
			'7' => "DJ004",
			'8' => "DJ005",
			'9' => "DJ003",
			'10' => "DJ006",
			'11' => "DJ008",
			'12' => "DJ010",
			'13' => "DJ011",
			'14' => "DJ007",
			'15' => "DJ009",
			'16' => "DJ012",
			'17' => "DJ013"
        );
        
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, "http://sikupat2020.sikdkkjepara.net/sendNota.php");
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);

        $hsl = 0;
        foreach ($data as $row) {
            $kpl = $model->getKepala($row->created_by);
            $value = array(
                'kode_rekening' => $row->kode_rekening,
                'bulan' => $bulan[$row->bulan],
                'alasan' => $row->alasan,
                'rok' => $row->rok,
                'nominal' => $row->nominal,
                'seksi' => $seksi[$row->created_by],
                'dpa_sikupat' => $row->kode_sikupat,
                'nip' => $kpl->nip_pegawai
            );
            
            $json = json_encode($value);
            curl_setopt($handle, CURLOPT_POSTFIELDS, $json);
            curl_setopt($handle, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($handle, CURLOPT_HTTPHEADER, [                                                                         
                'Content-Type: application/json',                                                                                
                'Content-Length: ' . strlen($json),                                                                       
            ]);

            $result = curl_exec($handle);
            if (curl_errno($handle)) {
                $error_msg = curl_error($handle);
            }
        }

        $hasil = json_decode($model->updateNota($id), true);
        
        if($hasil['res']){
            $this->session->set_flashdata('success', $hasil['msg']);
        } else {
            $this->session->set_flashdata('gagal', $hasil['msg']);
        }
    
        redirect('../nota_dinas','location');
        
    }

    public function postSurtug($id)
    {
		$seksi = array(
			'5' => "DJ001",
			'6' => "DJ002",
			'7' => "DJ004",
			'8' => "DJ005",
			'9' => "DJ003",
			'10' => "DJ006",
			'11' => "DJ008",
			'12' => "DJ010",
			'13' => "DJ011",
			'14' => "DJ007",
			'15' => "DJ009",
			'16' => "DJ012",
			'17' => "DJ013"
        );

        $model = $this->M_services;
        $data = $model->getSurtug($id)->row();
        $perdin = ($data->mata_perdin == '') ? '0' : $data->mata_perdin;
        $bbm = ($data->mata_bbm == '') ? '0' : $data->mata_bbm;
        $dalam_luar = $data->dalam_luar_tugas;
        $bulan = date('n', strtotime($data->tgl_kegiatan));
        $kegiatan = $data->nama_kegiatan.' tanggal '.$this->getTanggal($data->tgl_kegiatan, $data->tgl_kegiatan_2);

        $dasar = explode('-', $data->dasar_surat);

        $kpl = $model->getKepala($data->created_by);

        if ($dasar[0] == 'SM') {
            $handle = curl_init();
            curl_setopt($handle, CURLOPT_URL, "http://sikupat2020.sikdkkjepara.net/sendSurtug.php");
            curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
    
            if ($perdin != '0') {
                if ($dalam_luar == '1') {
                    $id_spj = '58';
                } else {
                    $id_spj = '57';
                }
                $value = array(
                    'id_spj' => $id_spj,
                    'bulan' => $bulan,
                    'kegiatan' => $kegiatan,
                    'nominal' => $perdin,
                    'seksi' => $seksi[$data->created_by],
                    'nip' => $kpl->nip_pegawai
                );
    
                $json = json_encode($value);
                curl_setopt($handle, CURLOPT_POSTFIELDS, $json);
                curl_setopt($handle, CURLOPT_CUSTOMREQUEST, "POST");
                curl_setopt($handle, CURLOPT_HTTPHEADER, [                                                                         
                    'Content-Type: application/json',                                                                                
                    'Content-Length: ' . strlen($json),                                                                       
                ]);
    
                $result = curl_exec($handle);
    
                echo $result;
            }
    
            if ($bbm != '0') {
                $id_spj = '53';
                $value = array(
                    'id_spj' => $id_spj,
                    'bulan' => $bulan,
                    'kegiatan' => $kegiatan,
                    'nominal' => $bbm,
                    'seksi' => $seksi[$data->created_by],
                    'nip' => $kpl->nip_pegawai
                );
                
                $json = json_encode($value);
                curl_setopt($handle, CURLOPT_POSTFIELDS, $json);
                curl_setopt($handle, CURLOPT_CUSTOMREQUEST, "POST");
                curl_setopt($handle, CURLOPT_HTTPHEADER, [                                                                         
                    'Content-Type: application/json',                                                                                
                    'Content-Length: ' . strlen($json),                                                                       
                ]);
    
                $result2 = curl_exec($handle);
                echo $result2;
            }
        }

        $hasil = json_decode($model->valid($id), true);
        if($hasil['res']){
        //   $model2 = $this->M_default;
        //   $model2->_push();
          $this->session->set_flashdata('success', $hasil['msg']);
        } else {
          $this->session->set_flashdata('gagal', $hasil['msg']);
        }
    
        redirect('../surat_tugas','location');
    }

    public function getTanggal($tgl, $tgl2)
    {
        $bln1 = date("m", strtotime($tgl));
        $bln2 = date("m", strtotime($tgl2));

        if ($bln1 != $bln2) {
            $hsl = $this->tgl_ind($tgl)." - ".$this->tgl_ind($tgl2);
        } else {
            $hsl = date("d", strtotime($tgl));
            if ($tgl != $tgl2) {
                $hsl .= " - ".date("d", strtotime($tgl2));
            }
            $hsl .= " ".$this->getBulan($tgl)." ".date("Y", strtotime($tgl));
        }

        return $hsl;
    }

    public function tgl_ind($date)
    {
        /** ARRAY HARI DAN BULAN**/	
            $Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
                
        /** MEMISAHKAN FORMAT TANGGAL, BULAN, TAHUN, DENGAN SUBSTRING**/		
            $tahun = substr($date, 0, 4);
            $bulan = substr($date, 5, 2);
            $tgl = substr($date, 8, 2);
            $waktu = substr($date, 11, 8);
            
            $result = $tgl." ".$Bulan[(int)$bulan-1]." ".$tahun;
            return $result;
    }

    public function getBulan($tgl)
    {
		$b = date("m", strtotime($tgl));
		$Bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
		
		return $Bulan[(int)$b-1];
    }
}