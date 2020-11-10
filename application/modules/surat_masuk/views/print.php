<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Print -
        <?php
        if ($this->uri->segment(1)) {
            $judul = explode('_', $this->uri->segment(1));
            if (isset($judul[1])) {
                $judul2 = $judul[1];
            } else {
                $judul2 = '';
            }
            echo ucfirst($judul[0] . ' ') . ucfirst($judul2);
        }
        ?>
    </title>
    <link rel="shortcut icon" href="<?php echo base_url(LOGO2); ?>" type="image/x-icon">
    <style>
        .head1 {
            font-family: Arial;
            font-size: 14pt
        }

        .head2 {
            font-family: Arial;
            font-size: 18pt
        }

        .head3 {
            font-family: Arial;
            font-size: 12pt
        }
    </style>
    <script type="text/javascript">
        function pindah() {
            location.href = '../surat_masuk/semua';
        }
    </script>
</head>

<body onLoad="window.print()" onclick="pindah()">
    <table border="0" style="border-collapse:collapse; border-bottom:3px solid" width="100%">
        <thead>
            <tr>
                <th width="20%">
                    <img src="<?php echo base_url(LOGO_JEPARA); ?>" width="85px" style="padding: 5px 5px 5px 5px; border: 0px solid">
                </th>
                <td align="center">
                    <h2 class="head1" style="margin-bottom:-10px">PEMERINTAH KABUPATEN JEPARA</h2>
                    <h1 class="head2" style="margin-bottom:-10px">DINAS KESEHATAN</h1>
                    <p class="head3" style="margin-bottom:-10px">Jalan Kartini Nomor 44 Telp (0291)591427, 591743 Fax (0291)591427</p>
                    <p class="head3" style="margin-bottom:-10px">E-mail : dinkeskabjepara@yahoo.co.id</p>
                    <p class="head3">JEPARA Kode Pos 59411</p>
                </td>
            </tr>
        </thead>
    </table>
    <br>

    <center>
        <h3 style="margin-bottom: 0px;">DAFTAR ARSIP - <?= strtoupper($judul[0] . ' ') . strtoupper($judul2); ?></h3>
        <?php $bln = ($p_bln == "all") ? "SEMUA BULAN" : "BULAN " . strtoupper($bulan[$p_bln]); ?>
        <h4 style="margin-top: 5px;"><?= $bln; ?> TAHUN <?= $p_thn; ?></h4>
    </center>

    <table border="1" style="width: 100%; border-collapse: collapse;">
        <thead>
            <tr>
                <th>Nomor Agenda</th>
                <th>Unit Pengolah</th>
                <th>Jenis Arsip</th>
                <th>Jumlah Arsip</th>
                <th>Kurun Waktu</th>
                <th>Keterangan</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($surat as $row) : ?>
                <tr>
                    <td align="center" valign="top"><?= $row->nomor_dinas; ?></td>
                    <td valign="top">
                        <ol style="margin: 0 0; padding-left: 15px;">
                            <?php foreach ($dispo as $key) : ?>
                                <li><?= $key['posisi']; ?></li>
                            <?php endforeach; ?>
                        </ol>
                    </td>
                    <td valign="top"><?= $row->jenis; ?></td>
                    <td align="center" valign="top">-</td>
                    <td valign="top"><?= $p_thn; ?></td>
                    <td align="center" valign="top">-</td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>