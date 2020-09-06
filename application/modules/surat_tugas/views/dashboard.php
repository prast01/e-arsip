
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
                                        <div class="row">
                                            <div class="col-md-12">
                                                <a href="<?php echo site_url('../arsip'); ?>" class="btn btn-warning btn-rounded text-white">
                                                    <i class="fa fa-arrow-left"></i> Kembali
                                                </a>
                                                <?php if ($this->session->userdata('posisi') != '1'): ?>
                                                <a href="<?php echo site_url('../surat_tugas/request'); ?>" class="btn btn-primary btn-rounded">
                                                    <i class="fa fa-plus-circle"></i> Pesan Surat Tugas
                                                </a>
                                                <?php endif; ?>
                                                <?php if ($this->session->userdata('posisi') == '6'): ?>
                                                <a href="<?php echo site_url('../surat_tugas/semua'); ?>" class="btn btn-danger btn-rounded">
                                                    <i class="fa fa-envelope"></i> Semua Surat Tugas
                                                </a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <form action="<?php echo site_url('../surat_tugas'); ?>" method="post">
                                                    <div class="form-group row">
                                                        <div class="col-sm-2">
                                                            <select name="dalam_luar" class="form-control" style="width: 100%" data-placeholder="Pilih Perjalanan">
                                                                <option <?php if($jenis == 'all'){ echo "selected"; } ?> value="all">Semua</option>
                                                                <option <?php if($jenis == '0'){ echo "selected"; } ?> value="0">Dalam Daerah</option>
                                                                <option <?php if($jenis == '1'){ echo "selected"; } ?> value="1">Luar Daerah</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <input type="hidden" id="tgl1" value="<?php echo $tgl1; ?>">
                                                            <input type="hidden" id="tgl2" value="<?php echo $tgl2; ?>">
                                                            <input type="text" class="form-control daterange" name="tgl_kegiatan" placeholder="Tanggal Kegiatan">
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <select name="valid" class="form-control" style="width: 100%" data-placeholder="Pilih Validasi">
                                                                <option <?php if($valid == 'all'){ echo "selected"; } ?> value="all">Semua</option>
                                                                <option <?php if($valid == '0'){ echo "selected"; } ?> value="0">Proses</option>
                                                                <option <?php if($valid == '1'){ echo "selected"; } ?> value="1">Tervalidasi</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-1">
                                                            <button type="submit" name="cari" class="btn btn-success btn-rounded">Cari</button>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <button type="submit" name="excel" class="btn btn-success btn-rounded"><i class="fa fa-file-export"></i> Export Excel</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered datatable">
												<thead>
													<tr>
														<th width="5%">No</th>
														<th>Tanggal/Nomor Surat/SPPD</th>
														<th>Pemesan</th>
														<th>Pegawai</th>
														<th>Perjalanan</th>
														<th>Dasar Surat</th>
														<th>Status</th>
														<th width="10%">Aksi</th>
													</tr>
												</thead>
												<tbody class="surat_tugas">
<?php
    $no = 1;
    foreach ($surat as $row) {
?>
<tr>
    <td><?php echo $no; ?></td>
    <td>
        <?php
            // echo $row->created_at.'<br>No Surat : '.sprintf("%04s", $row->nomor_surat);
            echo $row->created_at.'<br>';

            if ($row->nomor_sppd != '') {
                echo '<br>No SPPD : '.sprintf("%04s", $row->nomor_sppd);
            }
        ?>
    </td>
    <td><?php echo $row->posisi; ?></td>
    <td>
        <ul style="margin-left: -10px">
        <?php
            $this->db->select('*');
            $this->db->from('tb_detail_pegawai');
            $this->db->join('tb_pegawai', 'tb_detail_pegawai.id_pegawai = tb_pegawai.id_pegawai');
            $this->db->where(['tb_detail_pegawai.nomor_surat'=>$row->nomor_surat]);

            $data = $this->db->get()->result();
            foreach ($data as $key) {
                $ket = "<br>(".$key->jml_berangkat." Kali)";
                
                echo "<li>".$key->nama_pegawai.$ket."</li>";
            }
        ?>
        </ul>
    </td>
    <td>
        <?php
            if($row->dalam_luar_tugas){
                echo "Luar Daerah";
            }else {
                echo "Dalam Daerah";
            }
        ?>
    </td>
    <td>
        <?php
            echo $row->dasar_surat."<br>";
            echo "Tanggal :<br>";
            echo date("d-m-Y", strtotime($row->tgl_kegiatan))." s/d ".date("d-m-Y", strtotime($row->tgl_kegiatan_2))."<br>";
            echo $row->nama_kegiatan."<br>";
            echo "di ";
            echo $row->lokasi_kegiatan."<br>";
        ?>
    </td>
    <td>
        <?php
            if ($row->sppd_surat) {
                echo "<h5>Di SPJ-kan</h5>";
                if ($row->validasi) {
                    echo "Tervalidasi";
                } else {
                    echo "Proses";
                }
            } else {
                echo "Tervalidasi";
            }

        ?>
    </td>
    <td class="text-center">
        <div class="btn-group">
            <?php
                if($row->file_surat != ''){
            ?>
            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratTugas')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
            <?php
                } elseif($row->validasi == '1' && $this->session->userdata('posisi') == '6') {
            ?>
            <button type="button" class="btn btn-success btn-sm text-white" onclick="modal2('<?php echo $row->id_surat_tugas; ?>', 'surat_tugas')" title="Unggah Berkas"><i class="fa fa-upload"></i></button>
            <?php
                }

                if($row->validasi == '0' || $this->session->userdata('posisi') == '6'){
            ?>
            <a href="<?php echo site_url('../surat_tugas/ubah/'.$row->id_surat_tugas); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
            <a href="<?php echo site_url('../surat_tugas/hapus/'.$row->id_surat_tugas); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
            <?php
                }
            ?>
        </div>
        <br><br>
        <div class="btn-group">
            <?php
                if(($row->sppd_surat && $row->validasi == '1') || $this->session->userdata('posisi') == '6'){
            ?>
            <a href="<?php echo site_url('../surat_tugas/preview/'.$row->id_surat_tugas); ?>" class="btn btn-primary btn-sm" title="Cetak Surtug" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i></a>
            <a href="<?php echo site_url('../surat_tugas/preview2/'.$row->id_surat_tugas); ?>" class="btn btn-danger btn-sm" title="Cetak SPPD" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i></a>
            <?php
                } elseif($row->sppd_surat == '0' && $row->validasi == '0') {
            ?>
            <a href="<?php echo site_url('../surat_tugas/preview/'.$row->id_surat_tugas); ?>" class="btn btn-primary btn-sm" title="Cetak Surtug" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i></a>
            <?php
                }
            ?>
        </div>
        <?php
            if($this->session->userdata('posisi') == '6'){
        ?>
        <br><br>
        <div class="btn-group">
            <?php
                if($row->sppd_surat && $row->validasi == '0'){
            ?>
            <a href="<?php echo site_url('../surat_tugas/preValid/'.$row->id_surat_tugas); ?>" class="btn btn-success btn-sm" title="Validasi Berkas" onclick="return confirm('Validasi?')"><i class="fa fa-check"></i></a>
            <?php
                }
            ?>
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
                    
                    <div class="modal fade" id="modalku">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"></h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
					
                    <div class="modal fade" id="modalku2">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"></h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->