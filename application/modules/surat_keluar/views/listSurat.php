
<?php
    $no = 1;
    foreach ($surat as $row) {
?>
<tr>
    <td><?php echo $no; ?></td>
    <td><?php echo $row->kode_surat.'/'.sprintf("%04s", $row->nomor_surat); ?></td>
    <td><?php echo $row->tgl_surat; ?></td>
    <td><?php echo $row->posisi; ?></td>
    <td>- <?php echo $row->sifat_surat.'<br>- '.$row->perihal_surat.'<br>- '.$row->lampiran_surat; ?></td>
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
            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratKeluar')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
            <?php
                } elseif($row->validasi == '1' && $this->session->userdata('posisi') == '1') {
            ?>
            <button type="button" class="btn btn-success btn-sm text-white" onclick="modal2('<?php echo $row->id_surat_keluar; ?>', 'surat_keluar')" title="Unggah Berkas"><i class="fa fa-upload"></i></button>
            <?php
                }
                if($row->validasi == '0' || $this->session->userdata('posisi') == '1'){
            ?>
            <a href="<?php echo site_url('../surat_keluar/ubah/'.$row->id_surat_keluar); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
            <a href="<?php echo site_url('../surat_keluar/hapus/'.$row->id_surat_keluar); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
            <?php
                }
            ?>
        </div>
        <?php
            if($row->validasi == '0' && $this->session->userdata('posisi') == '1'){
        ?>
        <br><br>
        <div class="btn-group">
            <a href="<?php echo site_url('../surat_keluar/validasi/'.$row->id_surat_keluar); ?>" class="btn btn-success btn-sm" title="Validasi Berkas" onclick="return confirm('Validasi?')"><i class="fa fa-check"></i></a>
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