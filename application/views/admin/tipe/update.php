<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Update Tipe Blackberry</title>
	<link rel="stylesheet" href="<?php echo site_url('css/bootstrap.css');?>" />
	<link rel="stylesheet" href="<?php echo site_url('css/style.css');?>" />
</head>
<body>
	<div class="container">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-header">
				<a href="" class="navbar-brand">SISTEM PAKAR BLACKBERRY</a>
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
						<li><a href="<?php echo base_url('login/admin'); ?>">Home</a></li>
						<li class="active"><a href="<?php echo index_page(); ?>">Data Tipe</a></li>
						<li><a href="<?php echo base_url('datauser'); ?>">Data User</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Data Masalah dan Solusi<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<?php echo base_url('hardware');?>">Masalah dan Solusi Hardware</a></li>
								<li><a href="<?php echo base_url('software');?>">Masalah dan Solusi Software</a></li>
							</ul>
						</li>
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
		<div class="well">
		<?php foreach ($hasil as $row):?>
			<?php echo form_open('datatipe/simpan/'.$row->id_tipe, array('class' => 'form-horizontal')); ?>
				<fieldset>
					<legend>Edit Data Tipe</legend>
					<?php form_hidden('kode', $row->nama_tipe); ?>
					<div class="form-group">
						<?php echo form_label('Nama Tipe', 'nama', array('class' => 'col-lg-3 form-label')); ?>
						<div class="col-lg-8">
							<?php echo form_input(array('name' => 'nama', 'class' => 'form-control', 'value' => $row->nama_tipe)); ?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-8 col-lg-offset-3">
							<?php echo form_submit(array('value' => 'Update', 'class' => 'btn btn-success')) ?>
						</div>
					</div>
						<?php endforeach;?>
				</fieldset>	
			<?php echo form_close(); ?>
		</div>
	</div>
	<script type="text/javascript" src="<?php echo site_url('js/jquery.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/bootstrap.js'); ?>"></script>
</body>
</html>
