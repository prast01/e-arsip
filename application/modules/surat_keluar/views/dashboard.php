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
                        echo ucfirst($judul[0] . ' ') . ucfirst($judul[1]);
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
                    <?php if ($this->session->flashdata('success')) : ?>
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h5><i class="icon fas fa-check"></i> Sukses!</h5>
                            <?php echo $this->session->flashdata('success'); ?>
                        </div>
                    <?php endif; ?>

                    <?php if ($this->session->flashdata('gagal')) : ?>
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
                            <?php if ($this->session->userdata('posisi') == '1') : ?>
                                <a href="<?php echo site_url('../surat_keluar/request'); ?>" class="btn btn-primary btn-rounded">
                                    <i class="fa fa-plus-circle"></i> Tambah Surat Keluar
                                </a>
                            <?php endif; ?>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered datatable">
                                    <thead>
                                        <tr>
                                            <th width="5%">No</th>
                                            <th>Nomor Surat</th>
                                            <th>Tanggal Surat</th>
                                            <th>Unit Kerja</th>
                                            <th>Atribut</th>
                                            <th>Tanggal TTD</th>
                                            <th width="10%">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody class="surat_keluar">
                                        <?php
                                        $no = 1;
                                        foreach ($surat as $row) {
                                            $ext = explode('.', $row->file_surat);
                                        ?>
                                            <tr>
                                                <td><?php echo $no; ?></td>
                                                <td><?php echo $row->nomor_surat; ?></td>
                                                <td><?php echo $row->tgl_surat; ?></td>
                                                <td><?php echo $row->posisi; ?></td>
                                                <td>
                                                    - <?php echo $row->sifat_surat . '<br>- ' . $row->perihal . '<br>- ' . $row->lampiran . " " . $row->lampiran_satuan; ?></td>
                                                <td><?= $row->tgl_ttd; ?></td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <?php if ($row->file_surat != '') : ?>
                                                            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratKeluar','<?php echo $ext[1]; ?>')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
                                                        <?php endif; ?>

                                                        <?php if ($this->session->userdata('posisi') == '1') : ?>
                                                            <a href="<?php echo site_url('../surat_keluar/ubah/' . $row->id_surat_keluar); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
                                                            <a href="<?php echo site_url('../surat_keluar/hapus/' . $row->id_surat_keluar); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
                                                        <?php endif; ?>
                                                    </div>
                                                    <br>
                                                    <div class="btn-group" style="margin-top: 5px;">
                                                        <button type="button" class="btn btn-info btn-sm text-white" onclick="modal_detail('<?= $row->id_surat_keluar; ?>', 'suratKeluar')" title="Lihat Surat"><i class="fa fa-eye"></i></button>
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