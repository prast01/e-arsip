
<?php
    $no = 1;
    foreach ($surat as $row) {
?>
<tr>
    <td><?php echo $no; ?></td>
    <td>
        <?php
            echo $row->tgl_surat.'<br>No Surat : '.sprintf("%04s", $row->nomor_surat);

            if ($row->sppd_surat == '1') {
                echo '<br>No SPPD : '.sprintf("%04s", $row->nomor_sppd);
            }
        ?>
    </td>
    <td><?php echo $row->posisi; ?></td>
    <td>
        <ul style="margin-left: -10px">
        <?php
            $this->db->select('*');
            $this->db->from('tb_detail_pegawai');
            $this->db->join('tb_pegawai', 'tb_detail_pegawai.id_pegawai = tb_pegawai.id_pegawai');
            $this->db->where(['tb_detail_pegawai.nomor_surat'=>$row->nomor_surat]);

            $data = $this->db->get()->result();
            foreach ($data as $key) {
                $ket = "<br>(".$key->jml_berangkat." Kali)";
                
                echo "<li>".$key->nama_pegawai.$ket."</li>";
            }
        ?>
        </ul>
    </td>
    <td>
        <?php
            if($row->dalam_luar_tugas){
                echo "Luar Daerah";
            }else {
                echo "Dalam Daerah";
            }
        ?>
    </td>
    <td>
        <?php
            echo $row->dasar_surat."<br>";
            echo "Tanggal ";
            echo date("d-m-Y", strtotime($row->tgl_kegiatan))."<br>";
            echo "di ";
            echo $row->lokasi_kegiatan."<br>";
        ?>
    </td>
    <td>
        <?php
            if ($row->validasi) {
                echo "Tervalidasi";
            } else {
                echo "Proses";
            }
        ?>
    </td>
    <td class="text-center">
        <div class="btn-group">
            <?php
                if($row->file_surat != ''){
            ?>
            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratTugas')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
            <?php
                } elseif($row->validasi == '1' && $this->session->userdata('posisi') == '6') {
            ?>
            <button type="button" class="btn btn-success btn-sm text-white" onclick="modal2('<?php echo $row->id_surat_tugas; ?>', 'surat_tugas')" title="Unggah Berkas"><i class="fa fa-upload"></i></button>
            <?php
                }
                if($row->validasi == '0' || $this->session->userdata('posisi') == '6'){
            ?>
            <a href="<?php echo site_url('../surat_tugas/ubah/'.$row->id_surat_tugas); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
            <a href="<?php echo site_url('../surat_tugas/hapus/'.$row->id_surat_tugas); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
            <?php
                }
            ?>
        </div>
        <?php
            if($this->session->userdata('posisi') == '6'){
        ?>
        <br><br>
        <div class="btn-group">
            <?php
                if($row->validasi == '0'){
            ?>
            <a href="<?php echo site_url('../surat_tugas/validasi/'.$row->id_surat_tugas); ?>" class="btn btn-success btn-sm" title="Validasi Berkas" onclick="return confirm('Validasi?')"><i class="fa fa-check"></i></a>
            <?php
                }
            ?>
            <a href="<?php echo site_url('../surat_tugas/preview/'.$row->id_surat_tugas); ?>" class="btn btn-primary btn-sm" title="Cetak Berkas" onclick="return confirm('Cetak?')"><i class="fa fa-print"></i></a>
        </div>
        <?php
            }
        ?>
    </td>
</tr>
<?php
        $no++;
    }
?>