<?php
	/** format tanggal Indo**/
	
	date_default_timezone_set('Asia/Jakarta');
	function tgl_ind($date) {
	
	/** ARRAY HARI DAN BULAN**/	
		$Hari = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
		$Bulan = array("Januari","Febuari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nov","Desember");
			
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
                location.href='../../nota_dinas/printout/'+id;
            }
        </script>
	</head>
	<body onLoad="window.print()" onclick="pindah('<?php echo $nota_dinas->id_nota_dinas; ?>')">
		<table border="0" style="border-collapse:collapse; border-bottom:3px solid" width="100%">
			<thead>
				<tr>
					<th width="25%">
						<img src="<?php echo base_url(LOGO_JEPARA); ?>" width="100px" style="padding: 5px 5px 5px 5px; border: 0px solid">
					</th>
					<td colspan="2" align="center">
						<h2 style="margin-bottom:-20px">PEMERINTAH KABUPATEN JEPARA</h2>
						<h1 style="margin-bottom:-15px">DINAS KESEHATAN</h1>
						<p style="margin-bottom:-15px">Jl. Kartini No. 44 Telp. (0291) 591427, 591743 Fax. (0291) 591427</p>
						<p style="margin-bottom:-15px">E-mail : <u>dinkeskabjepara@yahoo.co.id</u></p>
						<p>J E P A R A 59411</p>
					</td>
				</tr>
			</thead>
		</table>
		<br>
		<table border="0" width="100%">
			<tr>
				<td align="center" colspan="4">
					<h3 style="margin-bottom:-10px; margin-top:-10px"><u>N O T A&nbsp;&nbsp;&nbsp;D I N A S</u></h3>
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
				<td>Dari</td><td>:</td><td>Kepala Dinas Kesehatan Kabupaten Jepara</td>
			</tr>
			<tr>
				<td>Nomor</td><td>:</td><td><?php echo $nota_dinas->nomor_nota_dinas; ?></td>
			</tr>
			<tr>
				<td>Tanggal</td><td>:</td><td><?php echo $nota_dinas->tgl_nota_dinas; ?></td>
			</tr>
			<tr>
				<td>Sifat</td><td>:</td><td><?php echo $nota_dinas->sifat_nota_dinas; ?></td>
			</tr>
			<tr>
				<td>Lampiran</td><td>:</td><td><?php echo $nota_dinas->lampiran_nota_dinas; ?></td>
			</tr>
			<tr>
				<td>Perihal</td><td>:</td><td><?php echo $nota_dinas->perihal_nota_dinas; ?></td>
			</tr>
			<tr>
				<td></td><td></td><td></td>
			</tr>
			<tr>
				<td colspan="3"><hr></td>
			</tr>
		</table>
		<br>
		<table border="0" width="100%">
			<tr>
				<td width="14%"></td>
				<td width="76%"><?php echo $nota_dinas->isi_nota_dinas; ?></td>
				<td width="10%"></td>
			</tr>
		</table>
		<br>
		<table border="0" width="100%">
			<tr>
				<td width="5%"></td>
				<td width="30%">
					<p style="margin-bottom:-10px">&nbsp;</p>
					<p style="margin-bottom:-10px"></p>
					<p></p>
				</td>
				<td width="26%">
					<p style="margin-bottom:-10px">&nbsp;</p>
					<p style="margin-bottom:-10px"></p>
					<p></p>
			  	</td>
				<td width="39%">
					<p style="margin-bottom:-10px;"></p>
				</td>
			</tr>
			<tr>
				<td width="5%"></td>
				<td width="30%">
					<p style="margin-bottom:-10px">&nbsp;</p>
					<p style="margin-bottom:-10px"></p>
					<p></p>
				</td>
				<td width="26%">
					<p style="margin-bottom:-10px">&nbsp;</p>
					<p style="margin-bottom:-10px"></p>
					<p></p>
			  	</td>
				<td width="39%" align="center">
					<p style="margin-bottom:-15px; margin-top:-20px">Kepala Dinas Kesehatan Kab. Jepara</p>
					<!-- <p>Kab. Jepara</p> -->
				</td>
			</tr>
			<tr>
				<td width="5%"></td>
				<td width="30%">
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline"></p>
					<p></p>
				</td>
				<td width="26%">
					<br>
					<p style="margin-bottom:-10px; text-decoration: underline"></p>
					<p></p>
				
			  	</td>
				<td align="center">
					<br>
					<br>
					<p style="margin-bottom:-15px; text-decoration: underline">Mudrikatun, S.SiT, SKM, MM.Kes, MH</p>
					<p>NIP. 19690610 199003 2 010</p>
				</td>
			</tr>
		</table>

	</body>
</html>
