
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
										<form class="form-horizontal" method="post" action="<?php echo site_url('../nota_dinas/printout2/'.$nota_dinas->id_nota_dinas); ?>">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Tanggal</label>
													<div class="col-sm-10">
														<input type="date" class="form-control" disabled name="tgl_nota_dinas" placeholder="Tanggal Nota Dinas" value="<?php echo date('Y-m-d', strtotime($nota_dinas->tgl_nota_dinas)); ?>">
														<input type="hidden" name="nomor_dinas" value="<?php echo $nota_dinas->nomor_dinas; ?>">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Kegiatan</label>
													<div class="col-sm-4">
														<select name="kegiatan" disabled class="form-control select2" style="width: 100%" data-placeholder="Pilih Kegiatan">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($dpa as $row) {
															?>
															<option <?php if($row->id_dpa == $nota_dinas->id_dpa){ echo "selected"; } ?> value="<?php echo $row->id_dpa; ?>"><?php echo $row->nama_dpa; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<label for="inputEmail3" class="col-sm-2 col-form-label">Bulan</label>
													<div class="col-sm-4">
														<select name="bulan" disabled class="form-control select2" style="width: 100%" data-placeholder="Pilih Kegiatan">
															<option selected disabled>Pilih</option>
															<?php
																foreach ($bulan as $row=>$val) {
															?>
															<option <?php if($val == $nota_dinas->bulan){ echo "selected"; } ?> value="<?php echo $val; ?>"><?php echo $val; ?></option>
															<?php
																}
															?>
														</select>
													</div>
												</div>
												<!-- <div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Rekening</label>
													<div class="col-sm-6">
														<select id="rek" class="form-control select2" style="width: 100%" data-placeholder="Pilih Rekening">
															<option selected disabled value=''>Pilih</option>
															<?php
																foreach ($rek as $row) {
															?>
															<option value="<?php echo $row->id_rekening; ?>"><?php echo $row->uraian_rekening; ?></option>
															<?php
																}
															?>
														</select>
													</div>
													<div class="col-sm-2">
														<input type="text" class="form-control" id="jml" placeholder="Jumlah">
													</div>
													<div class="col-sm-2">
														<button type="button" class="btn btn-success btn-rounded" onclick="tambahRek()">Tambah</button>
													</div>
												</div> -->
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label"></label>
													<div class="col-sm-10">
														<table class="table table-bordered">
															<thead>
																<tr>
																	<th>Rekening</th>
																	<th width="20%">Dalam Rangka</th>
																	<th width="15%">ROK Awal</th>
																	<th width="15%">Penambahan</th>
																	<th width="15%">ROK Akhir</th>
																</tr>
															</thead>
															<tbody id="tbody">
																<?php
																	foreach ($detail as $key) {
																		$total = $key->rok + $key->nominal;
																?>
																<tr id="trx-<?php echo $key->id_nota_detail; ?>">
																	<td><?php echo $key->kode_rekening." -<br>".$key->uraian_rekening; ?></td>
																	<td><?php echo $key->alasan; ?></td>
																	<td align="right"><?php echo number_format($key->rok, 0, ',', '.'); ?></td>
																	<td align="right"><?php echo number_format($key->nominal, 0, ',', '.'); ?></td>
																	<td align="right"><?php echo number_format($total, 0, ',', '.'); ?></td>
																</tr>
																<?php
																	}
																?>
															</tbody>
														</table>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">TTD</label>
													<div class="col-sm-10 mt-2">
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio3" name="ttd" value="0" checked>
															<label for="customRadio3" class="custom-control-label">Kepala Dinas</label>
														</div>
														<div class="custom-control custom-radio">
															<input class="custom-control-input" type="radio" id="customRadio4" name="ttd" value="1">
															<label for="customRadio4" class="custom-control-label">Sekretaris Dinas</label>
														</div>
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-sm-2"></div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-info btn-block" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i> Cetak</button>
                                                    </div>
													<?php
														if($nota_dinas->valid == '0'){
													?>
													<div class="col-md-2">
														<a href="<?php echo site_url('../nota_dinas/ubah2/'.$nota_dinas->id_nota_dinas); ?>" class="btn btn-primary btn-block" title="Edit Berkas"><i class="fa fa-edit"></i> Ubah Data</a>
													</div>
													<?php
														}
													?>
													<div class="col-sm-2">
														<a href="<?php echo site_url('../nota_dinas'); ?>" class="btn btn-warning btn-block btn-rounded">
														<i class="fa fa-arrow-left"></i> Batal
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