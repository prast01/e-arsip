
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
                                        Dispo Sekretaris Dinas
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../surat_masuk/d/'.$surat->id_surat_masuk); ?>" enctype="multipart/form-data">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Surat</label>
													<div class="col-sm-10">
														<input type="date" disabled class="form-control" name="tgl_surat" placeholder="Tanggal Surat" value="<?php echo date('Y-m-d', strtotime($surat->tgl_surat)); ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Sifat</label>
													<div class="col-sm-10">
														<input type="text" disabled class="form-control" name="sifat_surat" placeholder="Sifat Surat" value="<?php echo $surat->sifat_surat; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Perihal</label>
													<div class="col-sm-10">
														<input type="text" disabled class="form-control" name="perihal_surat" placeholder="Perihal Surat" value="<?php echo $surat->perihal_surat; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Lampiran</label>
													<div class="col-sm-10">
														<input type="text" disabled class="form-control" name="lampiran_surat" placeholder="Lampiran Surat" value="<?php echo $surat->lampiran_surat; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Pengirim</label>
													<div class="col-sm-10">
														<input type="text" disabled class="form-control" name="pengirim_surat" placeholder="Pengirim Surat" value="<?php echo $surat->pengirim_surat; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Disposisi</label>
													<div class="col-sm-10">
														<select name="dispo_surat" multiple disabled class="form-control select2" style="width: 100%">
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
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Catatan Kepala Dinas</label>
													<div class="col-sm-10">
														<textarea name="catatan_surat" disabled class="form-control" rows="3"><?php echo $surat->catatan_surat; ?></textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Disposisi</label>
													<div class="col-sm-6">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio4" name="arsip" value="0" <?php if($surat->arsipkan_2 == '0'){ echo "checked"; } ?> onclick="dispo(this)">
															<label for="customRadio4" class="custom-control-label">Teruskan Ke</label>
														</div>
														<br>
														<select name="dispo_surat_sekdin[]" class="form-control select2 dispo" style="width: 100%" multiple data-placeholder="Pilih Dispo" <?php if($surat->arsipkan_2 != '0'){ echo "disabled"; } ?>>
															<!-- <option disabled>Pilih</option> -->
															<?php
																foreach ($dispo2 as $row) {
															?>
															<option <?php echo $row['selected']; ?> value="<?php echo $row['id_posisi']; ?>"><?php echo $row['posisi']; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<div class="col-sm-4">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio3" name="arsip" value="1" <?php if($surat->arsipkan_2 != '0'){ echo "checked"; } ?> onclick="dispo(this)">
															<label for="customRadio3" class="custom-control-label">Saya Sendiri</label>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Catatan</label>
													<div class="col-sm-10">
														<textarea name="catatan_sekdin" class="form-control" rows="3"><?php echo $surat->catatan_sekdin; ?></textarea>
														<input type="hidden" name="nomor_dinas" value="<?php echo $surat->nomor_dinas; ?>">
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-2"></div>
                                                    <div class="col-2">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
													<div class="col-2">
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