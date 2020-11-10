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
                        <div class="card-body">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <a href="<?= site_url("../arsip"); ?>" class="btn btn-warning text-white"><span class="fa fa-arrow-left"></span> Kembali</a>
                                    <a href="<?= site_url("../pinjam/tambah"); ?>" class="btn btn-success"><span class="fa fa-plus"></span> Pinjam Baru</a>
                                    <a href="<?= site_url("../pinjam/kembali"); ?>" class="btn btn-danger"><span class="fa fa-envelope"></span> Daftar Kembali</a>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <form action="<?php echo site_url('../pinjam'); ?>" method="post">
                                        <div class="form-group row">
                                            <div class="col-sm-2">
                                                <select name="bulan" class="form-control select2" style="width: 100%">
                                                    <?php foreach ($bulan as $row => $val) : ?>
                                                        <option <?= ($p_bln == $row) ? "selected" : ""; ?> value="<?php echo $row; ?>"><?php echo $val; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <select name="tahun" class="form-control select2" style="width: 100%">
                                                    <?php foreach ($tahun as $row => $val) : ?>
                                                        <option <?= ($p_thn == $val) ? "selected" : ""; ?> value="<?php echo $val; ?>"><?php echo $val; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="col-sm-1">
                                                <button type="submit" name="cari" class="btn btn-success btn-rounded btn-block"><span class="fa fa-search"></span> Cari</button>
                                            </div>
                                            <div class="col-sm-1">
                                                <button type="submit" name="export" class="btn btn-success btn-rounded btn-block"><span class="fa fa-file-export"></span> Excel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered datatable">
                                            <thead>
                                                <tr>
                                                    <th>No Agenda</th>
                                                    <th>Nama Peminjam</th>
                                                    <th>Tgl Pinjam</th>
                                                    <th>Klasifikasi</th>
                                                    <th>No Berkas</th>
                                                    <th>Isi Berkas</th>
                                                    <th>Catatan</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($daftar as $key) : ?>
                                                    <?php $jenis = ($key->jenis_surat == 1) ? "suratMasuk" : "suratKeluar"; ?>
                                                    <tr>
                                                        <td><?= $key->no_pinjam; ?></td>
                                                        <td><?= $key->nama_peminjam; ?></td>
                                                        <td><?= $key->tgl_pinjam; ?></td>
                                                        <td><?= $key->kode_klas; ?></td>
                                                        <td><?= $key->no_surat; ?></td>
                                                        <td><?= $key->ringkasan; ?></td>
                                                        <td><?= $key->catatan; ?></td>
                                                        <td class="text-center">
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-info btn-sm text-white" onclick="modal_detail('<?= $key->id_surat; ?>', '<?= $jenis; ?>')" title="Lihat Surat"><i class="fa fa-eye"></i></button>
                                                                <a href="<?= site_url("../pinjam/ubah/" . $key->id_pinjam); ?>" class="btn btn-sm btn-warning text-white"><span class="fa fa-edit"></span></a>
                                                                <a href="<?= site_url("../pinjam/hapus/" . $key->id_pinjam); ?>" class="btn btn-sm btn-danger text-white"><span class="fa fa-trash"></span></a>
                                                            </div>
                                                            <br>
                                                            <div class="btn-group mt-2">
                                                                <a href="<?= site_url("../pinjam/kembalikan/" . $key->id_pinjam); ?>" class="btn btn-sm btn-info text-white"><span class="fa fa-sync"></span></a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
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