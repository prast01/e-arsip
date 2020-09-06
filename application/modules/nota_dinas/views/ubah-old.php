
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
								<div class="card">
									<div class="card-header">
										Ubah Nota Dinas
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../nota_dinas/edit/'.$nota_dinas->id_nota_dinas); ?>">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Nota Dinas</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="tgl_nota_dinas" placeholder="Tanggal Nota Dinas" value="<?php echo $nota_dinas->tgl_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Nomor</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="nomor_nota_dinas" placeholder="Nomor Nota Dinas" value="<?php echo $nota_dinas->nomor_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tujuan</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="tujuan_nota_dinas" placeholder="Tujuan Nota Dinas" value="<?php echo $nota_dinas->tujuan_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Sifat</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="sifat_nota_dinas" placeholder="Sifat Nota Dinas" value="<?php echo $nota_dinas->sifat_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Lampiran</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="lampiran_nota_dinas" placeholder="Lampiran Nota Dinas" value="<?php echo $nota_dinas->lampiran_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Perihal</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="perihal_nota_dinas" placeholder="Perihal Nota Dinas" value="<?php echo $nota_dinas->perihal_nota_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Isi</label>
													<div class="col-sm-10">
															<textarea class="textarea" name="isi_nota_dinas" placeholder="Isi Nota Dinas"
															  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $nota_dinas->isi_nota_dinas; ?></textarea>
													</div>
											    </div>
												<!--
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal Kegiatan</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="tgl_kegiatan" placeholder="Tanggal Kegiatan" value="<?php echo $nota_dinas->tgl_kegiatan; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tempat</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="tempat_kegiatan" placeholder="Tempat Kegiatan" value="<?php echo $nota_dinas->tempat_kegiatan; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Acara</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="acara_kegiatan" placeholder="Acara Kegiatan" value="<?php echo $nota_dinas->acara_kegiatan; ?>">
													</div>
												</div>												
												-->
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-2"></div>
                                                    <div class="col-2">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
													<div class="col-2">
														<a href="<?php echo site_url('../nota_dinas'); ?>" class="btn btn-warning btn-block btn-rounded">
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