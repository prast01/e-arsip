
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0 text-dark">
                                    <?php echo ucfirst($this->uri->segment(1)); ?>
                                </h1>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</div>
				<!-- /.content-header -->

				<!-- Main content -->
				<section class="content">
					<div class="container-fluid">
						<!-- Small boxes (Stat box) -->
						<div class="row">
							<div class="col-12">
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
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<a href="<?php echo site_url('../home'); ?>" class="btn btn-warning btn-rounded">
											Kembali
										</a>
									</div>
                                    <!-- form start -->
                                    <form class="form-horizontal" method="post" action="<?php echo site_url('../home/add'); ?>">
                                        <div class="card-body">
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal</label>
                                                <div class="col-sm-10">
                                                    <input type="date" class="form-control" name="tgl_pinjam" value="<?php echo date('Y-m-d'); ?>">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Peminjam</label>
                                                <div class="col-sm-10">
													<select name="peminjam" class="form-control select2" style="width: 100%;">
														<option selected="selected">Pilih</option>
														<?php
															foreach ($peminjam as $row) {
														?>
														<option value="<?php echo $row->id_peminjam; ?>"><?php echo $row->nama_peminjam; ?></option>
														<?php
															}
														?>
													</select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Barang</label>
                                                <div class="col-sm-10">
													<select name="barang" class="form-control select2" style="width: 100%;">
														<option selected="selected">Pilih</option>
														<?php
															foreach ($barang as $row) {
														?>
														<option value="<?php echo $row->id_barang; ?>"><?php echo $row->nama_barang; ?></option>
														<?php
															}
														?>
													</select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Jumlah</label>
                                                <div class="col-sm-10">
                                                    <input type="number" class="form-control" name="jumlah" placeholder="Jumlah">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Keperluan</label>
                                                <div class="col-sm-10">
                                                    <input type="keperluan" class="form-control" name="keperluan" placeholder="Keperluan">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-info">Simpan</button>
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