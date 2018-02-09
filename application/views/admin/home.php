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
						<li class="active"><a href="<?php echo index_page(); ?>">Home</a></li>
						<li><a href="<?php echo base_url('datatipe');?>">Data Tipe</a></li>
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
		<div style=" width:970px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#999999;"><h3>Selamat Datang di Halaman Administrator Aplikasi Penelusuran Kerusakan Blackberry</h3></div>
        <br/>
        <div style=" height: 200px; width: 995px; display:block;padding:9.5px;margin:0 0 10px;font-size:14px;line-height:1.428571429;color:#333;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5; border:1px solid #ccc; border-radius:4px"><h4>Admin diberi hak akses untuk memanajemen web (menginputkan data, mengedit data, menghapus data).</h4></div>
	</div>
	<script type="text/javascript" src="<?php echo site_url('js/jquery.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/bootstrap.js'); ?>"></script>
</body>
</html>
