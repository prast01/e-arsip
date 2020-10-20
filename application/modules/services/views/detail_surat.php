<?php
if ($jenis == "suratMasuk") {
    $dari['label'] = "Dari";
    $dari['nama'] = $surat->pengirim;
} else {
    $dari['label'] = "Untuk";
    $dari['nama'] = $surat->penerima;
}
?>
<div class="card">
    <div class="card-body">
        <h5>Identitas Surat</h5>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-3 col-form-label">No Surat</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" disabled value="<?= $surat->nomor_surat; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-3 col-form-label"><?= $dari['label']; ?></label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" disabled value="<?= $dari['nama'] . " - " . $surat->wilayah; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-3 col-form-label">Nama Berkas</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" disabled value="<?= $surat->nama_berkas; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-3 col-form-label">Masalah</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" disabled value="<?= $surat->masalah; ?>">
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <?php if ($jenis == "suratMasuk") { ?>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Surat</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_surat; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Terima</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_terima; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Disposisi</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_dispo; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Diteruskan</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_terus; ?>">
                        </div>
                    </div>
                <?php } else { ?>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl Naik</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_naik; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tgl TTD</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" disabled value="<?= $surat->tgl_ttd; ?>">
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
        <h5>Isi Ringkasan</h5>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group row">
                    <div class="col-sm-12">
                        <textarea class="form-control" cols="30" rows="2" disabled><?= $surat->ringkasan; ?></textarea>
                    </div>
                </div>
            </div>
        </div>
        <h5>Diterukan ke :</h5>
        <div class="row">
            <div class="col-md-12">
                <ol>
                    <?php foreach ($dispo as $key) : ?>
                        <li><?= $key['posisi']; ?></li>
                    <?php endforeach; ?>
                </ol>
            </div>
        </div>
    </div>
</div>