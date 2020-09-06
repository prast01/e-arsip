<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
	<title>
		<?php
			echo strtoupper(SITE_NAME);
		?>
	</title>
	<link rel="shortcut icon" href="<?php echo base_url(LOGO2); ?>" type="image/x-icon">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url('plugins/fontawesome-free/css/all.min.css'); ?>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="<?php echo base_url('plugins/icheck-bootstrap/icheck-bootstrap.min.css'); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url('dist/css/adminlte.min.css'); ?>">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- jQuery-UI -->
    <link rel="stylesheet" href="<?php echo base_url('plugins/jquery-ui/jquery-ui.css'); ?>">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?php echo base_url('plugins/datatables-bs4/css/dataTables.bootstrap4.css') ?>">
</head>
<body class="hold-transition">

    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">
                        Data Dasar Surat
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-sm datatable">
                            <thead>
                                <tr>
                                    <th width="5%">No</th>
                                    <th>Uraian</th>
                                    <th width="15%">Sumber</th>
                                    <th width="10%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $no = 1;
                                    foreach ($dasar as $row) {
                                ?>
                                <tr>
                                    <td><?php echo $no; ?></td>
                                    <td><?php echo $row->perihal_surat; ?></td>
                                    <td>SURAT MASUK</td>
                                    <td>
                                        <span class="text-primary" style="cursor: pointer" onclick="getData('SM-<?php echo $row->perihal_surat; ?>')"><i class="fa fa-check"></i> Pilih</span>
                                    </td>
                                </tr>
                                <?php
                                        $no++;
                                    }
                                    
                                    foreach ($rok as $row) {
                                ?>
                                <tr>
                                    <td><?php echo $no; ?></td>
                                    <td><?php echo $row['rok']; ?></td>
                                    <td>ROK</td>
                                    <td>
                                        <span class="text-primary" style="cursor: pointer" onclick="getData('ROK-<?php echo $row['rok']; ?>')"><i class="fa fa-check"></i> Pilih</span>
                                    </td>
                                </tr>
                                <?php
                                        $no++;
                                    }
                                    
                                    foreach ($nota as $row) {
                                ?>
                                <tr>
                                    <td><?php echo $no; ?></td>
                                    <td><?php echo $row->perihal_nota_dinas; ?></td>
                                    <td>NOTA DINAS</td>
                                    <td>
                                        <span class="text-primary" style="cursor: pointer" onclick="getData('ROK-<?php echo $row->perihal_nota_dinas; ?>')"><i class="fa fa-check"></i> Pilih</span>
                                    </td>
                                </tr>
                                <?php
                                        $no++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- jQuery -->
	<script src="<?php echo base_url('plugins/jquery/jquery.min.js'); ?>"></script>
	<!-- Bootstrap 4 -->
	<script src="<?php echo base_url('plugins/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
	<!-- jQuery-UI -->
	<script src="<?php echo base_url('plugins/jquery-ui/jquery-ui.js'); ?>"></script>
	<!-- AdminLTE App -->
	<script src="<?php echo base_url('dist/js/adminlte.min.js'); ?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url('plugins/datatables/jquery.dataTables.js'); ?>"></script>
    <script src="<?php echo base_url('plugins/datatables-bs4/js/dataTables.bootstrap4.js'); ?>"></script>

    <script>
        $(function () {
            $(".datatable").DataTable();
        });

        function getData(val) {
            window.opener.document.getElementById('a').value = val;
            window.close();
        }
    </script>
</body>
</html>