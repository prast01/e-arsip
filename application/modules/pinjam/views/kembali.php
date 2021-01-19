<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">
                        Data <?php echo ucfirst($this->uri->segment(1)); ?> Baru
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
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <form class="form-horizontal" method="post" action="<?php echo site_url('../pinjam/back/' . $berkas->id_pinjam); ?>" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="card card-info">
                                                    <div class="card-header">
                                                        <h4 class="card-title">Cari Berkas</h4>
                                                    </div>
                                                    <div class="card-body">
                                                        <div class="form-group row">
                                                            <label for="inputEmail3" class="col-sm-2 col-form-label">Jenis Surat</label>
                                                            <div class="col-sm-1">
                                                                <div class="form-group pt-2">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="jenis_surat" id="jns" value="suratMasuk" <?= ($berkas->jenis_surat == 1) ? "checked" : "disabled" ?>>
                                                                        <label class="form-check-label">Masuk</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-1">
                                                                <div class="form-group pt-2">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="jenis_surat" id="jns" value="suratKeluar" <?= ($berkas->jenis_surat == 2) ? "checked" : "disabled" ?>>
                                                                        <label class="form-check-label">Keluar</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <label for="inputEmail3" class="col-sm-2 col-form-label">Nomor Surat</label>
                                                            <div class="col-sm-3">
                                                                <input type="text" class="form-control" id="no_surat" name="no_surat" placeholder="Masukkan No Surat Lengkap" readonly value="<?= $berkas->no_surat; ?>">
                                                            </div>
                                                            <!-- <div class="col-sm-1">
                                                                <button type="button" id="btn_cari" class="btn btn-success btn-block">Cari</button>
                                                            </div> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <h4>Data Berkas</h4>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Nomor Agenda</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="nomor_dinas" name="nomor_dinas" readonly value="<?= $berkas->nomor_dinas; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Kode Klasifikasi</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="kode_klas" name="kode_klas" readonly value="<?= $berkas->kode_klas; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Isi Ringkasan</label>
                                                    <div class="col-sm-8">
                                                        <textarea name="ringkasan" id="ringkasan" cols="30" rows="2" class="form-control" readonly><?= $berkas->ringkasan; ?></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Penyimpanan</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="penyimpanan" name="penyimpanan" readonly value="<?= $berkas->penyimpanan; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Referensi</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="referensi" readonly name="referensi" value="<?= $berkas->referensi; ?>">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <h4>Identitas Peminjam</h4>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Peminjaman *</label>
                                                    <div class="col-sm-9">
                                                        <input type="date" class="form-control" id="tgl_pinjam" readonly name="tgl_pinjam" value="<?= $berkas->tgl_pinjam; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Nomor Peminjaman</label>
                                                    <div class="col-sm-9">
                                                        <input type="number" class="form-control" id="no_pinjam" name="no_pinjam" readonly value="<?= $berkas->no_pinjam; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Unit Kerja *</label>
                                                    <div class="col-sm-9">
                                                        <select name="unit_kerja" disabled id="unit_kerja" class="form-control select2" style="width: 100%;">
                                                            <option disabled value="">Pilih Unit Kerja</option>
                                                            <?php foreach ($unit_kerja as $key) : ?>
                                                                <option <?= ($key->id_posisi == $berkas->unit_kerja) ? "selected" : ""; ?> value="<?= $key->id_posisi; ?>"><?= $key->posisi; ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Nama Peminjaman *</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" readonly id="nama_peminjam" name="nama_peminjam" value="<?= $berkas->nama_peminjam; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Keperluan</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" readonly id="keperluan" name="keperluan" value="<?= $berkas->keperluan; ?>">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Catatan Peminjaman</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" readonly id="catatan" name="catatan" value="<?= $berkas->catatan; ?>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <h4>Pengembalian</h4>
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Kembali *</label>
                                                    <div class="col-sm-9">
                                                        <input type="date" class="form-control" id="tgl_kembali" required name="tgl_kembali" value="<?= date("Y-m-d"); ?>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row pt-5">
                                            <div class="col-6">
                                                <div class="row">
                                                    <div class="col-3 hidden-xs"></div>
                                                    <div class="col-md-3 col-xs-6">
                                                        <button type="submit" class="btn btn-info btn-block">Simpan</button>
                                                    </div>
                                                    <div class="col-md-3 col-xs-6">
                                                        <a href="<?php echo site_url('../pinjam'); ?>" class="btn btn-warning btn-block btn-rounded">
                                                            Batal
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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