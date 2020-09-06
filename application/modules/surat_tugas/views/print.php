<!DOCTYPE html>
<html lang="en">

	<head>
		<?php $this->load->view('template/_partial/head.php'); ?>
        
        <script type="text/javascript">
            function pindah() {
                location.href='../../surat_tugas';
            }
        </script>
    
    </head>
    
    <body onclick="pindah()">
        <table border="1" width="100%" style="border-collapse: collapse">
            <tr>
                <td class="text-center text-lg"><?php echo $surat->nomor_surat; ?></td>
            </tr>
        </table>
	</body>
</html>