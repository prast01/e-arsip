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
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            Ubah Surat Masuk
                        </div>
                        <!-- form start -->
                        <form class="form-horizontal" method="post" action="<?php echo site_url('../surat_masuk/edit/' . $surat->id_surat_masuk); ?>" enctype="multipart/form-data">
                            <div class="card-body">
                                <h4>Identitas Surat</h4>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-2 col-form-label">Dari</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="pengirim" id="pengirim" placeholder="Pengirim" value="<?= $surat->pengirim; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-2 col-form-label">Wilayah/Kota</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="wilayah" id="wilayah" placeholder="Wilayah/Kota" value="<?= $surat->wilayah; ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">No Urut Surat</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" name="nomor_dinas" placeholder="No Urut Surat" value="<?= $surat->nomor_dinas; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Terima</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="tgl_terima" placeholder="Tanggal Terima" value="<?= $surat->tgl_terima; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Surat</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="tgl_surat" placeholder="Tanggal Surat" value="<?= $surat->tgl_surat; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Sifat Surat</label>
                                            <div class="col-sm-8">
                                                <select name="sifat_surat" class="form-control select2" style="width: 100%">
                                                    <option <?= ($surat->sifat_surat == 'Biasa') ? "selected" : ""; ?> value="Biasa">Biasa</option>
                                                    <option <?= ($surat->sifat_surat == 'Penting') ? "selected" : ""; ?> value="Penting">Penting</option>
                                                    <option <?= ($surat->sifat_surat == 'Rahasia') ? "selected" : ""; ?> value="Rahasia">Rahasia</option>
                                                    <option <?= ($surat->sifat_surat == 'Segera') ? "selected" : ""; ?> value="Segera">Segera</option>
                                                    <option <?= ($surat->sifat_surat == 'Amat Segera') ? "selected" : ""; ?> value="Amat Segera">Amat Segera</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="hidden" name="klas" id="klas" value="<?= $surat->klasifikasi; ?>">
                                        <input type="hidden" name="sub_klas" id="sub_klas" value="<?= $surat->sub_klasifikasi; ?>">
                                        <input type="hidden" name="sub_sub_klas" id="sub_sub_klas" value="<?= $surat->sub_sub_klasifikasi; ?>">
                                        <!-- hidden -->
                                        <input type="hidden" id="h_klas" value="<?= $surat->klasifikasi; ?>">
                                        <input type="hidden" id="h_sub_klas" value="<?= $surat->sub_klasifikasi; ?>">
                                        <input type="hidden" id="h_sub_sub_klas" value="<?= $surat->sub_sub_klasifikasi; ?>">
                                        <input type="hidden" id="h_masalah" value="<?= $surat->masalah; ?>">
                                        <input type="hidden" id="h_nomor_surat" value="<?= $surat->nomor_surat; ?>">
                                        <input type="hidden" id="h_nama_berkas" value="<?= $surat->nama_berkas; ?>">
                                        <input type="hidden" id="h_r_aktif" value="<?= $surat->r_aktif; ?>">
                                        <input type="hidden" id="h_thn_aktif" value="<?= $surat->thn_aktif; ?>">
                                        <input type="hidden" id="h_r_inaktif" value="<?= $surat->r_inaktif; ?>">
                                        <input type="hidden" id="h_thn_inaktif" value="<?= $surat->thn_inaktif; ?>">
                                        <input type="hidden" id="h_serie" value="<?= $surat->serie; ?>">
                                        <input type="hidden" id="h_ket_jra" value="<?= $surat->ket_jra; ?>">
                                        <input type="hidden" id="h_nilai_guna" value="<?= $surat->nilai_guna; ?>">
                                        <!-- end hidden -->
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Klasifikasi</label>
                                            <div class="col-sm-8">
                                                <select name="jenis_surat" id="jenis_surat" class="form-control" style="width: 100%">
                                                    <option value="<?= $surat->sub_sub_klasifikasi; ?>"><?= $surat->sub_sub_klasifikasi; ?></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Masalah</label>
                                            <div class="col-sm-8">
                                                <input type="text" name="masalah" id="masalah" class="form-control" value="<?= $surat->masalah; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Nomor Surat</label>
                                            <div class="col-sm-8">
                                                <input type="text" name="nomor_surat" id="nomor_surat" class="form-control" value="<?= $surat->nomor_surat; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Nama Berkas</label>
                                            <div class="col-sm-8">
                                                <input type="text" name="nama_berkas" id="nama_berkas" class="form-control" value="<?= $surat->nama_berkas; ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-2 col-form-label">Isi Ringkasan</label>
                                            <div class="col-sm-10">
                                                <textarea name="ringkasan" class="form-control" rows="2"><?= $surat->ringkasan; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <h4>Retensi</h4>
                                <div class="row">
                                    <input type="hidden" id="tahun_skrg" value="<?= date("Y"); ?>">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Retensi Aktif</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" name="r_aktif" id="r_aktif" onkeyup="thn_aktif()" value="<?= $surat->r_aktif; ?>">
                                            </div>
                                            <label for="inputEmail3" class="col-sm-3 col-form-label">Th Aktif</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="thn_aktif" id="thn_aktif" value="<?= $surat->thn_aktif; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Retensi Inaktif</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" name="r_inaktif" id="r_inaktif" onkeyup="thn_inaktif()" value="<?= $surat->r_inaktif; ?>">
                                            </div>
                                            <label for="inputEmail3" class="col-sm-3 col-form-label">Th Inaktif</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="thn_inaktif" id="thn_inaktif" value="<?= $surat->thn_inaktif; ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Serie</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" name="serie" id="serie" value="<?= $surat->serie; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Ket JRA</label>
                                            <div class="col-sm-3">
                                                <select name="ket_jra" id="ket_jra" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->ket_jra == "Permanen") ? "selected" : ""; ?> value="Permanen">Permanen</option>
                                                    <option <?= ($surat->ket_jra == "Dinilai Kembali") ? "selected" : ""; ?> value="Dinilai Kembali">Dinilai Kembali</option>
                                                    <option <?= ($surat->ket_jra == "Musnah") ? "selected" : ""; ?> value="Musnah">Musnah</option>
                                                </select>
                                            </div>
                                            <label for="inputEmail3" class="col-sm-3 col-form-label">Nilai Guna</label>
                                            <div class="col-sm-2">
                                                <select name="nilai_guna" id="nilai_guna" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->nilai_guna == "ADM") ? "selected" : ""; ?> value="ADM">ADM</option>
                                                    <option <?= ($surat->nilai_guna == "KEU") ? "selected" : ""; ?> value="KEU">KEU</option>
                                                    <option <?= ($surat->nilai_guna == "HK") ? "selected" : ""; ?> value="HK">HK</option>
                                                    <option <?= ($surat->nilai_guna == "IPTEK") ? "selected" : ""; ?> value="IPTEK">IPTEK</option>
                                                    <option <?= ($surat->nilai_guna == "SJRH") ? "selected" : ""; ?> value="SJRH">SJRH</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4>Lokasi Arsip</h4>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Penyimpanan</label>
                                            <div class="col-sm-6">
                                                <select name="penyimpanan" class="form-control select2" style="width: 100%;">
                                                    <?php foreach ($penyimpanan as $key) : ?>
                                                        <option <?= ($surat->penyimpanan == $key->penyimpanan) ? "selected" : ""; ?> value="<?= $key->penyimpanan; ?>"><?= $key->penyimpanan; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <input type="number" class="form-control" name="nomor_penyimpanan" value="<?= $surat->nomor_penyimpanan; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Jenis</label>
                                            <div class="col-sm-8">
                                                <select name="jenis" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->jenis == "Asli") ? "selected" : ""; ?> value="Asli">Asli</option>
                                                    <option <?= ($surat->jenis == "Tembusan") ? "selected" : ""; ?> value="Tembusan">Tembusan</option>
                                                    <option <?= ($surat->jenis == "Salinan") ? "selected" : ""; ?> value="Salinan">Salinan</option>
                                                    <option <?= ($surat->jenis == "Foto Copy") ? "selected" : ""; ?> value="Foto Copy">Foto Copy</option>
                                                    <option <?= ($surat->jenis == "Pertinggal") ? "selected" : ""; ?> value="Pertinggal">Pertinggal</option>
                                                    <option <?= ($surat->jenis == "Faximile") ? "selected" : ""; ?> value="Faximile">Faximile</option>
                                                    <option <?= ($surat->jenis == "Email") ? "selected" : ""; ?> value="Email">Email</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">File</label>
                                            <div class="col-sm-8">
                                                <input type="file" name="file" class="form-control">
                                                <input type="hidden" name="old_file" value="<?php echo $surat->file_surat; ?>">
                                            </div>
                                            <label for="inputEmail3" class="col-sm-4 col-form-label"></label>
                                            <div class="col-sm-8">
                                                <small>* Format file hanya berupa PDF/JPG dan ukuran file maksimal 10 MB.</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h4>Disposisi</h4>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Dispo</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="tgl_dispo" placeholder="Tanggal Dispo" value="<?= $surat->tgl_dispo; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal Diteruskan</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="tgl_terus" placeholder="Tanggal Diteruskan" value="<?= $surat->tgl_terus; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-8">
                                                <div class="custom-control custom-radio">
                                                    <input class="custom-control-input" type="radio" id="customRadio4" name="arsip" value="0" onclick="dispo(this)" <?= ($surat->arsipkan_1 == '0') ? "checked" : ""; ?>>
                                                    <label for="customRadio4" class="custom-control-label">Teruskan Ke</label>
                                                </div>
                                                <br>
                                                <select name="dispo_surat[]" class="form-control select2 dispo" style="width: 100%" multiple data-placeholder="Pilih Dispo" <?= ($surat->arsipkan_1 == '1') ? "disabled" : ""; ?>>
                                                    <?php
                                                    foreach ($dispo as $row) {
                                                    ?>
                                                        <option <?php echo $row['selected']; ?> value="<?php echo $row['id_posisi']; ?>"><?php echo $row['posisi']; ?></option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="custom-control custom-radio">
                                                    <input class="custom-control-input" type="radio" id="customRadio3" name="arsip" value="1" onclick="dispo(this)" <?= ($surat->arsipkan_1 == '1') ? "checked" : ""; ?>>
                                                    <label for="customRadio3" class="custom-control-label">Saya Sendiri</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <h4>Keterangan</h4>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Perihal</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" name="perihal" placeholder="Perihal Surat" value="<?= $surat->perihal; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Lampiran</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="lampiran" value="<?= $surat->lampiran; ?>">
                                            </div>
                                            <div class="col-sm-6">
                                                <select name="lampiran_satuan" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->lampiran_satuan == '') ? "selected" : ""; ?> value="">-</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Eks') ? "selected" : ""; ?> value="Eks">Eks</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Lembar') ? "selected" : ""; ?> value="Lembar">Lembar</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Berkas') ? "selected" : ""; ?> value="Berkas">Berkas</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Buku') ? "selected" : ""; ?> value="Buku">Buku</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Bendel') ? "selected" : ""; ?> value="Bendel">Bendel</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Dokumen') ? "selected" : ""; ?> value="Dokumen">Dokumen</option>
                                                    <option <?= ($surat->lampiran_satuan == 'Foto') ? "selected" : ""; ?> value="Foto">Foto</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Catatan</label>
                                            <div class="col-sm-8">
                                                <textarea name="catatan" class="form-control" rows="3"><?= $surat->catatan; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Komposisi</label>
                                            <div class="col-sm-8">
                                                <select name="komposisi" class="form-control select2" style="width: 100%;">
                                                    <?php foreach ($komposisi as $key) : ?>
                                                        <option <?= ($surat->komposisi == $key->komposisi) ? "selected" : ""; ?> value="<?= $key->komposisi; ?>"><?= $key->komposisi; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Akses</label>
                                            <div class="col-sm-8">
                                                <select name="akses" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->akses == 'Biasa/Terbuka') ? "selected" : ""; ?> value="Biasa/Terbuka">Biasa/Terbuka</option>
                                                    <option <?= ($surat->akses == 'Terbatas') ? "selected" : ""; ?> value="Terbatas">Terbatas</option>
                                                    <option <?= ($surat->akses == 'Rahasia') ? "selected" : ""; ?> value="Rahasia">Rahasia</option>
                                                    <option <?= ($surat->akses == 'Sangat Rahasia') ? "selected" : ""; ?> value="Sangat Rahasia">Sangat Rahasia</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail3" class="col-sm-4 col-form-label">Tindakan</label>
                                            <div class="col-sm-8">
                                                <select name="tindakan" class="form-control select2" style="width: 100%;">
                                                    <option <?= ($surat->tindakan == 'Balas') ? "selected" : ""; ?> value="Balas">Balas</option>
                                                    <option <?= ($surat->tindakan == 'Non Balas') ? "selected" : ""; ?> value="Non Balas">Non Balas</option>
                                                </select>
                                            </div>
                                        </div>
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
                                        <a href="<?php echo site_url('../surat_masuk'); ?>" class="btn btn-warning btn-block btn-rounded">
                                            Batal
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </form>
                    </div>
                </div>

            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->