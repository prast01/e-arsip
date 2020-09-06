
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
										User Baru
									</div>
									<div class="card-body">
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../user/add'); ?>">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
													<div class="col-sm-10">
														<input type="text" name="user" class="form-control" placeholder="Username">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Password</label>
													<div class="col-sm-10">
														<input type="password" name="password" class="form-control" placeholder="Password">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Ulangi Password</label>
													<div class="col-sm-10">
														<input type="password" name="password_2" class="form-control" placeholder="Retype password">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Level User</label>
													<div class="col-sm-10">
														<select name="level_user" class="form-control select2" style="width: 100%">
															<option selected="selected">Pilih</option>
															<?php
																foreach ($level as $row) {
															?>
															<option value="<?php echo $row->id_level_user; ?>"><?php echo $row->user_level; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Posisi User</label>
													<div class="col-sm-10">
														<select name="posisi_user" class="form-control select2" style="width: 100%">
															<option selected="selected">Pilih</option>
															<?php
																foreach ($posisi as $row) {
															?>
															<option value="<?php echo $row->id_posisi; ?>"><?php echo $row->posisi; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Pegawai</label>
													<div class="col-sm-10">
														<select name="id_pegawai" class="form-control select2" style="width: 100%">
															<option selected="selected">Pilih</option>
															<?php
																foreach ($pegawai as $row) {
															?>
															<option value="<?php echo $row->id_pegawai; ?>"><?php echo $row->nama_pegawai; ?></option>
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
														<a href="<?php echo site_url('../user'); ?>" class="btn btn-warning btn-block btn-rounded">
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