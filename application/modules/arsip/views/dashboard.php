
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
									<div class="card-body text-center">
                                        <div class="row">
                                            <div class="col-lg-4 col-12">
                                                <!-- small box -->
                                                <div class="small-box bg-info">
                                                    <div class="inner">
                                                        <!-- <h3><?php echo $surat_masuk; ?></h3> -->
                                                        <h3 class="jml_surat_masuk"></h3>

                                                        <p>Surat Masuk</p>
                                                    </div>
                                                    <div class="icon">
                                                        <i class="ion ion-bag"></i>
                                                    </div>
                                                    <a href="<?php echo site_url('../surat_masuk'); ?>" class="small-box-footer">Lihat Semua <i class="fas fa-arrow-circle-right"></i></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12">
                                                <!-- small box -->
                                                <div class="small-box bg-indigo">
                                                    <div class="inner">
                                                        <!-- <h3><?php echo $surat_keluar; ?></h3> -->
                                                        <h3 class="jml_surat_keluar"></h3>

                                                        <p>Surat Keluar</p>
                                                    </div>
                                                    <div class="icon">
                                                        <i class="ion ion-bag"></i>
                                                    </div>
                                                    <a href="<?php echo site_url('../surat_keluar'); ?>" class="small-box-footer">Lihat Semua <i class="fas fa-arrow-circle-right"></i></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12">
                                                <!-- small box -->
                                                <div class="small-box bg-teal">
                                                    <div class="inner">
                                                        <!-- <h3><?php echo $surat_tugas; ?></h3> -->
                                                        <h3 class="jml_surat_tugas"></h3>

                                                        <p>Surat Tugas</p>
                                                    </div>
                                                    <div class="icon">
                                                        <i class="ion ion-bag"></i>
                                                    </div>
                                                    <a href="<?php echo site_url('../surat_tugas'); ?>" class="small-box-footer">Lihat Semua <i class="fas fa-arrow-circle-right"></i></a>
                                                </div>
                                            </div>
                                        <!-- </div>
                                        <div class="row"> -->
                                            <div class="col-lg-4 col-12">
                                                <!-- small box -->
                                                <div class="small-box bg-olive">
                                                    <div class="inner">
                                                        <!-- <h3><?php echo $surat_masuk; ?></h3> -->
                                                        <h3 class="jml_nota_dinas"></h3>

                                                        <p>Nota Dinas</p>
                                                    </div>
                                                    <div class="icon">
                                                        <i class="ion ion-bag"></i>
                                                    </div>
                                                    <a href="<?php echo site_url('../nota_dinas'); ?>" class="small-box-footer">Lihat Semua <i class="fas fa-arrow-circle-right"></i></a>
                                                </div>
                                            </div>
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