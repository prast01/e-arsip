<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">
						Data
						<?php
						$judul = explode('_', $this->uri->segment(1));
						echo ucfirst($judul[0] . ' ') . ucfirst($judul[1]);
						?>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<?php if ($this->session->flashdata('success')) : ?>
						<div class="alert alert-success alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<h5><i class="icon fas fa-check"></i> Sukses!</h5>
							<?php echo $this->session->flashdata('success'); ?>
						</div>
					<?php endif; ?>

					<?php if ($this->session->flashdata('gagal')) : ?>
						<div class="alert alert-danger alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<h5><i class="icon fas fa-ban"></i> Eror!</h5>
							<?php echo $this->session->flashdata('gagal'); ?>
						</div>
					<?php endif; ?>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							Surat Masuk Baru
						</div>
						<!-- form start -->
						<form class="form-horizontal" method="post" action="<?php echo site_url('../surat_masuk/add'); ?>" enctype="multipart/form-data">
							<div class="card-body">
								<h4>Identitas Surat</h4>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-2 col-form-label">Dari</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="pengirim" id="pengirim" placeholder="Pengirim">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-2 col-form-label">Wilayah/Kota</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="wilayah" id="wilayah" placeholder="Wilayah/Kota">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">No Urut Surat</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="nomor_dinas" placeholder="No Urut Surat" value="<?php echo $nomor_dinas; ?>">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Terima</label>
											<div class="col-sm-8">
												<input type="date" class="form-control" name="tgl_terima" placeholder="Tanggal Terima" value="<?php echo date('Y-m-d'); ?>">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Surat</label>
											<div class="col-sm-8">
												<input type="date" class="form-control" name="tgl_surat" placeholder="Tanggal Surat" value="<?= date("Y-m-d"); ?>">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Sifat Surat</label>
											<div class="col-sm-8">
												<select name="sifat_surat" class="form-control select2" style="width: 100%">
													<option value="Biasa">Biasa</option>
													<option value="Penting">Penting</option>
													<option value="Rahasia">Rahasia</option>
													<option value="Segera">Segera</option>
													<option value="Amat Segera">Amat Segera</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<input type="hidden" name="klas" id="klas">
										<input type="hidden" name="sub_klas" id="sub_klas">
										<input type="hidden" name="sub_sub_klas" id="sub_sub_klas">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Klasifikasi</label>
											<div class="col-sm-8">
												<select name="jenis_surat" id="jenis_surat" class="form-control" style="width: 100%">
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Masalah</label>
											<div class="col-sm-8">
												<input type="text" name="masalah" id="masalah" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Nomor Surat</label>
											<div class="col-sm-8">
												<input type="text" name="nomor_surat" id="nomor_surat" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Nama Berkas</label>
											<div class="col-sm-8">
												<input type="text" name="nama_berkas" id="nama_berkas" class="form-control">
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-2 col-form-label">Isi Ringkasan</label>
											<div class="col-sm-10">
												<textarea name="ringkasan" class="form-control" rows="2"></textarea>
											</div>
										</div>
									</div>
								</div>
								<hr>
								<h4>Retensi</h4>
								<div class="row">
									<input type="hidden" id="tahun_skrg" value="<?= date("Y"); ?>">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Retensi Aktif</label>
											<div class="col-sm-3">
												<input type="text" class="form-control" name="r_aktif" id="r_aktif" onkeyup="thn_aktif()">
											</div>
											<label for="inputEmail3" class="col-sm-3 col-form-label">Th Aktif</label>
											<div class="col-sm-2">
												<input type="text" class="form-control" name="thn_aktif" id="thn_aktif">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Retensi Inaktif</label>
											<div class="col-sm-3">
												<input type="text" class="form-control" name="r_inaktif" id="r_inaktif" onkeyup="thn_inaktif()">
											</div>
											<label for="inputEmail3" class="col-sm-3 col-form-label">Th Inaktif</label>
											<div class="col-sm-2">
												<input type="text" class="form-control" name="thn_inaktif" id="thn_inaktif">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Serie</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="serie" id="serie">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Ket JRA</label>
											<div class="col-sm-3">
												<select name="ket_jra" id="ket_jra" class="form-control select2" style="width: 100%;">
													<option value="Permanen">Permanen</option>
													<option value="Dinilai Kembali">Dinilai Kembali</option>
													<option value="Musnah">Musnah</option>
												</select>
											</div>
											<label for="inputEmail3" class="col-sm-3 col-form-label">Nilai Guna</label>
											<div class="col-sm-2">
												<select name="nilai_guna" id="nilai_guna" class="form-control select2" style="width: 100%;">
													<option value="ADM">ADM</option>
													<option value="KEU">KEU</option>
													<option value="HK">HK</option>
													<option value="IPTEK">IPTEK</option>
													<option value="SJRH">SJRH</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-md-6">
										<h4>Lokasi Arsip</h4>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Penyimpanan</label>
											<div class="col-sm-6">
												<select name="penyimpanan" class="form-control select2" style="width: 100%;">
													<?php foreach ($penyimpanan as $key) : ?>
														<option value="<?= $key->penyimpanan; ?>"><?= $key->penyimpanan; ?></option>
													<?php endforeach; ?>
												</select>
											</div>
											<div class="col-sm-2">
												<input type="number" class="form-control" name="nomor_penyimpanan" value="<?= $no_penyimpanan; ?>">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Jenis</label>
											<div class="col-sm-8">
												<select name="jenis" class="form-control select2" style="width: 100%;">
													<option value="Asli">Asli</option>
													<option value="Tembusan">Tembusan</option>
													<option value="Salinan">Salinan</option>
													<option value="Foto Copy">Foto Copy</option>
													<option value="Pertinggal">Pertinggal</option>
													<option value="Faximile">Faximile</option>
													<option value="Email">Email</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">File</label>
											<div class="col-sm-8">
												<input type="file" name="file" class="form-control">
											</div>
											<label for="inputEmail3" class="col-sm-4 col-form-label"></label>
											<div class="col-sm-8">
												<small>* Format file hanya berupa PDF/JPG dan ukuran file maksimal 10 MB.</small>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<h4>Disposisi</h4>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Dispo</label>
											<div class="col-sm-8">
												<input type="date" class="form-control" name="tgl_dispo" placeholder="Tanggal Dispo" value="<?php echo date('Y-m-d'); ?>">
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8">
												<div class="custom-control custom-radio">
													<input class="custom-control-input" type="radio" id="customRadio4" name="arsip" value="0" checked onclick="dispo(this)">
													<label for="customRadio4" class="custom-control-label">Teruskan Ke</label>
												</div>
												<br>
												<select name="dispo_surat[]" class="form-control select2 dispo" style="width: 100%" multiple data-placeholder="Pilih Dispo">
													<?php
													foreach ($dispo as $row) {
													?>
														<option <?php echo $row['selected']; ?> value="<?php echo $row['id_posisi']; ?>"><?php echo $row['posisi']; ?></option>
													<?php
													}
													?>
												</select>
											</div>
											<div class="col-sm-4">
												<div class="custom-control custom-radio">
													<input class="custom-control-input" type="radio" id="customRadio3" name="arsip" value="1" onclick="dispo(this)">
													<label for="customRadio3" class="custom-control-label">Saya Sendiri</label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr>
								<h4>Keterangan</h4>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Perihal</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="perihal" placeholder="Perihal Surat">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Lampiran</label>
											<div class="col-sm-2">
												<input type="text" class="form-control" name="lampiran">
											</div>
											<div class="col-sm-6">
												<select name="lampiran_satuan" class="form-control select2" style="width: 100%;">
													<option value="">-</option>
													<option value="Eks">Eks</option>
													<option value="Lembar">Lembar</option>
													<option value="Berkas">Berkas</option>
													<option value="Buku">Buku</option>
													<option value="Bendel">Bendel</option>
													<option value="Dokumen">Dokumen</option>
													<option value="Foto">Foto</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Catatan</label>
											<div class="col-sm-8">
												<textarea name="catatan" class="form-control" rows="3"></textarea>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Komposisi</label>
											<div class="col-sm-8">
												<select name="komposisi" class="form-control select2" style="width: 100%;">
													<?php foreach ($komposisi as $key) : ?>
														<option value="<?= $key->komposisi; ?>"><?= $key->komposisi; ?></option>
													<?php endforeach; ?>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Akses</label>
											<div class="col-sm-8">
												<select name="akses" class="form-control select2" style="width: 100%;">
													<option value="Biasa/Terbuka">Biasa/Terbuka</option>
													<option value="Terbatas">Terbatas</option>
													<option value="Rahasia">Rahasia</option>
													<option value="Sangat Rahasia">Sangat Rahasia</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Tindakan</label>
											<div class="col-sm-8">
												<select name="tindakan" class="form-control select2" style="width: 100%;">
													<option value="Balas">Balas</option>
													<option value="Non Balas">Non Balas</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
							<div class="card-footer">
								<div class="row">
									<div class="col-2 hidden-xs"></div>
									<div class="col-md-2 col-xs-10">
										<button type="submit" class="btn btn-info btn-block">Simpan</button>
									</div>
									<div class="col-md-2 col-xs-10">
										<a href="<?php echo site_url('../surat_masuk'); ?>" class="btn btn-warning btn-block btn-rounded">
											Batal
										</a>
									</div>
								</div>
							</div>
							<!-- /.card-footer -->
						</form>
					</div>
				</div>

			</div>
		</div><!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->