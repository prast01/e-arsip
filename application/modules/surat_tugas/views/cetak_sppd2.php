<?php
	/** format tanggal Indo**/
	
	date_default_timezone_set('Asia/Jakarta');
	function tgl_ind($date) {
	
	/** ARRAY HARI DAN BULAN**/	
		$Hari = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
		$Bulan = array("Januari","Febuari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
			
	/** MEMISAHKAN FORMAT TANGGAL, BULAN, TAHUN, DENGAN SUBSTRING**/		
		$tahun = substr($date, 0, 4);
		$bulan = substr($date, 5, 2);
		$tgl = substr($date, 8, 2);
		$waktu = substr($date, 11, 8);		
		$hari = date("w", strtotime($date));
		
		$result = $tgl." ".$Bulan[(int)$bulan-1]." ".$tahun;
		return $result;
	}

	function getHari($tgl)
	{
		$h = date("w", strtotime($tgl));
		$Hari = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");

		return $Hari[$h];
	}

	function getBulan($tgl)
	{
		$b = date("m", strtotime($tgl));
		$Bulan = array("Januari","Febuari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
		
		return $Bulan[(int)$b-1];
	}

	$tanggal = tgl_ind($tgl); // ini adalah kode untuk menampilkan fungsi pada file functiopn_tanggal.php 

	function Terbilang($nilai) {
        $huruf = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
        if($nilai==0){
            return "Kosong";
        }elseif ($nilai < 12&$nilai!=0) {
            return "" . $huruf[$nilai];
        } elseif ($nilai < 20) {
            return Terbilang($nilai - 10) . " Belas ";
        } elseif ($nilai < 100) {
            return Terbilang($nilai / 10) . " Puluh " . Terbilang($nilai % 10);
        } elseif ($nilai < 200) {
            return " Seratus " . Terbilang($nilai - 100);
        } elseif ($nilai < 1000) {
            return Terbilang($nilai / 100) . " Ratus " . Terbilang($nilai % 100);
        } elseif ($nilai < 2000) {
            return " Seribu " . Terbilang($nilai - 1000);
        } elseif ($nilai < 1000000) {
            return Terbilang($nilai / 1000) . " Ribu " . Terbilang($nilai % 1000);
        } elseif ($nilai < 1000000000) {
            return Terbilang($nilai / 1000000) . " Juta " . Terbilang($nilai % 1000000);
        }elseif ($nilai < 1000000000000) {
            return Terbilang($nilai / 1000000000) . " Milyar " . Terbilang($nilai % 1000000000);
        }elseif ($nilai < 100000000000000) {
            return Terbilang($nilai / 1000000000000) . " Trilyun " . Terbilang($nilai % 1000000000000);
        }elseif ($nilai <= 100000000000000) {
            return "Maaf Tidak Dapat di Prose Karena Jumlah nilai Terlalu Besar ";
        }
	}
	
	foreach ($speg as $key) {
		if ($key['no'] == '0') {
			$nama_pegawai = $key['nama_pegawai'];
			$nip_pegawai = $key['nip_pegawai'];
			$jabatan = $key['jabatan'];
			$pangkat = $key['pangkat'];
		}
	}
	if ($surat->tgl_kegiatan != $surat->tgl_kegiatan_2) {
		$dt1 = new DateTime($surat->tgl_kegiatan);
		$dt2 = new DateTime($surat->tgl_kegiatan_2);
		$telat = $dt1->diff($dt2);
		$hari = $telat->days + 1;
	} else {
		$hari = 1;
	}
	
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Cetak</title>
		<style>
			@media print {
				.pagebreak {
					clear: both;
					page-break-after: always;
				}
				td, th {
					font-size: 12px;
				}
			}
		
			.footer{
				position : fixed;
				left : 0;
				bottom : 0;
				width : 100%;
				text-align : left;
			}
		</style>
        <script type="text/javascript">
            function pindah(id) {
                location.href='../../surat_tugas/preview/'+id;
            }
        </script>
	</head>
	<body onLoad="" onclick="">
		<table border="1" style="border-collapse:collapse;" width="100%">
			<tr>
				<td width="50%">
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline"></p>
					<p></p>
				</td>
				<td>
					<table width="100%">
						<tr>
							<td width="5%">I.</td>
							<td width="31%">Berangkat dari</td>
							<td width="1%">:</td>
							<td width="63%">DKK Jepara</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="4">(Tempat Kedudukan)</td>
						</tr>
						<tr>
							<td></td>
							<td>Ke</td>
							<td>:</td>
							<td><?php echo $surat->lokasi_kegiatan; ?></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td><?php echo tgl_ind($surat->tgl_kegiatan); ?></td>
						</tr>
						<tr>
							<td colspan="4"><hr></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center">Ka. Dinas Kesehatan Kabupaten Jepara</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><u>Mudrikatun, S.SiT, SKM, MM.Kes, MH</u></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center">NIP. 19690610 199003 2 010</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="50%">
					<table width="100%">
						<tr>
							<td width="5%">II.</td>
							<td width="31%">Tiba di</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%">
						<tr>
							<td width="5%">&nbsp;</td>
							<td width="31%">Berangkat dari</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Ke</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="50%">
					<table width="100%">
						<tr>
							<td width="5%">III.</td>
							<td width="31%">Tiba di</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%">
						<tr>
							<td width="5%"></td>
							<td width="31%">Berangkat dari</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Ke</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="50%">
					<table width="100%">
						<tr>
							<td width="5%">IV.</td>
							<td width="31%">Tiba di</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%">
						<tr>
							<td width="5%">&nbsp;</td>
							<td width="31%">Berangkat dari</td>
							<td width="1%">:</td>
							<td width="63%"></td>
						</tr>
						<tr>
							<td></td>
							<td>Ke</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">(............................................................)</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP.</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="50%">
					<table width="100%">
						<tr>
							<td width="5%">V.</td>
							<td width="31%">Tiba di</td>
							<td width="1%">:</td>
							<td width="63%">DKK Jepara</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3">(Tempat Kedudukan)</td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tangal</td>
							<td>:</td>
							<td><?php echo tgl_ind($surat->tgl_kegiatan_2) ?></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">Ka. Dinas Kesehatan Kabupaten Jepara</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left"><u>Mudrikatun, S.SiT, SKM, MM.Kes, MH</u></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP. 19690610 199003 2 010</td>
						</tr>
					</table>
				</td>
				<td width="50%">
					<table width="100%">
						<tr>
							<td width="5%">&nbsp;</td>
							<td colspan="3"><font size="-2">Telah diperiksa dengan keterangan bahwa perjalanan tersebut</font></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3"><font size="-2">atas perintahnya dan semata-mata untuk kepentingan jabatan</font></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3"><font size="-2">dalam waktu yang sesingkat-singkatnya</font></td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left"><font size="-2">Pejabat Pelaksana Keuangan SKPD(PPK-SKPD)</font></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="center"><br><br><br></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left"><u>Drs. Adi Bintoro, MM</u></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3" align="left">NIP. 19630326 199203 1 002</td>
						</tr>
					</table>
				</td>				
			</tr>
			<tr>
				<td colspan="2">
					<table width="100%">
						<tr>
							<td width="5%">VI.</td>
							<td colspan="3">Catatan lain-lain</td>
						</tr>

					</table>				
				</td>
			</tr>							
		</table>
		<table width="100%">
			<tr>
				<td width="5%">VII.</td>
				<td colspan="2">PERHATIAN</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td colspan="2"><font size="-2">Pejabat yang berwenang menerbitkan SPD, pegawai yang melakukan perjalanan dinas, para pejabat yang<br>
				mengesahkan tanggal berangkat/tiba, serta bendaharawan bertanggungjawab berdasarkan peraturan-peraturan<br>
				keuangan Negara apabila Negara menderita kerugian akibat kesalahan, kealpaannya</font>
				</td>
			</tr>
		</table>
			
	</body>
</html>
