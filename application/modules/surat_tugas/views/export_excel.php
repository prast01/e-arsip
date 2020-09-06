<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=surat_tugas.xls");
?>
    <center>
        <h3>DATA SURAT TUGAS</h3>
    </center>
    <table border="1">
        <thead>
            <tr>
                <th width="5%">No</th>
                <!-- <th>Tanggal/Nomor Surat/SPPD</th> -->
                <th>Pemesan</th>
                <th>Pegawai</th>
                <th>Jumlah Ke</th>
                <th>Perjalanan</th>
                <th>Dasar Surat</th>
                <th>Dari</th>
                <th>Sampai</th>
                <th>Kegiatan</th>
                <th>Lokasi</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $no = 1;
                foreach ($surat as $row) {
            ?>
            <tr>
                <!-- <td align="center" valign="top"><?php echo $no; ?></td> -->
                <td align="left" valign="top">
                    <?php
                        // echo $row->created_at.'<br>No Surat : '.sprintf("%04s", $row->nomor_surat);
                        echo $row->created_at.'<br>';

                        if ($row->nomor_sppd != '') {
                            echo '<br>No SPPD : '.sprintf("%04s", $row->nomor_sppd);
                        }
                    ?>
                </td>
                <td align="left" valign="top"><?php echo $row->posisi; ?></td>
                <td align="left" valign="top">
                    <?php
                        $this->db->select('*');
                        $this->db->from('tb_detail_pegawai');
                        $this->db->join('tb_pegawai', 'tb_detail_pegawai.id_pegawai = tb_pegawai.id_pegawai');
                        $this->db->where(['tb_detail_pegawai.nomor_surat'=>$row->nomor_surat]);

                        $data = $this->db->get()->result();
                        foreach ($data as $key) {
                            echo $key->nama_pegawai."<br>";
                        }
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        $this->db->select('*');
                        $this->db->from('tb_detail_pegawai');
                        $this->db->join('tb_pegawai', 'tb_detail_pegawai.id_pegawai = tb_pegawai.id_pegawai');
                        $this->db->where(['tb_detail_pegawai.nomor_surat'=>$row->nomor_surat]);

                        $data = $this->db->get()->result();
                        foreach ($data as $key) {
                            $ket = $key->jml_berangkat." Kali";
                            echo $ket."<br>";
                        }
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        if($row->dalam_luar_tugas){
                            echo "Luar Daerah";
                        }else {
                            echo "Dalam Daerah";
                        }
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        echo $row->dasar_surat;
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        echo date("d-m-Y", strtotime($row->tgl_kegiatan));
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        echo date("d-m-Y", strtotime($row->tgl_kegiatan_2));
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        echo $row->nama_kegiatan;
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        echo $row->lokasi_kegiatan;
                    ?>
                </td>
                <td align="left" valign="top">
                    <?php
                        if ($row->sppd_surat) {
                            echo "Teknis Kantor<br>";
                        } else {
                            echo "";
                        }

                        if ($row->validasi) {
                            echo "Tervalidasi";
                        } else {
                            echo "Proses";
                        }
                    ?>
                </td>
            </tr>
            <?php
                    $no++;
                }
            ?>
        </tbody>
    </table>