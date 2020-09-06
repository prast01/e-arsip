
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
                                        Surat Masuk Baru
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../surat_masuk/add'); ?>" enctype="multipart/form-data">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Terima</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="created_at" placeholder="Tanggal Terima" value="<?php echo date('Y-m-d'); ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Surat</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="tgl_surat" placeholder="Tanggal Surat">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Nomor Dinas</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="nomor_dinas" placeholder="Nomor Dinas" value="<?php echo $nomor_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Nomor Surat</label>
													<div class="col-sm-3">
														<!-- <input type="text" required class="form-control" name="kode_surat" placeholder="Kode Surat"> -->
														
														<select name="id_jenis_surat" class="form-control select2" style="width: 100%">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($jenis_surat as $row) {
															?>
															<option value="<?php echo $row->id_jenis_surat; ?>"><?php echo $row->kode_surat." - ".$row->jenis_surat; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<div class="col-sm-2">
														<input type="text" required class="form-control" name="nomor_surat" placeholder="Nomor Surat">
													</div>
													<div class="col-sm-5">
														<small>* Untuk memisahkan nomor surat, harap gunakan "/" atau garis miring.</small>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Sifat</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="sifat_surat" placeholder="Sifat Surat">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Perihal</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="perihal_surat" placeholder="Perihal Surat">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Lampiran</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="lampiran_surat" placeholder="Lampiran Surat">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Pengirim</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="pengirim_surat" placeholder="Pengirim Surat">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Disposisi</label>
													<div class="col-sm-6">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio4" name="arsip" value="0" checked onclick="dispo(this)">
															<label for="customRadio4" class="custom-control-label">Teruskan Ke</label>
														</div>
														<br>
														<select name="dispo_surat[]" class="form-control select2 dispo" style="width: 100%" multiple data-placeholder="Pilih Dispo">
															<!-- <option disabled>Pilih</option> -->
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
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Catatan</label>
													<div class="col-sm-10">
														<textarea name="catatan_surat" class="form-control" rows="3"></textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">File</label>
													<div class="col-sm-4">
                                                        <!-- <div class="custom-file">
                                                            <input type="file" class="custom-file-input" name="file">
                                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                        </div> -->
                                                        <input type="file" name="file" class="form-control">
													</div>
													<div class="col-sm-6">
														<small>* Format file hanya berupa PDF/JPG dan ukuran file maksimal 10 MB.</small>
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
							
						</div>
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->