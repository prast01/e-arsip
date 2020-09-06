
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0 text-dark">
                                    Data <?php echo ucfirst($this->uri->segment(1)); ?>
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
										Ubah Pegawai
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../pegawai/edit/'.$pegawai->id_pegawai); ?>">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">NIP Pegawai</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="nip_pegawai" placeholder="NIP Pegawai" value="<?php echo $pegawai->nip_pegawai; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Nama Pegawai</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" name="nama_pegawai" placeholder="Nama Pegawai" value="<?php echo $pegawai->nama_pegawai; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Pangkat/Gol</label>
													<div class="col-sm-10">
														<select name="pangkat_pegawai" class="form-control select2" style="width: 100%">
															<option disabled>Pilih</option>
															<?php
																foreach ($pangkat as $row) {
															?>
															<option <?php if($pegawai->pangkat_pegawai == $row->id_pangkat){ echo "selected"; } ?> value="<?php echo $row->id_pangkat; ?>"><?php echo $row->pangkat; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Jabatan</label>
													<div class="col-sm-10">
														<select name="level_user" class="form-control select2" style="width: 100%">
															<option disabled>Pilih</option>
															<?php
																foreach ($level as $row) {
																	if($row->user_level != 'admin'){
															?>
															<option <?php if($pegawai->level_user == $row->id_level_user){ echo "selected"; } ?> value="<?php echo $row->id_level_user; ?>"><?php echo $row->user_level; ?></option>
															<?php
																	}
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Posisi</label>
													<div class="col-sm-10">
														<select name="posisi_user" class="form-control select2" style="width: 100%">
															<option disabled>Pilih</option>
															<?php
																foreach ($posisi as $row) {
															?>
															<option <?php if($pegawai->posisi_user == $row->id_posisi){ echo "selected"; } ?> value="<?php echo $row->id_posisi; ?>"><?php echo $row->posisi; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-md-2"></div>
                                                    <div class="col-md-2">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
													<div class="col-md-2">
														<a href="<?php echo site_url('../pegawai'); ?>" class="btn btn-warning btn-block btn-rounded">
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