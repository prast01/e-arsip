
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
				                <?php if ($this->session->flashdata('gagal')): ?>
								<div class="alert alert-danger alert-dismissible">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<h5><i class="icon fas fa-ban"></i> Eror!</h5>
									<!-- <?php echo $this->session->flashdata('gagal'); ?> -->
									<?php echo form_error('kegiatan'); ?>
								</div>
				                <?php endif; ?>
							</div>
                        </div>
						<div class="row">
							<div class="col-1"></div>
							<div class="col-10">
								<div class="card">
									<div class="card-header">
										Nota Dinas Baru
									</div>
									<div class="card-body">
										<!-- form start -->
										<!-- <form class="form-horizontal" method="post" action="<?php echo site_url('../nota_dinas/add2'); ?>"> -->
										<?php echo form_open('../nota_dinas/add2'); ?>
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" name="tgl_nota_dinas" placeholder="Tanggal Nota Dinas" value="<?php echo date('Y-m-d'); ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Kegiatan</label>
													<div class="col-sm-4">
														<select name="kegiatan" class="form-control select2" style="width: 100%" data-placeholder="Pilih Kegiatan">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($dpa as $row) {
															?>
															<option value="<?php echo $row->id_dpa; ?>"><?php echo $row->nama_dpa; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<label for="inputEmail3" class="col-sm-2 col-form-label">Bulan</label>
													<div class="col-sm-4">
														<select name="bulan" class="form-control select2" style="width: 100%" data-placeholder="Pilih Kegiatan">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($bulan as $row=>$val) {
															?>
															<option value="<?php echo $val; ?>"><?php echo $val; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Rekening</label>
													<div class="col-sm-4">
														<select id="rek" class="form-control select2" style="width: 100%" data-placeholder="Pilih Rekening">
															<option selected disabled value=''>Pilih</option>
															<?php
																foreach ($rek as $row) {
															?>
															<option value="<?php echo $row->id_rekening; ?>"><?php echo $row->kode_rekening; ?> - <?php echo $row->uraian_rekening; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<div class="col-sm-2">
														<input type="text" class="form-control" id="jml2" placeholder="ROK Awal">
													</div>
													<div class="col-sm-2">
														<input type="text" class="form-control" id="jml" placeholder="Penambahan">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Dalam Rangka</label>
													<div class="col-sm-4">
														<input type="text" class="form-control" id="alasan" placeholder="Dalam Rangka">
													</div>
													<div class="col-sm-2">
														<button type="button" class="btn btn-success btn-rounded" onclick="tambahRek()">Tambah</button>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label"></label>
													<div class="col-sm-10">
														<div class="table-responsive">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<th>Rekening</th>
																		<th width="20%">Dalam Rangka</th>
																		<th width="15%">ROK Awal</th>
																		<th width="15%">Penambahan</th>
																		<th width="15%">ROK Akhir</th>
																		<th width="10%">Aksi</th>
																	</tr>
																</thead>
																<tbody id="tbody"></tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-sm-2"></div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
													<div class="col-sm-2">
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