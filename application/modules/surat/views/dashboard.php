
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
										<a href="<?php echo site_url('../surat/tambah'); ?>" class="btn btn-primary btn-rounded">
											Tambah Jenis Surat
										</a>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered datatable">
												<thead>
													<tr>
														<th width="5%">No</th>
														<th>Kode Surat</th>
														<th>Jenis Surat</th>
														<th width="10%">Aksi</th>
													</tr>
												</thead>
												<tbody>
													<?php
														$no = 1;
														foreach ($surat as $row) {
													?>
													<tr>
														<td width="5%" class="text-center"><?php echo $no; ?></td>
														<td width="15%"><?php echo $row->kode_surat; ?></td>
														<td><?php echo $row->jenis_surat; ?></td>
														<td width="10%" class="text-center">
															<div class="btn-group">
																<a href="<?php echo site_url('../surat/ubah/'.$row->id_jenis_surat); ?>" class="btn btn-primary btn-sm">
																	<i class="fa fa-edit"></i>
																</a>
																<a href="<?php echo site_url('../surat/hapus/'.$row->id_jenis_surat); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Hapus?')">
																	<i class="fa fa-trash"></i>
																</a>
															</div>
														</td>
													</tr>
													<?php
															$no++;
														}
													?>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->