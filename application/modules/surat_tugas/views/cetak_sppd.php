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

	$agt = count($speg);

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
			}
			td, th {
				font-size: 15px;
			}
			.footer{
				position : fixed;
				left : 0;
				bottom : 0;
				width : 100%;
				text-align : left;
			}
			.head1 {
				font-family: Arial;
				font-size: 14pt
			}
			.head2 {
				font-family: Arial;
				font-size: 18pt
			}
			.head3 {
				font-family: Arial;
				font-size: 12pt
			}
		</style>
        <script type="text/javascript">
            function pindah(id) {
                location.href='../../surat_tugas/preview2/'+id;
            }
        </script>
	</head>
	<body onLoad="window.print()" onclick="pindah('<?php echo $surat->id_surat_tugas; ?>')">
		<table border="0" style="border-collapse:collapse; border-bottom:3px solid" width="100%">
			<thead>
				<tr>
					<th width="20%">
						<img src="<?php echo base_url(LOGO_JEPARA); ?>" width="85px" style="padding: 5px 5px 5px 5px; border: 0px solid">
					</th>
					<td align="center">
						<h2 class="head1" style="margin-bottom:-10px">PEMERINTAH KABUPATEN JEPARA</h2>
						<h1 class="head2" style="margin-bottom:-10px">DINAS KESEHATAN</h1>
						<p class="head3" style="margin-bottom:-10px">Jalan Kartini Nomor 44 Telp (0291)591427, 591743 Fax (0291)591427</p>
						<p class="head3" style="margin-bottom:-10px">E-mail : dinkeskabjepara@yahoo.co.id</p>
						<p class="head3">JEPARA Kode Pos 59411</p>
					</td>
				</tr>
			</thead>
		</table>
		<br>
		<table border="0" width="100%">
			<tr>
				<td width="66%"></td>
				<td width="12%">Lembar ke</td>
				<td width="22%">:</td>
			</tr>
			<tr>
				<td></td><td>Kode No</td><td>: 094</td>
			</tr>
			<tr>
				<td></td><td>Nomor</td><td>: <?php echo sprintf("%04s", $surat->nomor_sppd) ?></td>
			</tr>
		</table>
		<table border="0" width="100%">
			<tr>
				<td align="center" colspan="3">
					<h2><u>SURAT PERINTAH PERJALANAN DINAS (SPPD)<u></h2>
			  	</td>
			</tr>
		</table>
		<table border="1" style="border-collapse:collapse;" width="100%">
			<tr>
				<td width="3%" align="center" valign="middle">1</td>
				<td width="47%"><p style="margin-bottom:10px; margin-top:10px">Pejabat berwenang yang memberi perintah</p></td>
				<td colspan="2">Kepala Dinas Kesehatan Kabupaten Jepara</td>
			</tr>
			<tr>
				<td align="center" valign="middle">2</td>
				<td><p style="margin-bottom:10px; margin-top:10px">Nama Pegawai<br>NIP Pegawai</p></td>
				<td colspan="2"><?php echo $nama_pegawai; ?><br>NIP. <?php echo $nip_pegawai; ?></td>
			</tr>
			<tr>
				<td align="center" valign="middle">3</td>
				<td>
					<p style="margin-bottom:10px; margin-top:10px">
					a. Pangkat dan Golongan<br>
					b. Jabatan<br>
					c. Tingkat biaya perjalanan dinas
					</p>
				</td>
				<td colspan="2">
					<p style="margin-bottom:10px; margin-top:10px">
					a. <?php echo $pangkat; ?>
					<br>
					b. <?php echo $jabatan; ?>
					<br>
					c. 
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle">4</td>
				<td><p style="margin-bottom:15px; margin-top:15px">Maksud Perjalanan Dinas</p></td>
				<td colspan="2"><?php echo $surat->nama_kegiatan; ?></td>
			</tr>
			<tr>
				<td align="center" valign="middle">5</td>
				<td><p style="margin-bottom:10px; margin-top:10px">Alat angkutan yang dipergunakan</p></td>
				<td colspan="2">Kendaraan <?php echo $surat->kendaraan; ?> / <?php echo $surat->nopol; ?></td>
			</tr>
			<tr>
				<td align="center" valign="middle">6</td>
				<td>
					<p style="margin-bottom:10px; margin-top:10px">
					a. Tempat Berngkat<br>
					b. Tempat Tujuan<br>
					</p>
				</td>
				<td colspan="2">
					<p style="margin-bottom:10px; margin-top:10px">
					a. Dinas Kesehatan Kabupaten Jepara
					<br>
					b. <?php echo $surat->lokasi_kegiatan; ?>
					<br>
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle">7</td>
				<td>
					<p style="margin-bottom:10px; margin-top:10px">
						a. Lamanya Perjalanan Dinas<br>
						b. Tanggal Berangkat<br>
						c. Tanggal Harus Kembali/tiba ditempat baru
					</p>
				</td>
				<td colspan="2">
					<p style="margin-bottom:10px; margin-top:10px">
						a. <?php echo $hari." (".Terbilang($hari).") hari"; ?>
						<br>
						b. <?php echo tgl_ind($surat->tgl_kegiatan); ?>
						<br>
						c. <?php echo tgl_ind($surat->tgl_kegiatan_2); ?>
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle">8</td>
				<td>Pengikut : Nama</td>
				<td width="17%" align="center">Pangkat/Gol.</td>
				<td width="33%" align="center">Keterangan</td>
			</tr>
			<tr>
				<td align="center" valign="middle"></td>
				<td>
					<p style="margin-bottom:10px; margin-top:10px; font-size: 10px">
						<?php
							if($agt == 1){
								echo "1.<br>2.<br>3.<br>4.<br>";
							} else {
								$no = 1;
								foreach ($speg as $key) {
									if ($key['no'] != '0') {
										$nama_pegawai = $key['nama_pegawai'];
										echo $no.". ".$nama_pegawai."<br>";
										$no++;
									}
								}
							}
						?>
					</p>
				</td>
				<td>
					<p style="margin-bottom:0px; margin-top:0px; font-size: 10px">
						<?php
							if($agt == 1){
								echo "1.<br>2.<br>3.<br>4.<br>";
							} else {
								$no = 1;
								foreach ($speg as $key) {
									if ($key['no'] != '0') {
										$pangkat = $key['pangkat'];
										echo $no.". ".$pangkat."<br>";
										$no++;
									}
								}
							}
						?>
					</p>
				</td>
				<td>
					<p style="margin-bottom:0px; margin-top:0px; font-size: 10px">
						<?php
							if($agt == 1){
								echo "1.<br>2.<br>3.<br>4.<br>";
							} else {
								$no = 1;
								foreach ($speg as $key) {
									if ($key['no'] != '0') {
										$jabatan = $key['jabatan'];
										echo $no.". ".$jabatan."<br>";
										$no++;
									}
								}
							}
						?>
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle">9</td>
				<td>
					<p style="margin-bottom:10px; margin-top:10px">
					Pembebanan Anggaran<br>
					a. Instansi<br>
					b. Mata Anggaran
					</p>
				</td>
				<td colspan="2">
					<p style="margin-bottom:10px; margin-top:10px">
					 
					<br>
					a. Dinas Kesehatan Kabupaten Jepara
					<br>
					b. <?php echo $mata; ?>
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle">10</td>
				<td>
				<p style="margin-bottom:0px; margin-top:0px">Keterangan lain-lain</p>
				</td>
				<td colspan="2"></td>
			</tr>
		</table>
		<br>
		<table border="0" style="border-collapse:collapse;" width="100%">
			<tr>
				<td width="50%">Coret yang tidak perlu</td>
				<td width="16%">Dikeluarkan di</td>
				<td width="1%">:</td>
				<td width="15%">Jepara</td>
				<td></td>
			</tr>
			<tr>
				<td width="50%"></td>
				<td width="16%">Pada Tanggal</td>
				<td>:</td>
				<td><?php echo $tanggal; ?></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="3"><hr></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="4">
					<p style="margin-bottom:-10px; margin-top:-10px">Kepala Dinas Kesehatan</p>
					<p>Kabupaten Jepara</p>
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline">Mudrikatun, S.SiT, SKM, MM.Kes, MH</p>
					<p>NIP. 19690610 199003 2 010</p>
				</td>
			</tr>
		</table>
		
		<!-- <div class="pagebreak"></div>
		
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
							<td width="63%">Dinkes Kab. Jepara</td>
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
							<td colspan="3" align="center">Kepala Dinas Kesehatan Kabupaten Jepara</td>
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
							<td width="63%">Dinkes Kab. Jepara</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3">(Tempat Kedudukan)</td>
						</tr>
						<tr>
							<td></td>
							<td>Pada Tanggal</td>
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
							<td colspan="3" align="left">Kepala Dinas Kesehatan Kabupaten Jepara</td>
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
							<td colspan="3" align="left"><font size="-2">Pejabat Penatausahaan Keuangan SKPD(PPK-SKPD)</font></td>
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
		</table> -->
			
	</body>
</html>
