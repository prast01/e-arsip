<?php
    header("Content-type: application/vnd-ms-excel");
    header("Content-Disposition: attachment; filename=surat_masuk.xls");
?>
    <center>
        <h3>DATA SURAT MASUK</h3>
    </center>
    <table border="1">
        <thead>
            <tr>
                <th rowspan="2">No</th>
                <th rowspan="2">Nomor</th>
                <th rowspan="2">Pengirim</th>
                <th rowspan="2">Tgl Surat</th>
                <th rowspan="2">Jenis Surat</th>
                <th rowspan="2">Nomor Surat</th>
                <th rowspan="2">Perihal</th>
                <th colspan="4">Disposisi</th>
            </tr>
            <tr>
                <th>Kepala Dinas</th>
                <th>Sekretaris Dinas</th>
                <th>Kepala Bidang</th>
                <th>Kepala Subag/Seksi/UPT</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $non = 1;
                foreach ($surat as $row) {
                    $ext = explode('.', $row->file_surat);
            ?>
            <tr class="">
                <td valign="top"><?php echo $non; ?></td>
                <td valign="top">
                    <?php
                        echo sprintf("%04s", $row->nomor_dinas);
                    ?>
                </td>
                <td valign="top">
                    <?php
                        echo strtoupper($row->pengirim_surat);
                    ?>
                </td>
                <td valign="top">
                    <?php
                        echo $row->tgl_surat;
                    ?>
                </td>
                <td valign="top">
                    <?php
                        echo $row->jenis_surat;
                    ?>
                </td>
                <td valign="top">
                    <?php
                        echo $row->kode_surat.'/'.$row->nomor_surat;
                    ?>
                </td>
                <td valign="top">
                    <?php
                        echo $row->perihal_surat;
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
            </tr>
            <?php
                    $non++;
                }
            ?>
        </tbody>
    </table>