<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
	<title>
		<?php
			echo strtoupper(SITE_NAME);
			if($this->uri->segment(1)){
				echo " - ". ucfirst($this->uri->segment(1));
			}
		?>
	</title>
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
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<img src="<?php echo LOGO; ?>" alt="" width="200px"> <br>
			<a href="javascript:;"><?php echo SITE_NAME; ?></a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Pendaftaran Akun</p>
				<?php if ($this->session->flashdata('success')): ?>
                <div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<h5><i class="icon fas fa-check"></i> Sukses!</h5>
					<?php echo $this->session->flashdata('success'); ?>
				</div>
				<?php endif; ?>
				
				<?php if ($this->session->flashdata('gagal')): ?>
                <div class="alert alert-danger alert-dismissible">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<h5><i class="icon fas fa-ban"></i> Opss!</h5>
					<?php echo $this->session->flashdata('gagal'); ?>
                </div>
				<?php endif; ?>
				
				<form action="<?php echo base_url('register/add'); ?>" method="post">
					<div class="input-group mb-3">
						<input type="text" name="user" class="form-control" placeholder="Username">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" name="password" class="form-control" placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" name="password_2" class="form-control" placeholder="Retype password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<select name="level_user" class="form-control">
							<option selected="selected">Pilih Level User</option>
							<?php
								foreach ($level as $row) {
							?>
							<option value="<?php echo $row->id_level_user; ?>"><?php echo $row->user_level; ?></option>
							<?php
								}
							?>
						</select>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<select name="posisi_user" class="form-control">
							<option selected="selected">Pilih Posisi</option>
							<?php
								foreach ($posisi as $row) {
							?>
							<option value="<?php echo $row->id_posisi; ?>"><?php echo $row->posisi; ?></option>
							<?php
								}
							?>
						</select>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<select name="id_pegawai" class="form-control">
							<option selected="selected">Pilih Pegawai</option>
							<?php
								foreach ($pegawai as $row) {
							?>
							<option value="<?php echo $row->id_pegawai; ?>"><?php echo $row->nama_pegawai; ?></option>
							<?php
								}
							?>
						</select>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<!-- /.col -->
						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Daftar</button>
						</div>
					<!-- /.col -->
					</div>
				</form>

				<div class="social-auth-links text-center mb-3">
					<p>- OR -</p>
					<!-- <a href="#" class="btn btn-block btn-primary">
						<i class="fab fa-facebook mr-2"></i> Sign in using Facebook
					</a>
					<a href="#" class="btn btn-block btn-danger">
						<i class="fab fa-google-plus mr-2"></i> Sign in using Google+
					</a> -->
				</div>
				<!-- /.social-auth-links -->

				<!-- <p class="mb-1">
					<a href="#">I forgot my password</a>
				</p> -->
				<p class="mb-0">
					<a href="<?php echo site_url('../'); ?>" class="text-center btn btn-success btn-block btn-flat">Kembali</a>
				</p>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script src="<?php echo base_url('plugins/jquery/jquery.min.js'); ?>"></script>
	<!-- Bootstrap 4 -->
	<script src="<?php echo base_url('plugins/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
	<!-- AdminLTE App -->
	<script src="<?php echo base_url('dist/js/adminlte.min.js'); ?>"></script>

</body>
</html>