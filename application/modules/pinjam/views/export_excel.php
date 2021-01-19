<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=data_pinjam_" . $p_bln . $p_thn . "_" . date("YmdHis") . ".xls");
?>
<center>
    <h3>DATA PEMINJAMAN SURAT<br>Bulan <?= $bulan[$p_bln]; ?> Tahun <?= $p_thn; ?></h3>
</center>
<table border="1">
    <thead>
        <tr>
            <th>No Agenda</th>
            <th>Nama Peminjam</th>
            <th>Tgl Pinjam</th>
            <?php if ($jenis == 2) : ?>
                <th>Tgl Kembali</th>
            <?php endif; ?>
            <th>Klasifikasi</th>
            <th>No Berkas</th>
            <th>Isi Berkas</th>
            <th>Catatan</th>
        </tr>
    </thead>

    <tbody>
        <?php foreach ($daftar as $key) : ?>
            <tr>
                <td><?= $key->no_pinjam; ?></td>
                <td><?= $key->nama_peminjam; ?></td>
                <td><?= $key->tgl_pinjam; ?></td>
                <?php if ($jenis == 2) : ?>
                    <td><?= $key->tgl_kembali; ?></td>
                <?php endif; ?>
                <td><?= $key->kode_klas; ?></td>
                <td><?= $key->no_surat; ?></td>
                <td><?= $key->ringkasan; ?></td>
                <td><?= $key->catatan; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>