
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
                                        echo ucfirst($judul[0].' '). ucfirst($judul[1]);
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
				                <?php if ($this->session->flashdata('success')): ?>
								<div class="alert alert-success alert-dismissible">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<h5><i class="icon fas fa-check"></i> Sukses!</h5>
									<?php echo $this->session->flashdata('success'); ?>
								</div>
				                <?php endif; ?>
                                
				                <?php if ($this->session->flashdata('gagal')): ?>
								<div class="alert alert-danger alert-dismissible">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<h5><i class="icon fas fa-ban"></i> Eror!</h5>
									<?php echo $this->session->flashdata('gagal'); ?>
								</div>
				                <?php endif; ?>
							</div>
                        </div>
						<div class="row">
							<div class="col-1"></div>
							<div class="col-10">
								<div class="card">
									<div class="card-header">
                                        Preview Surat Tugas
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../surat_tugas/cetak/'.$surat->id_surat_tugas); ?>" enctype="multipart/form-data">
											<input type="hidden" name="nomor_surat" value="<?php echo $surat->nomor_surat; ?>">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Pesan</label>
													<div class="col-sm-10">
														<input type="date" disabled class="form-control" name="created_at" placeholder="Tanggal Terima" value="<?php echo date('Y-m-d', strtotime($surat->created_at)); ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Dasar Surat</label>
													<!-- <div class="col-sm-10">
														<textarea name="dasar_surat" disabled class="form-control" rows="2"><?php echo $surat->dasar_surat; ?></textarea>
													</div> -->
													<!-- <div class="col-sm-10">
														<select name="dasar_surat" disabled class="form-control select2" style="width: 100%" data-placeholder="Pilih Dasar">
															<option selected disabled>Pilih Dasar Surat</option>
															<optgroup label="Surat Masuk">
																<?php
																	$da = explode('-', $surat->dasar_surat);
																	foreach ($dasar as $row) {
																?>
																<option <?php if($row->perihal_surat == $da[1]){ echo 'selected'; } ?> value="SM-<?php echo $row->perihal_surat; ?>"><?php echo $row->perihal_surat; ?></option>
																<?php
																	}
																?>
															</optgroup>
															<optgroup id="rok" label="ROK">
																<?php
																	foreach ($rok as $row) {
																?>
																<option <?php if($row['rok'] == $da[1]){ echo 'selected'; } ?> value="ROK-<?php echo $row['rok']; ?>"><?php echo $row['rok']; ?></option>
																<?php
																	}
																?>
															</optgroup>
														</select>
													</div> -->
													<div class="col-sm-10">
														<input type="text" class="form-control" name="dasar_surat" id="a" readonly placeholder="Dasar Surat" style="cursor: pointer" value="<?php echo $surat->dasar_surat; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Kegiatan</label>
													<div class="col-sm-10">
														<input type="hidden" id="tgl1" value="<?php echo date('m/d/Y', strtotime($surat->tgl_kegiatan)); ?>">
														<input type="hidden" id="tgl2" value="<?php echo date('m/d/Y', strtotime($surat->tgl_kegiatan_2)); ?>">
														<input type="text" disabled class="form-control daterange" name="tgl_kegiatan" placeholder="Tanggal Kegiatan"">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Lokasi Kegiatan</label>
													<div class="col-sm-10">
														<input type="text" disabled class="form-control" name="lokasi_kegiatan" placeholder="Lokasi Kegiatan" value="<?php echo $surat->lokasi_kegiatan; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Kegiatan</label>
													<div class="col-sm-10">
														<textarea name="nama_kegiatan" disabled class="form-control" rows="3"><?php echo $surat->nama_kegiatan; ?></textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Pegawai</label>
													<div class="col-sm-10">
														<select name="id_pegawai[]" disabled class="form-control select2" style="width: 100%" multiple data-placeholder="Pilih Pegawai">
															<?php
																foreach ($speg as $row=>$value) {
															?>
															<option <?php echo $value['selected']; ?> value="<?php echo $value['id_pegawai']; ?>"><?php echo $value['nama_pegawai']; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Perjalanan</label>
													<div class="col-sm-10 mt-2">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio5" name="dalam_luar" value="0" <?php if($surat->dalam_luar_tugas == '0'){ echo "checked"; } ?> disabled>
															<label for="customRadio5" class="custom-control-label">Dalam Daerah</label>
														</div>
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio6" name="dalam_luar" value="1" <?php if($surat->dalam_luar_tugas == '1'){ echo "checked"; } ?> disabled>
															<label for="customRadio6" class="custom-control-label">Luar Daerah</label>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Menggunakan Teknis Kantor ?</label>
													<div class="col-sm-10 mt-2">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio1" name="sppd" value="0" <?php if($surat->sppd_surat == '0'){ echo "checked"; } ?> disabled>
															<label for="customRadio1" class="custom-control-label">Tidak</label>
														</div>
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio2" name="sppd" value="1" <?php if($surat->sppd_surat == '1'){ echo "checked"; } ?> disabled>
															<label for="customRadio2" class="custom-control-label">Ya</label>
														</div>
													</div>
												</div>
												<?php
													if($surat->sppd_surat){
												?>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Kendaraan</label>
													<div class="col-sm-5">
														<select name="kendaraan" disabled class="form-control select2" style="width: 100%" data-placeholder="Pilih Kendaraan">
															<option disabled>Pilih</option>
															<option <?php if($surat->kendaraan == 'Pribadi'){ echo "selected"; } ?> value="Pribadi">Pribadi</option>
															<option <?php if($surat->kendaraan == 'Dinas'){ echo "selected"; } ?> value="Dinas">Dinas</option>
															<option <?php if($surat->kendaraan == 'Umum'){ echo "selected"; } ?> value="Umum">Umum</option>
														</select>
													</div>
													<div class="col-sm-5">
														<input type="text" disabled class="form-control" name="nopol" placeholder="Nomor Polisi" value="<?php echo $surat->nopol; ?>">
													</div>
												</div>
												<!-- <div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Mata Anggaran</label>
													<div class="col-sm-5">
														<select name="dpa" class="form-control select2" style="width: 100%" data-placeholder="Pilih DPA">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($dpa as $row) {
															?>
															<option value="<?php echo $row->kode_dpa; ?>"><?php echo $row->nama_dpa; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<div class="col-sm-5">
														<select name="rekening" class="form-control select2" style="width: 100%" data-placeholder="Pilih rekening">
															<option selected disabled>Pilih</option>
															<option value="512.15.003">Belanja Bahan Bakar Minyak/Gas dan Pelumas</option>
															<option value="512.18.001">Belanja Perjalanan Dinas Dalam Daerah</option>
															<option value="512.18.002">Belanja Perjalanan Dinas Luar Daerah</option>
														</select>
													</div>
												</div> -->
												<?php
													}
												?>
												<!-- <div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tugas</label>
													<div class="col-sm-10">
														<textarea name="tugas_surat" class="form-control" rows="3"><?php echo $surat->tugas_surat; ?></textarea>
													</div>
												</div> -->
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Surat</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="tgl_surat" placeholder="Tanggal Surat" value="<?php echo date("Y-m-d"); ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">TTD</label>
													<div class="col-sm-10 mt-2">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio3" name="ttd" value="0" checked>
															<label for="customRadio3" class="custom-control-label">Kepala Dinas</label>
														</div>
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio4" name="ttd" value="1">
															<label for="customRadio4" class="custom-control-label">Sekretaris Dinas</label>
														</div>
													</div>
												</div>
												<?php
													if($surat->file_surat != ''){
												?>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">File</label>
													<div class="col-sm-4">
                                                        <input type="file" name="file" class="form-control">
														<input type="hidden" name="old_file" value="<?php echo $surat->file_surat; ?>">
													</div>
													<div class="col-sm-6">
														<small>* Format file hanya berupa PDF dan ukuran file maksimal 2 MB.</small>
													</div>
												</div>
												<?php
													}
												?>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-2 hidden-xs"></div>
                                                    <div class="col-md-2 col-xs-10">
                                                        <button type="submit" class="btn btn-info btn-block" onclick="return confirm('Cetak?')"><span class="fa fa-print"></span> Cetak</button>
                                                    </div>
													<?php
														if($surat->validasi == '0'){
													?>
													<div class="col-md-2 col-xs-10">
														<a href="<?php echo site_url('../surat_tugas/ubah/'.$surat->id_surat_tugas); ?>" class="btn btn-primary btn-block" title="Edit Berkas"><i class="fa fa-edit"></i> Ubah Data</a>
													</div>
													<?php
														}
													?>
													<div class="col-md-2 col-xs-10">
														<a href="<?php echo site_url('../surat_tugas'); ?>" class="btn btn-warning btn-block btn-rounded">
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
							
						</div>
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->