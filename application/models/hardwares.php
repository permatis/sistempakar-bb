<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Hardwares extends CI_Model {

	public function tampil()
	{
		$sql  	= $this->db->query('SELECT * FROM db_hardware ORDER BY kd_tipe ASC');
		$query	= $sql->result();

		return $query;
	}

	public function tambah()
	{
		//menampilkan hasil kode masalah paling terbesar berdasarkan kode tipe
		$sql = $this->db->query("SELECT kd_masalah FROM db_hardware WHERE kd_tipe = '".$this->input->post('kd_tipe')."' ORDER BY kd_masalah DESC");
		$query = $sql->row();

		//memecah hasil query kode masalah untuk ditambahkan secara urut
		$kata = substr($query->kd_masalah, 0,1);
		$str = substr($query->kd_masalah, 1, 2);
		$str++;

		$kode = sprintf("%02s", $str);
		$kodemasalah = $kata.$kode;
		
		//menginputkan data input
		$data = array(
			'kd_tipe' 		=> $this->input->post('kd_tipe'),
			'kd_masalah'	=> $kodemasalah,
			'masalah'		=> $this->input->post('masalah'),
			'solusi'		=> $this->input->post ('solusi')
		);

		$this->db->insert('db_hardware', $data);
	}

	public function update($id)
	{
		$data = array(
			'kd_tipe' 		=> $this->input->post('kd_tipe'),
			'kd_masalah' 	=> $this->input->post('kd_masalah'),
			'masalah'		=> $this->input->post('masalah'),
			'solusi'		=> $this->input->post('solusi')
		);

		$this->db->where('id_masalah', $id);
		$this->db->update('db_hardware', $data);
	}

	public function hapus($id)
	{
		$this->db->where('id_masalah', $id);
		$this->db->delete('db_hardware');
	}
}

/* End of file hardwares.php */
/* Location: ./application/models/hardwares.php */