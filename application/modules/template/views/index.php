<!DOCTYPE html>
<html lang="en">

	<head>
		<?php $this->load->view('template/_partial/head.php'); ?>
	</head>

	<body class="sidebar-mini layout-fixed sidebar-collapse">
		<div class="wrapper">

			<?php $this->load->view('template/_partial/navbar.php'); ?>

			<?php $this->load->view('template/_partial/sidebar.php'); ?>

			<?php echo $content; ?>

			<?php $this->load->view('template/_partial/footer.php'); ?>

		</div>
	<!-- ./wrapper -->

		<?php $this->load->view('template/_partial/js.php'); ?>
	</body>
</html>