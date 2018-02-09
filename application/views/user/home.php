<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Login Sistem Pakar</title>
	<link rel="stylesheet" href="<?php echo site_url('css/bootstrap.css');?>" />
	<link rel="stylesheet" href="<?php echo site_url('css/style.css');?>" />
</head>
<body>
	<div class="container">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-header">
				<a href="" class="navbar-brand">APLIKASI KERUSAKAN BLACKBERRY</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="container">
				<div class="collapse navbar-collapse bs-navbar-collapse" id="collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<?php echo base_url('login/user'); ?>">Home</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Selamat Datang, <?php echo ucfirst($this->session->userdata['nama']); ?> <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<?php echo site_url('login/logout');?>">Keluar</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<h3>KONSULTASI KERUSAKAN BLACKBERRY</h3>
		<hr />
			<?php echo form_open('login/carimasalah', array('class' => 'form-horizontal')); ?>
				<fieldset>
					<div class="form-group">
						<?php echo form_label('Pilih tipe blackberry :','tipe_hp', array('class' => 'col-lg-3 form-label')); ?>
						<div class="col-lg-6">
						<?php 
						echo form_dropdown('tipe_hp', $options, '', 'class="form-control"');
						?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Pilih tipe kerusakan :','tipe_kerusakan', array('class' => 'col-lg-3 form-label')); ?>
						<div class="col-lg-6">
						<?php 
						$data = array(
							'software'	=> 'Software',
							'hardware'	=> 'Hardware'
						);

						echo form_dropdown('tipe_kerusakan', $data, '', 'class="form-control"');
						?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-6 col-lg-offset-3">
							<?php echo form_submit(array('value' => 'Cari Masalah', 'class' => 'btn btn-success')) ?>
						</div>
					</div>
				</fieldset>	
			<?php echo form_close(); ?>
	</div>
	<script type="text/javascript" src="<?php echo site_url('js/jquery.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/bootstrap.js'); ?>"></script>
</body>
</html>
