
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0 text-dark">
                                    <?php echo ucfirst($this->uri->segment(1)); ?> - 
									<?php
										foreach ($barang as $row) {
											echo $row->nama_barang;
											$id_barang = $row->id_barang;
										}
									?>
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
										<!-- <h3>
										</h3> -->
									</div>
									<div class="card-body">
										<table id="example1" class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Peminjam</th>
													<th>Instansi Peminjam</th>
													<th>HP/WA</th>
													<th>Tanggal Pinjam</th>
													<th>Jumlah</th>
													<th>Aksi</th>
												</tr>
											</thead>
											<tbody>
												<?php
													$no = 1;
													foreach($transaksi as $row){
												?>
												<tr>
													<td><?php echo $no; ?></td>
													<td><?php echo $row->nama_peminjam; ?></td>
													<td><?php echo $row->instansi_peminjam; ?></td>
													<td><?php echo $row->hp_peminjam; ?></td>
													<td><?php echo $row->tgl_pinjam; ?></td>
													<td><?php echo $row->jumlah; ?></td>
													<td>
														<button onclick="kembalikan('<?php echo $row->id_transaksi?>','<?php echo $row->jumlah?>')" type="button" class="btn btn-default">
														Kembalikan
														</button>
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
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			
			<div class="modal fade" id="modalku">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Form Pengembalian</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form action="<?php echo site_url('../home/kembali/').$id_barang; ?>" class="form-horizontal" method="post" onsubmit="return confirm('Kembalikan?');">
							<div class="modal-body">
								<input type="hidden" name="id_transaksi" id="id">
								<div class="form-group row">
									<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal</label>
									<div class="col-sm-10">
										<input type="date" class="form-control" name="tgl_kembali" value="<?php echo date('Y-m-d'); ?>">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputEmail3" class="col-sm-2 col-form-label">Jumlah</label>
									<div class="col-sm-10">
										<input type="number" readonly class="form-control" name="jumlah" id="jumlah">
									</div>
								</div>
							</div>
							<div class="modal-footer justify-content-between">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Kembalikan</button>
							</div>
						</form>
					</div>
				<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->

<script>
	function kembalikan(id, jumlah){
		$('#modalku').modal();
		$('#id').val(id);
		$('#jumlah').val(jumlah);
	}
</script>
