
<?php
    $no = 1;
    foreach ($surat as $row) {
?>
<tr>
    <td><?php echo $no; ?></td>
    <td><?php echo $row->tgl_surat.'<br>'.$row->jenis_surat.'<br>'.$row->kode_surat.'/'.$row->nomor_surat; ?></td>
    <td>- <?php echo $row->sifat_surat.'<br>- '.$row->perihal_surat.'<br>- '.$row->lampiran_surat; ?></td>
    <td><?php echo $row->pengirim_surat; ?></td>
    <td>
        <?php
			echo "Kepala Dinas : <br>";
			$data = $this->db->query('SELECT * FROM tb_posisi WHERE id_posisi="'.$row->dispo_surat.'"')->row();
            echo $data->posisi."<br>";
            if ($row->dispo_surat_sekdin != '') {
                echo "Sekretaris Dinas : <br>";
				$data = $this->db->query('SELECT * FROM tb_posisi WHERE id_posisi="'.$row->dispo_surat_sekdin.'"')->row();
				echo $data->posisi."<br>";
            }
            if ($row->dispo_surat_bidang != '') {
                echo "Bidang : <br>";
				$data = $this->db->query('SELECT * FROM tb_posisi WHERE id_posisi="'.$row->dispo_surat_bidang.'"')->row();
				echo $data->posisi."<br>";
            }
            if ($row->dispo_pegawai != '') {
                echo "Pegawai : <br>";
				$data = $this->db->query('SELECT * FROM tb_pegawai WHERE id_pegawai="'.$row->dispo_pegawai.'"')->row();
				echo $data->nama_pegawai."<br>";
            }
        ?>
    </td>
    <td>
        <?php
			echo "Kepala Dinas : <br>";
            echo $row->catatan_surat."<br>";
            if ($row->catatan_sekdin != '') {
                echo "Sekretaris Dinas : <br>";
				echo $row->catatan_sekdin."<br>";
            }
            if ($row->catatan_bidang != '') {
                echo "Bidang : <br>";
				echo $row->catatan_bidang."<br>";
            }
            if ($row->catatan_seksi != '') {
                echo "Kasie/Kasubag : <br>";
				echo $row->catatan_seksi."<br>";
            }
        ?>
    </td>
    <!-- <td>
        <?php
            if ($row->validasi) {
                echo "Sudah Dibaca";
            } else {
                echo "Belum Dibaca";
            }
            
        ?>
    </td> -->
    <td class="text-center">
        <div class="btn-group">
            <button type="button" class="btn btn-warning btn-sm text-white" onclick="modal('<?php echo $row->file_surat; ?>', 'suratMasuk')" title="Lihat Berkas"><i class="fa fa-eye"></i></button>
            <?php
                if($level == '1' && $posisi == '1'){
            ?>
            <a href="<?php echo site_url('../surat_masuk/ubah/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Edit Berkas"><i class="fa fa-edit"></i></a>
            <a href="<?php echo site_url('../surat_masuk/hapus/'.$row->id_surat_masuk); ?>" class="btn btn-danger btn-sm" title="Hapus Berkas" onclick="return confirm('Hapus?')"><i class="fa fa-trash"></i></a>
            <?php
                } elseif ($level == '3' && $posisi == '1') {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                } elseif ($level == '2' && ($posisi > '1' && $posisi < '5')) {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo2/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                } elseif ($level == '2' && $posisi > '4') {
            ?>
            <a href="<?php echo site_url('../surat_masuk/dispo3/'.$row->id_surat_masuk); ?>" class="btn btn-primary btn-sm" title="Dispo"><i class="fa fa-envelope"></i></a>
            <?php
                }
            ?>
        </div>
    </td>
</tr>
<?php
        $no++;
    }
?>