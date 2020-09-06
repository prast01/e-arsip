
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
							<div class="col-md-12">
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
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <a href="<?php echo site_url('../arsip'); ?>" class="btn btn-warning btn-rounded text-white">
                                                    <i class="fa fa-arrow-left"></i> Kembali
                                                </a>
                                            </div>
                                            <div class="col-md-2">
                                                <?php if ($this->session->userdata('posisi') == '1' && $this->session->userdata('level') == '2'){ ?>
                                                <a href="<?php echo site_url('../surat_masuk/tambah'); ?>" class="btn btn-primary btn-rounded">
                                                    <i class="fa fa-plus"></i> Tambah Surat Masuk
                                                </a>
                                                <?php }else{ ?>
                                                <a href="<?php echo site_url('../surat_masuk/terdispo'); ?>" class="btn btn-danger btn-rounded text-white">
                                                    <i class="fa fa-envelope"></i> Surat Terdispo
                                                </a>
                                                <?php } ?>
                                            </div>
                                            <div class="col-md-2">
                                                <?php
                                                    if ($this->session->userdata('posisi') != '1'){
                                                ?>
                                                <a href="<?php echo site_url('../surat_masuk/semua'); ?>" class="btn btn-primary btn-rounded">
                                                    <i class="fa fa-envelope"></i> Lihat Semua Surat
                                                </a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <form action="<?php echo site_url('../surat_masuk'); ?>" method="post">
                                                    <div class="form-group row">
                                                        <div class="col-sm-2">
                                                            <select name="bulan" class="form-control select2" style="width: 100%">
                                                                <?php
                                                                    foreach ($bulan as $row=>$val) {
                                                                ?>
                                                                <option <?php if($p_bln==$row){ echo "selected"; } ?> value="<?php echo $row; ?>"><?php echo $val; ?></option>
                                                                <?php
                                                                    }
                                                                ?>
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <select name="tahun" class="form-control select2" style="width: 100%">
                                                                <?php
                                                                    foreach ($tahun as $row=>$val) {
                                                                ?>
                                                                <option <?php if($p_thn==$val){ echo "selected"; } ?> value="<?php echo $val; ?>"><?php echo $val; ?></option>
                                                                <?php
                                                                    }
                                                                ?>
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-1">
                                                            <button type="submit" name="cari" class="btn btn-success btn-rounded">Cari</button>
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
														<th width="3%">No</th>
														<th width="17%">Atribut Surat</th>
														<th>Kepala Dinas</th>
														<th>Sekretaris Dinas</th>
														<th>Kepala Bidang</th>
														<th>Kepala Subag/Seksi/UPT</th>
														<!-- <th>Status</th> -->
														<th width="10%">Aksi</th>
													</tr>
												</thead>
												<tbody class="surat_masuk">
<?php
    $non = 1;
    foreach ($surat as $row) {
        $ext = explode('.', $row->file_surat);
?>
<tr class="">
    <td><?php echo $non; ?></td>
    <td>
        <?php
            echo 'Nomor Dinas : '.sprintf("%04s", $row->nomor_dinas).'<br>';
            echo 'Pengirim : '.strtoupper($row->pengirim_surat).'<br>';
            echo '- '.$row->tgl_surat.'<br>';
            echo '- '.$row->jenis_surat.'<br>';
            echo '- '.$row->kode_surat.'/'.$row->nomor_surat.'<br>';
            echo '- '.$row->sifat_surat.'<br>';
            echo '- '.$row->lampiran_surat.'<br>';
            echo '- '.$row->perihal_surat.'<br>';
        ?>
    </td>
    <td>
        <?php
            $data = $this->db->query("SELECT * FROM tb_posisi a, tb_dispo_kadin b WHERE a.id_posisi=b.posisi_kadin AND b.nomor_dinas='$row->nomor_dinas'");
			$cek = $data->num_rows();

            if ($row->arsipkan_1 == '1') {
                echo "<i><b>Diarsipkan.</b></i><br>";
                echo "Catatan : <br>";
                echo "- ".$row->catatan_surat."<br>";
            } else {
                if ($cek > '0') {
                    echo "Disposisi : <br>";
                    $d = $data->result();
                    foreach ($d as $key) {
                        echo "- ".$key->posisi."<br>";
                    }
                    echo "Catatan : <br>";
                    echo "- ".$row->catatan_surat."<br>";
                }
            }
            
        ?>
    </td>
    <td>
        <?php
            $data = $this->db->query("SELECT * FROM tb_posisi a, tb_dispo_sekdin b WHERE a.id_posisi=b.posisi_sekdin AND b.nomor_dinas='$row->nomor_dinas'");
            $cek = $data->num_rows();

            if ($row->arsipkan_2 == '1') {
                echo "<i><b>Diarsipkan.</b></i><br>";
                echo "Catatan : <br>";
                echo "- ".$row->catatan_sekdin."<br>";
            } else {
                if ($cek > '0') {
                    echo "Disposisi : <br>";
                    $d = $data->result();
                    foreach ($d as $key) {
                        echo "- ".$key->posisi."<br>";
                    }
                    echo "Catatan : <br>";
                    echo "- ".$row->catatan_sekdin."<br>";
                }
            }
        ?>
    </td>
    <td>
        <?php
            $data = $this->db->query("SELECT * FROM tb_posisi a, tb_dispo_bidang b WHERE a.id_posisi=b.posisi_bidang AND b.nomor_dinas='$row->nomor_dinas'");
            $cek = $data->num_rows();

            if ($row->arsipkan_3 == '1') {
                echo "<i><b>Diarsipkan.</b></i><br>";
                echo "Catatan : <br>";
                echo "- ".$row->catatan_bidang."<br>";
            } else {
                if ($cek > '0') {
                    echo "Disposisi : <br>";
                    $d = $data->result();
                    foreach ($d as $key) {
                        echo "- ".$key->posisi."<br>";
                    }
                    echo "Catatan : <br>";
                    echo "- ".$row->catatan_bidang."<br>";
                }
            }
        ?>
    </td>
    <td>
        <?php
            $data = $this->db->query("SELECT * FROM tb_dispo_pegawai b, tb_posisi c WHERE b.seksi=c.id_posisi AND b.nomor_dinas='$row->nomor_dinas' GROUP BY b.seksi ORDER BY b.seksi");
            
            $cek = $data->num_rows();

            if ($cek > '0') {
                $d = $data->result();
                $no = 1;
                foreach ($d as $key) {
                    echo $no.". ".$key->posisi."<br>";
                    if ($key->id_pegawai != '0') {
                        $data2 = $this->db->query("SELECT * FROM tb_pegawai a, tb_dispo_pegawai b WHERE a.id_pegawai=b.id_pegawai AND b.seksi='$key->id_posisi' AND b.nomor_dinas='$row->nomor_dinas'")->result();
                        foreach ($data2 as $key2) {
                            echo "- ".$key2->nama_pegawai."<br>";
                        }
                        echo "Catatan :<br>";
                        echo "- ".$key->catatan."<br>";
                    } else {
                        echo "<i><b>Diarsipkan.</b></i><br>";
                    }

                    $no++;
                    echo "<br>";
                }
            }
        ?>
    </td>
    <!-- <td>
        <?php
            if ($row->validasi) {
                echo "Sudah Dibaca";
            } else {
                echo "Belum Dibaca";
            }
            
        ?>
    </td> -->
    <td class="text-center">
        <div class="btn-group">
            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratMasuk','<?php echo $ext[1]; ?>')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
            <?php
                if($posisi == '1'){
            ?>
            <a href="<?php echo site_url('../surat_masuk/ubah/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
            <a href="<?php echo site_url('../surat_masuk/hapus/'.$row->id_surat_masuk); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
            <?php
                } elseif ($posisi == '19') {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                } elseif ($posisi > '1' && $posisi < '5') {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo2/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                } elseif ($posisi > '4' && $posisi < '19') {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo3/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                }
            ?>
        </div>
    </td>
</tr>
<?php
        $non++;
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
                                <!-- <div class="modal-footer justify-content-between">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div> -->
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