<?php

/** format tanggal Indo**/

date_default_timezone_set('Asia/Jakarta');
function tgl_ind($date)
{

	/** ARRAY HARI DAN BULAN**/
	$Hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");
	$Bulan = array("Januari", "Febuari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

	/** MEMISAHKAN FORMAT TANGGAL, BULAN, TAHUN, DENGAN SUBSTRING**/
	$tahun = substr($date, 0, 4);
	$bulan = substr($date, 5, 2);
	$tgl = substr($date, 8, 2);
	$waktu = substr($date, 11, 8);
	$hari = date("w", strtotime($date));

	$result = $tgl . " " . $Bulan[(int)$bulan - 1] . " " . $tahun;
	return $result;
}

function getHari($tgl)
{
	$h = date("w", strtotime($tgl));
	$Hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");

	return $Hari[$h];
}

function getBulan($tgl)
{
	$b = date("m", strtotime($tgl));
	$Bulan = array("Januari", "Febuari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

	return $Bulan[(int)$b - 1];
}

$tgl = date('Y-m-d', strtotime($surat->tgl_surat)); // sesuaikan dari hasil output query select tabel database
$tanggal = tgl_ind($tgl); // ini adalah kode untuk menampilkan fungsi pada file functiopn_tanggal.php 
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
			body {
				margin-top: 0mm;
				margin-bottom: 5mm;
				margin-left: 15mm;
				margin-right: 10mm
			}
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
			location.href = '../../surat_tugas/preview/' + id;
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
			<td align="center" colspan="4">
				<h3 style="margin-bottom:-10px; margin-top:-10px"><u>SURAT TUGAS</u></h3>
				<!-- <p>Nomor : 090.1/<?php echo sprintf("%04s", $surat->nomor_surat); ?>/2020</p> -->
				<p>Nomor : 090.1/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/2020</p>
			</td>
		</tr>
		<tr>
			<td colspan="4"><br></td>
		</tr>
		<tr>
			<td colspan="4">Yang bertanda tangan dibawah ini:</td>
		</tr>
		<?php
		if ($surat->ttd_surat == '0') {
		?>
			<tr>
				<td width="8%"></td>
				<td width="10%">Nama</td>
				<td width="1%">:</td>
				<td width="81%">MUDRIKATUN, S.SiT, SKM, MM.Kes, MH</td>
			</tr>
			<tr>
				<td></td>
				<td>NIP</td>
				<td>:</td>
				<td>19690610 199003 2 010</td>
			</tr>
			<tr>
				<td></td>
				<td>Pangkat/Gol.</td>
				<td>:</td>
				<td>Pembina Tk. I/IVb</td>
			</tr>
			<tr>
				<td></td>
				<td>Jabatan</td>
				<td>:</td>
				<td>Kepala Dinas Kesehatan Kab. Jepara</td>
			</tr>
		<?php
		} else {
		?>
			<tr>
				<td width="8%"></td>
				<td width="10%">Nama</td>
				<td width="1%">:</td>
				<td width="81%">MUH ALI, S.Kep.Ns, MM.Kes</td>
			</tr>
			<tr>
				<td></td>
				<td>NIP</td>
				<td>:</td>
				<td>19671214 198803 1 006</td>
			</tr>
			<tr>
				<td></td>
				<td>Pangkat/Gol.</td>
				<td>:</td>
				<td>Pembina Tk. I/IVb</td>
			</tr>
			<tr>
				<td></td>
				<td>Jabatan</td>
				<td>:</td>
				<td>Sekretaris Dinas Kesehatan Kab. Jepara</td>
			</tr>
		<?php
		}
		?>
	</table>
	<br>
	<table border="0" width="100%">
		<tr>
			<td colspan="4">Menugaskan kepada:</td>
		</tr>
		<?php
		$no = 1;
		foreach ($speg as $row) {
			if ($row['selected'] == 'selected') {
		?>
				<tr>
					<td width="8%" align="right"><?php echo $no; ?>.</td>
					<td width="10%">Nama</td>
					<td width="1%">:</td>
					<td width="81%"><?php echo $row['nama_pegawai']; ?></td>
				</tr>
				<tr>
					<td></td>
					<td>NIP</td>
					<td>:</td>
					<td><?php echo $row['nip_pegawai']; ?></td>
				</tr>
				<tr>
					<td></td>
					<td>Pangkat/Gol.</td>
					<td>:</td>
					<td><?php echo $row['pangkat']; ?></td>
				</tr>
				<tr>
					<td></td>
					<td>Jabatan</td>
					<td>:</td>
					<td><?php echo $row['jabatan']; ?></td>
				</tr>
		<?php
				$no++;
			}
		}
		?>
	</table>
	<br>
	<table border="0" width="100%">
		<tr>
			<td colspan="4" align="justify">Untuk <?php echo $surat->nama_kegiatan; ?>, dengan ketentuan sebagai berikut:</td>
		</tr>
		<tr>
			<td width="8%"></td>
			<td width="12%">Hari</td>
			<td width="1%">:</td>
			<td width="79%">
				<?php
				echo getHari($surat->tgl_kegiatan);
				if ($surat->tgl_kegiatan != $surat->tgl_kegiatan_2) {
					echo " - " . getHari($surat->tgl_kegiatan_2);
				}
				?>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>Tanggal</td>
			<td>:</td>
			<td>
				<?php
				$bln1 = date("m", strtotime($surat->tgl_kegiatan));
				$bln2 = date("m", strtotime($surat->tgl_kegiatan_2));
				if ($bln1 != $bln2) {
					echo tgl_ind($surat->tgl_kegiatan) . " - " . tgl_ind($surat->tgl_kegiatan_2);
				} else {
					echo date("d", strtotime($surat->tgl_kegiatan));
					if ($surat->tgl_kegiatan != $surat->tgl_kegiatan_2) {
						echo " - " . date("d", strtotime($surat->tgl_kegiatan_2));
					}
					echo " " . getBulan($surat->tgl_kegiatan) . " " . date("Y", strtotime($surat->tgl_kegiatan));
				}
				?>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>Tempat</td>
			<td>:</td>
			<td><?php echo $surat->lokasi_kegiatan; ?></td>
		</tr>
		<tr>
			<td colspan="4">Demikian surat tugas ini dibuat untuk dilaksanakan sebaik-baiknya.</td>
		</tr>
	</table>
	<br>
	<br>
	<table border="0" width="100%">
		<tr>
			<td width="5%"></td>
			<td width="30%" align="center">
				<?php
				if ($qrcode != '') {
				?>
					<img src="<?php echo base_url('dist/img/QRCode/' . $qrcode); ?>" width="100px" style="padding: 5px 5px 5px 5px; border: 1px solid">
					<p style="margin-top:0px">Scan Disini</p>
				<?php
				} else {
					echo "&nbsp;";
				}
				?>
			</td>
			<td width="15%">
				<p style="margin-bottom:-10px">&nbsp;</p>
				<p style="margin-bottom:-10px"></p>
				<p></p>
			</td>
			<td width="50%" align="center">
				<p style="margin-bottom:-10px;">Jepara, <?php echo $tanggal; ?></p>
				<?php
				if ($surat->ttd_surat == '0') {
				?>
					<p style="margin-bottom:-15px;">KEPALA DINAS KESEHATAN</p>
					<p>KABUPATEN JEPARA</p>
					<br><br>
					<p style="margin-bottom:-15px; text-decoration: underline">MUDRIKATUN, S.SiT, SKM, MM.Kes, MH</p>
					<p style="margin-bottom:-15px">Pembina Tk. I</p>
					<p>NIP. 19690610 199003 2 010</p>
				<?php
				} else {
				?>
					<p style="margin-bottom:-15px; margin-top:0px">a.n KEPALA DINAS KESEHATAN</p>
					<!-- <p style="margin-bottom:-10px">KABUPATEN JEPARA</p> -->
					<p>SEKRETARIS DINAS</p>
					<br><br>
					<p style="margin-bottom:-15px; text-decoration: underline">MUH ALI, S.Kep.Ns, MM.Kes</p>
					<p style="margin-bottom:-10px">Pembina Tk. I</p>
					<p>NIP. 19671214 198803 1 006</p>
				<?php
				}
				?>
			</td>
		</tr>
	</table>

</body>

</html>