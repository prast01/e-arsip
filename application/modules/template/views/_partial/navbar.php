
			<!-- Navbar -->
			<nav class="main-header navbar navbar-expand navbar-white navbar-light">
				<!-- Left navbar links -->
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
					</li>
				</ul>

				<!-- Right navbar links -->
				<ul class="navbar-nav ml-auto">
					<!-- Notifications Dropdown Menu -->
					<?php
						if($this->session->userdata('posisi') == '6'){
					?>
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" href="#">
							<i class="far fa-bell"></i>
							<span class="badge badge-warning navbar-badge jml-notif"></span>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-item dropdown-header jml-notif-2"></span>
							<div class="dropdown-divider"></div>
							<a href="<?php echo site_url('../surat_masuk') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-masuk-1"></span>
							</a>
							<!-- <a href="<?php echo site_url('../surat_keluar') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-keluar"></span>
							</a> -->
							<a href="<?php echo site_url('../surat_tugas') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-tugas"></span>
							</a>
						</div>
					</li>
					<?php
						} elseif($this->session->userdata('posisi') == '5') {
					?>
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" href="#">
							<i class="far fa-bell"></i>
							<span class="badge badge-warning navbar-badge jml-notif-3"></span>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-item dropdown-header jml-notif-4"></span>
							<div class="dropdown-divider"></div>
							<a href="<?php echo site_url('../surat_masuk') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-masuk-2"></span>
							</a>
							<a href="<?php echo site_url('../nota_dinas') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-nota-2"></span>
							</a>
						</div>
					</li>
					<?php
						} else {
					?>
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" href="#">
							<i class="far fa-bell"></i>
							<span class="badge badge-warning navbar-badge jml-notif-masuk"></span>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-item dropdown-header jml-notif-masuk-2"></span>
							<div class="dropdown-divider"></div>
							<a href="<?php echo site_url('../surat_masuk') ?>" class="dropdown-item">
								<i class="fas fa-envelope mr-2"></i> <span class="jml-masuk-3"></span>
							</a>
						</div>
					</li>
					<?php
						}
					?>
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" href="#">
							<i class="far fa-user"></i>
							<!-- <span class="badge badge-warning navbar-badge">15</span> -->
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<!-- <span class="dropdown-item dropdown-header">15 Notifications</span>
							<div class="dropdown-divider"></div> -->
							<a href="<?php echo site_url('../pegawai/gantiPassword') ?>" class="dropdown-item">
								Ganti Password
							</a>
							<div class="dropdown-divider"></div>
							<a href="<?php echo site_url('../logout') ?>" class="dropdown-item">
								Keluar
							</a>
							<!-- <div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">
								<i class="fas fa-users mr-2"></i> 8 friend requests
								<span class="float-right text-muted text-sm">12 hours</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">
								<i class="fas fa-file mr-2"></i> 3 new reports
								<span class="float-right text-muted text-sm">2 days</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All Notifications</a> -->
						</div>
					</li>
				</ul>
			</nav>
			<!-- /.navbar -->