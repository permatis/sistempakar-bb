<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Login Sistem Pakar</title>
	<link rel="stylesheet" href="<?php echo site_url('css/style.css');?>" />
	<link rel="stylesheet" href="<?php echo site_url('css/bootstrap.css');?>" />
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
						<li><a href="<?php echo base_url('home'); ?>">Home</a></li>
						<li class="active"><a href="<?php echo index_page(); ?>">Login</a></li>
						<li><a href="<?php echo base_url('register'); ?>">Register</a></li>
                        <li><a href="<?php echo base_url('c_about'); ?>">About</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-2"></div>
		<div class="col-lg-8 well">
			<?php echo form_open('login', array('class' => 'form-horizontal')); ?>
				<fieldset>
					<legend>LOGIN APLIKASI</legend>
						<?php if(validation_errors()):?>
						<div class="alert alert-dismissable alert-warning">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<p><?php echo validation_errors(); ?></p>
							
						</div>
						<?php endif;?>
						<?php if(isset($error)):?>
						<div class="alert alert-dismissable alert-warning">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<p><?php echo $error; ?></p>
							
						</div>
						<?php endif;?>
					<div class="form-group">
						<?php echo form_label('Nama','nama', array('class' => 'col-lg-3 form-label')); ?>
						<div class="col-lg-8">
							<?php echo form_input(array('name' => 'nama', 'class' => 'form-control', 'value' => set_value('nama'))); ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Password', 'password', array('class' => 'col-lg-3 form-label')); ?>
						<div class="col-lg-8">
							<?php echo form_password(array('name' => 'password', 'class' => 'form-control', 'value' => set_value('password'))); ?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-8 col-lg-offset-3">
							<?php echo form_submit(array('value' => 'Login', 'class' => 'btn btn-success')) ?>
						</div>
					</div>
				</fieldset>	
			<?php echo form_close(); ?>
		</div>
		<div class="col-lg-2"></div>
	</div>
	<script type="text/javascript" src="<?php echo site_url('js/jquery.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/bootstrap.js'); ?>"></script>
</body>
</html>

