
										<!-- form start -->
										<form class="form-horizontal" method="post" action="<?php echo site_url('../surat_keluar/upload/'.$surat->id_surat_keluar); ?>" enctype="multipart/form-data">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Perihal</label>
													<div class="col-sm-10">
														<textarea name="perihal_surat" disabled class="form-control" rows="3"><?php echo $surat->perihal_surat; ?></textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">File</label>
													<div class="col-sm-4">
                                                        <input type="file" name="file" class="form-control">
													</div>
													<div class="col-sm-6">
														<small>* Format file hanya berupa PDF dan ukuran file maksimal 2 MB.</small>
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
                                                <div class="row">
                                                    <div class="col-2 hidden-xs"></div>
                                                    <div class="col-md-2 col-xs-10">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
													<div class="col-md-2 col-xs-10">
                                                        <button type="button" class="btn btn-warning text-white btn-block" data-dismiss="modal">
                                                            Batal
                                                        </button>
													</div>
                                                </div>
											</div>
											<!-- /.card-footer -->
										</form>