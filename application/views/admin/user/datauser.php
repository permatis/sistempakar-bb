<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Data Pengguna</title>
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
						<li><a href="<?php echo base_url('login/admin'); ?>">Home</a></li>
						<li><a href="<?php echo base_url('datatipe');?>">Data Tipe</a></li>
						<li class="active"><a href="<?php echo index_page(); ?>">Data User</a></li>
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
		<div class="container">
			<h3>DATA PENGGUNA</h3>
			<hr />
			<table class="table table-striped table-bordered table-hover" id="example">
				<thead>
					<tr>
						<th>Nama</th>
						<th>Email</th>
						<th>Tanggal Registrasi</th>
						<th>Hapus</th>
					</tr>
				</thead>
				<tbody>
				<?php 
				if(isset($hasil)):
				foreach ($hasil as $row): 
				?>
					<tr>
						<td><?php echo $row->nama; ?></td>
						<td><?php echo $row->email; ?></td>
						<td><?php echo tanggal_format_indonesia($row->tanggal); ?></td>
						<td width="100px"><?php echo anchor('datauser/hapus/'.$row->id_nama, '<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span></button>',array('title' => 'Hapus'));?></td>
					</tr>
				<?php 
				endforeach;
				?>
				</tbody>
				<tbody>
				<?php 
				else:
				?>
				<tr>
					<td colspan="4">Data tidak ditemukan.</td>
				</tr>
				<?php endif;?>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript" src="<?php echo site_url('js/jquery.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/bootstrap.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/jquery.dataTables.js'); ?>"></script>
	<script	type="text/javascript" src="<?php echo site_url('js/datatables.js'); ?>"></script>
</body>
</html>