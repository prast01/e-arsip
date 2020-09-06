
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
										<a href="<?php echo site_url('../arsip'); ?>" class="btn btn-warning btn-rounded text-white">
											<i class="fa fa-arrow-left"></i> Kembali
										</a>
										<a href="<?php echo site_url('../nota_dinas/tambah'); ?>" class="btn btn-primary btn-rounded">
											<i class="fa fa-plus-circle"></i> Nota Dinas
										</a>
										<a href="<?php echo site_url('../nota_dinas/tambah2'); ?>" class="btn btn-primary btn-rounded">
											<i class="fa fa-plus-circle"></i> Nota Dinas Penambahan Anggaran
										</a>
										<?php
											if($this->session->userdata('posisi') == '5'){
										?>
										<a href="<?php echo site_url('../nota_dinas/notaValid'); ?>" class="btn btn-danger btn-rounded">
											<i class="fa fa-plus-circle"></i> Nota Dinas PA Valid
										</a>
										<?php
											}
										?>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered datatable">
												<thead>
													<tr>
														<th width="5%">No</th>
														<th width="15%">Tujuan</th>
														<th>Tanggal</th>
														<th>Perihal</th>
														<th width="10%">Aksi</th>
													</tr>
												</thead>
												<tbody>
													<?php
														$no = 1;
														foreach ($nota_dinas as $row) {
															$d = $this->db->query("SELECT SUM(b.rok) AS rok, SUM(b.nominal) AS nominal FROM tb_nota_detail b WHERE b.nomor_dinas='$row->nomor_dinas'")->row();
															$nominal = $d->rok + $d->nominal;
													?>
													<tr>
														<td width="5%" class="text-center"><?php echo $no; ?></td>
														<td width="15%"><?php echo $row->tujuan_nota_dinas; ?></td>
														<td><?php echo $row->tgl_nota_dinas; ?></td>
														<td>
															<?php
																echo $row->perihal_nota_dinas;
																if ($row->id_dpa != '') {
																	echo "<br>Kegiatan :<br>";
																	$id_dpa = $row->id_dpa;
																	$d = $this->db->get_where("tb_dpa", ["id_dpa"=>$id_dpa])->row();
																	echo $d->nama_dpa;
																	echo "<br>Nominal :<br><b>Rp ";
																	echo number_format($nominal, 0, ',', '.')."</b>";
																}
															?>
														</td>
														<td width="10%" class="text-center">
															<div class="btn-group">
																<?php
																	if($row->nomor_dinas == ''){
																?>
																<a href="<?php echo site_url('../nota_dinas/ubah/'.$row->id_nota_dinas); ?>" class="btn btn-primary btn-sm">
																	<i class="fa fa-edit"></i>
																</a>
																<a href="<?php echo site_url('../nota_dinas/hapus/'.$row->id_nota_dinas); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Hapus?')">
																	<i class="fa fa-trash"></i>
																</a>
																<a href="<?php echo site_url('../nota_dinas/printout/'.$row->id_nota_dinas); ?>" class="btn btn-primary btn-sm" title="Cetak Nota Dinas" onclick="return confirm('Cetak?')" target="_blank"><i class="fa fa-print"></i>
																</a>
																<?php
																	} else {
																		if($row->valid == '0' || $this->session->userdata('posisi') == '5'){
																?>
																<a href="<?php echo site_url('../nota_dinas/ubah2/'.$row->id_nota_dinas); ?>" class="btn btn-primary btn-sm">
																	<i class="fa fa-edit"></i>
																</a>
																<a href="<?php echo site_url('../nota_dinas/hapus2/'.$row->id_nota_dinas); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Hapus?')">
																	<i class="fa fa-trash"></i>
																</a>
																<a href="<?php echo site_url('../nota_dinas/preview2/'.$row->id_nota_dinas); ?>" class="btn btn-primary btn-sm" title="Cetak Nota Dinas" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i>
																</a>
																<?php
																		} else {
																?>
																<a href="<?php echo site_url('../nota_dinas/preview2/'.$row->id_nota_dinas); ?>" class="btn btn-primary btn-sm" title="Cetak Nota Dinas" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i>
																</a>
																<?php
																		}
																	}
																?>
															</div>
															<?php
																if($this->session->userdata('posisi') == '5' && $row->id_dpa != '' && $row->valid == '0'){
															?>
															<br><br>
															<div class="btn-group">
																<a href="<?php echo site_url('../nota_dinas/preview3/'.$row->id_nota_dinas); ?>" class="btn btn-success btn-sm" onclick="return confirm('Validasi?')" title="Validasi">
																	<i class="fa fa-check"></i>
																</a>
															</div>
															<?php
																}
															?>
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