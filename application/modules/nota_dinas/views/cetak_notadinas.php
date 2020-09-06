<?php

/** format tanggal Indo**/

date_default_timezone_set('Asia/Jakarta');
function tgl_ind($date)
{

	/** ARRAY HARI DAN BULAN**/
	$Hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");
	$Bulan = array("Januari", "Febuari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "Nov", "Desember");

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

$tgl = date('Y-m-d', strtotime($nota_dinas->tgl_nota_dinas)); // sesuaikan dari hasil output query select tabel database
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
				margin-left: 10mm;
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
			location.href = '../../nota_dinas/preview2/' + id;
		}
	</script>
</head>

<body onLoad="window.print()" onclick="pindah('<?php echo $nota_dinas->id_nota_dinas; ?>')">
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
	<table border="0" width="100%" style="border-collapse:collapse; border-bottom:1px solid">
		<tr>
			<td align="center" colspan="4">
				<h2 class="head2" style="margin-bottom:-10px; margin-top:-10px"><u>NOTA DINAS</u></h2>
			</td>
		</tr>
		<tr>
			<td colspan="4"><br></td>
		</tr>
		<tr>
			<td width="13%">Kepada Yth</td>
			<td width="1%">:</td>
			<td width="86%"><?php echo $nota_dinas->tujuan_nota_dinas; ?></td>
		</tr>
		<tr>
			<td>Dari</td>
			<td>:</td>
			<td>Kepala Dinas Kesehatan Kabupaten Jepara</td>
		</tr>
		<tr>
			<td>Nomor</td>
			<td>:</td>
			<td><?php echo $nota_dinas->nomor_nota_dinas; ?></td>
		</tr>
		<tr>
			<td>Tanggal</td>
			<td>:</td>
			<td><?php echo $tanggal; ?></td>
		</tr>
		<tr>
			<td>Sifat</td>
			<td>:</td>
			<td><?php echo $nota_dinas->sifat_nota_dinas; ?></td>
		</tr>
		<tr>
			<td>Lampiran</td>
			<td>:</td>
			<td><?php echo $nota_dinas->lampiran_nota_dinas; ?></td>
		</tr>
		<tr>
			<td>Perihal</td>
			<td>:</td>
			<td><?php echo $nota_dinas->perihal_nota_dinas; ?></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<table border="0" width="100%">
		<tr>
			<td width="5%"></td>
			<td width="90%">
				<p style="text-align: justify; text-indent: 0.5in">
					Dalam rangka kelancaran pelaksanaan kegiatan di Dinas Kesehatan Kabupaten Jepara, bersama ini agar diberikan penambahan anggaran kegiatan <b>"<?php echo $dpa->nama_dpa; ?>"</b> yang kurang dan/atau belum tertuang di dalam ROK bulan <?php echo $nota_dinas->bulan . " " . date("Y"); ?>. Adapaun rinciannya adalah sebagai berikut :
				</p>
				<table border="1" width="100%" style="border-collapse: collapse; font-size: 12px">
					<thead>
						<tr>
							<th width="5%">No</th>
							<th>Kode / Nama Rekening</th>
							<th width="17%">ROK Awal</th>
							<th width="17%">Penambahan</th>
							<th width="17%">ROK Akhir</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<?php
						$no = 1;
						$total = 0;
						$total2 = 0;
						$total3 = 0;
						foreach ($detail as $key) {
							$x = $key->rok + $key->nominal;
						?>
							<tr id="trx-<?php echo $key->id_nota_detail; ?>">
								<td align="center"><?php echo $no; ?></td>
								<td><b><?php echo $key->kode_rekening; ?> - <br><?php echo $key->uraian_rekening; ?></b><br>Dalam Rangka <?php echo $key->alasan; ?></td>
								<td align="right"><?php echo number_format($key->rok, 0, ',', '.'); ?></td>
								<td align="right"><?php echo number_format($key->nominal, 0, ',', '.'); ?></td>
								<td align="right"><?php echo number_format($x, 0, ',', '.'); ?></td>
							</tr>
						<?php
							$no++;
							$total = $total + $key->rok;
							$total2 = $total2 + $key->nominal;
							$total3 = $total3 + $x;
						}
						?>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2" align="right">TOTAL</td>
							<td align="right"><?php echo number_format($total, 0, ',', '.'); ?></td>
							<td align="right"><?php echo number_format($total2, 0, ',', '.'); ?></td>
							<td align="right"><?php echo number_format($total3, 0, ',', '.'); ?></td>
						</tr>
					</tfoot>
				</table>
				<p style="text-align: justify; text-indent: 0.5in">
					Demikian atas kerjasamanya, disampaikan terima kasih.
				</p>
			</td>
			<td width="5%"></td>
		</tr>
	</table>
	<br><br>
	<table border="0" width="100%">
		<tr>
			<td width="5%"></td>
			<td width="35%" valign="top">
				<table border="1" width="100%" style="border-collapse: collapse; font-size: 12px">
					<tr>
						<td colspan="2" align="center">PENELITIAN SURAT</td>
					</tr>
					<tr>
						<td width="75%" align="center">JABATAN</td>
						<td align="center">PARAF</td>
					</tr>
					<?php
					if ($ttd == '0') {
					?>
						<tr>
							<td>SEKRETARIS DINAS</td>
							<td align="center"></td>
						</tr>
					<?php
					}
					?>
					<tr>
						<td>KABID ................................</td>
						<td align="center"></td>
					</tr>
					<?php
					if ($dpa->kode_sikupat == '6') {
					?>
						<tr>
							<td>KASUBAG Umum dan Kepegawaian</td>
							<td align="center"></td>
						</tr>
					<?php
					}
					?>
					<tr>
						<td>KASUBAG Renval dan Keuangan</td>
						<td align="center"></td>
					</tr>
					<tr>
						<td>KASUBAG / KASI / KAUPT ................................</td>
						<td align="center"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">DINAS KESEHATAN</td>
					</tr>
				</table>
			</td>
			<td>
				<p style="margin-bottom:-10px">&nbsp;</p>
				<p style="margin-bottom:-10px"></p>
				<p></p>
			</td>
			<td width="45%" align="center">
				<?php
				if ($ttd == '0') {
				?>
					<p style="margin-bottom:-15px; margin-top:-10px">KEPALA DINAS KESEHATAN</p>
					<p>KABUPATEN JEPARA</p>
					<br><br>
					<p style="margin-bottom:-15px; text-decoration: underline">MUDRIKATUN, S.SiT, SKM, MM.Kes, MH</p>
					<p style="margin-bottom:-15px;">Pembina Tk. I</p>
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
		<!-- <tr>
				<td></td>
				<td>
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline"></p>
					<p></p>
				</td>
				<td>
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline"></p>
					<p></p>
				
			  	</td>
				<td align="center">
					<br>
					<?php
					if ($ttd == '0') {
					?>
						<p style="margin-bottom:-15px; text-decoration: underline">MUDRIKATUN, S.SiT, SKM, MM.Kes, MH</p>
						<p style="margin-bottom:-15px;">Pembina Tk. I</p>
						<p>NIP. 19690610 199003 2 010</p>
					<?php
					} else {
					?>
						<p style="margin-bottom:-15px; text-decoration: underline">Drs. ADI BINTORO, MM</p>
						<p style="margin-bottom:-10px">Pembina</p>
						<p>NIP. 19630326 199203 1 002</p>
					<?php
					}
					?>
				</td>
			</tr> -->
	</table>

</body>

</html>