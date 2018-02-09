<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DataTipes extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		
	}

	public function tampil()
	{
		$sql  	= $this->db->get('db_tipe');
		$query	= $sql->result();
		return $query;
	}

	public function edit($id)
	{
		$this->db->where('id_tipe',$id);
		$this->db->limit('1');
		$sql = $this->db->get('db_tipe', $id);
		$query = $sql->result();
		return $query;
	}

	public function tambah()
	{
		//query menampilkan kode tipe untuk ditambahkan secara automatis, auto_increament
		$sql 	= $this->db->query("SELECT kd_tipe FROM db_tipe ORDER BY kd_tipe DESC");
		$query 	= $sql->row();

		//memecah hasil query kode masalah untuk ditambahkan secara urut
		$str = substr($query->kd_tipe, 1, 2);
		$str++;

		$kode 		= sprintf("%02s", $str);
		$kd_tipe 	= 'K'.$kode;

		print_r($kd_tipe);
		$data = array(
			'kd_tipe' 	=> $kd_tipe,
			'nama_tipe'	=> $this->input->post('nama')
		);

		$this->db->insert('db_tipe', $data);
	}

	public function update($id)
	{
		$data = array(
			'kd_tipe' 	=> $this->input->post('kode'),
			'nama_tipe'	=> $this->input->post('nama')
		);

		$this->db->where('id_tipe', $id);
		$this->db->update('db_tipe', $data);

	}

	public function hapus($id)
	{
		$this->db->where('id_tipe', $id);
		$this->db->delete('db_tipe');
	}

}

/* End of file datatipes.php */
/* Location: ./application/models/datatipes.php */