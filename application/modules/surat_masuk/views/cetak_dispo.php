<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CETAK LEMBAR DISPOSISI</title>
    <link rel="shortcut icon" href="<?php echo base_url(LOGO2); ?>" type="image/x-icon">
    <style>
        @media print {
            body {
                margin-top: 0mm;
                margin-bottom: 5mm;
                margin-left: 15mm;
                margin-right: 10mm
            }
        }

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

        .table {
            font-size: 11px;
        }

        .catatan {
            font-size: 12px;
            margin-bottom: 5px;
            margin-top: 0px;
        }

        .garis {
            border-bottom: 1px dashed black;
            margin-top: 2px;
            margin-bottom: 10px;
            text-align: center;
        }

        .potong {
            margin-top: 0px;
            margin-bottom: -10px;
            font-family: 'Courier New', Courier, monospace;
        }

        .vertical img {
            transform-origin: 0 50%;
            transform: rotate(-90deg);
            white-space: nowrap;
            display: block;
            position: relative;
            bottom: 0;
            left: 10%;
        }
    </style>
</head>

<body onLoad="window.print()">
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
    <table border="1" style="border-collapse:collapse;" width="100%">
        <thead>
            <tr>
                <th colspan="2">
                    <h3 style="margin: 5px 0;">LEMBAR DISPOSISI</h3>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td width="50%" valign="top">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="25%">Surat Dari</td>
                                <td width="1%">:</td>
                                <td><?= $surat->pengirim; ?></td>
                            </tr>
                            <tr>
                                <td width="25%">No. Surat</td>
                                <td width="1%">:</td>
                                <td><?= $surat->nomor_surat; ?></td>
                            </tr>
                            <tr>
                                <td width="25%">Tgl Surat</td>
                                <td width="1%">:</td>
                                <td><?= $surat->tgl_surat; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="50%" valign="top">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="30%">Diterima Tgl</td>
                                <td width="1%">:</td>
                                <td><?= $surat->tgl_terima; ?></td>
                            </tr>
                            <tr>
                                <td width="30%">No. Agenda</td>
                                <td width="1%">:</td>
                                <td><?= $surat->nomor_dinas; ?></td>
                            </tr>
                            <tr>
                                <td width="30%">Sifat</td>
                                <td width="1%">:</td>
                                <td><?= $surat->sifat_surat; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="12.5%">Perihal</td>
                                <td width="1%">:</td>
                                <td><?= $surat->perihal; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="50%" valign="top">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td colspan="3">Diteruskan kepada :</td>
                            </tr>
                            <?php $no = 1; ?>
                            <?php foreach ($dispo as $row) : ?>
                                <?php if ($row['selected'] == "selected") : ?>
                                    <tr>
                                        <td width="3%"><?= ($row['selected'] == "selected") ? "<span style='color: red; font-size: 12px;'>&#9746;</span>" : "<span style='color: black; font-size: 12px;'>&#9744;</span>"; ?> </td>
                                        <td width="4%"><?= $no++; ?>.</td>
                                        <td><?= $row['posisi']; ?></td>
                                    </tr>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </td>
                <td width="50%" valign="top">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td colspan="2">Dengan hormat harap :</td>
                            </tr>
                            <tr>
                                <td width="3%">1.</td>
                                <td>Tanggapan dan saran</td>
                            </tr>
                            <tr>
                                <td width="3%">2.</td>
                                <td>Proses lebih lanjut</td>
                            </tr>
                            <tr>
                                <td width="3%">3.</td>
                                <td>Koordinasi/konfirmasikan</td>
                            </tr>
                            <tr>
                                <td width="3%">4.</td>
                                <td>Disiapkan jawaban</td>
                            </tr>
                            <tr>
                                <td width="3%">5.</td>
                                <td>Agar dipenuhi</td>
                            </tr>
                            <tr>
                                <td width="3%">6.</td>
                                <td>Dibicarakan</td>
                            </tr>
                            <tr>
                                <td width="3%">7.</td>
                                <td>Diedarkan</td>
                            </tr>
                            <tr>
                                <td width="3%">8.</td>
                                <td>Diarsipkan</td>
                            </tr>
                            <tr>
                                <td width="3%">9.</td>
                                <td>...............................</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table class="table" border="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="50%">Catatan</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <p class="catatan"><b>1. Kepala Dinas :</b> <br><?= $surat->catatan; ?></p>
                                    <br><br>
                                    <p class="catatan"><b>2. Sekretaris :</b> <br><?= $surat->catatan_sekdin; ?></p>
                                    <br><br>
                                    <p class="catatan"><b>3. Kabid :</b> <br><?= $surat->catatan_kabid; ?></p>
                                    <br><br>
                                    <p class="catatan"><b>4. Kasubag/Kasi :</b> <br><?= $surat->catatan_kasie; ?></p>
                                    <br><br>
                                </td>
                                <td valign="bottom">
                                    <table border="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td align="center">
                                                    <p style="margin-bottom:-15px;">KEPALA DINAS KESEHATAN</p>
                                                    <p>KABUPATEN JEPARA</p>
                                                    <br>
                                                    <p style="margin-bottom:-15px; text-decoration: underline">MUDRIKATUN, S.SiT, SKM, MM.Kes, MH</p>
                                                    <p style="margin-bottom:-15px">Pembina Tk. I</p>
                                                    <p>NIP. 19690610 199003 2 010</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <br>
    <div class="garis">
        <div class="potong">Potong Disini &#9986;</div>
    </div>
    <br>
    <table class="table" border="1" style="border-collapse:collapse;" width="80%">
        <tbody>
            <tr>
                <td colspan="2" align="center">
                    <b>
                        <p style="font-size: 12px;">KARTU KENDALI SURAT MASUK</p>
                    </b>
                </td>
                <td rowspan="3" width="25%" valign="top" align="center">
                    <b>No. Agenda <br>
                        <p style="font-size: 14px;"><?= $surat->nomor_dinas; ?></p>
                    </b>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table border="0" width="100%">
                        <tr>
                            <td width="15%">Indeks</td>
                            <td>: <b><?= $surat->nama_berkas; ?></b></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table border="0" width="100%">
                        <tr>
                            <td width="15%">Kode</td>
                            <td>: <b><?= $surat->sub_sub_klasifikasi; ?></b></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table border="0" width="100%" height="50px">
                        <tr>
                            <td valign="top">
                                Isi Ringkasan <br> <b><?= $surat->ringkasan; ?></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table border="0" width="100%" height="30px">
                        <tr>
                            <td valign="top">
                                Dari <br> <b><?= $surat->pengirim . " - " . $surat->wilayah; ?></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="40%">
                    <table border="0" width="100%">
                        <tr>
                            <td width="25%">No Surat</td>
                            <td>: <b><?= $surat->nomor_surat; ?></b></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table border="0" width="100%">
                        <tr>
                            <td width="35%">Tgl Surat</td>
                            <td>: <b><?= $surat->tgl_surat; ?></b></td>
                        </tr>
                    </table>
                </td>
                <td width="25%" rowspan="4" valign="top" align="center">
                    Tanda Terima <br> (paraf & tgl)
                </td>
            </tr>
            <tr>
                <td width="40%">
                    <table border="0" width="100%">
                        <tr>
                            <td width="25%">Lamp</td>
                            <td>: <b><?= $surat->lampiran . " " . $surat->lampiran_satuan; ?></b></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table border="0" width="100%">
                        <tr>
                            <td width="35%">Tgl Terima</td>
                            <td>: <b><?= $surat->tgl_terima; ?></b></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table border="0" width="100%">
                        <tr>
                            <td width="25%">Unit Kerja</td>
                            <td>:
                                <?php foreach ($dispo as $row) : ?>
                                    <?php if ($row['selected'] == "selected") : ?>
                                        <b><?= $row['posisi']; ?></b>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table border="0" width="100%">
                        <tr>
                            <td>Catatan</td>
                        </tr>
                        <tr>
                            <td>
                                <b><?= $surat->catatan; ?></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>