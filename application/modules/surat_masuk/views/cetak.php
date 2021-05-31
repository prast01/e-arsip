<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cetak Rekapitulasi Surat Masuk</title>
</head>

<body onload="window.print()">
    <h4 style="text-align: center;">Rekapitulasi Surat Masuk</h4>
    <table border="1" style="border-collapse: collapse;" width="100%">
        <tr>
            <th width="10%">Nomor Berkas</th>
            <th width="10%">Kode Klasifikasi</th>
            <th>Uraian</th>
            <th width="10%">Tahun</th>
            <th width="15%">Keterangan</th>
        </tr>
        <?php foreach ($surat2 as $row) : ?>
            <tr>
                <td align="center"><?= $row->nomor_dinas; ?></td>
                <td align="center"><?= $row->sub_sub_klasifikasi; ?></td>
                <td><?= $row->ringkasan; ?></td>
                <td align="center"><?= date("Y", strtotime($row->tgl_terima)); ?></td>
                <td></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>