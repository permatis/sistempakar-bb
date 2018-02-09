<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Registers extends CI_Model{
	
	public $rules = array(
		'nama'		=> array(
			'field' => 'nama',
			'label'	=> 'Nama',
			'rules'	=> 'trim|xss_clean|required|min_length[5]|max_length[50]|is_unique[db_pengguna.nama]'
		),
		'email'	=> array(
			'field' => 'email',
			'label'	=> 'Email',
			'rules'	=> 'trim|required|valid_email|is_unique[db_pengguna.email]'
		),
		'password'	=> array(
			'field' => 'password',
			'label'	=> 'Password',
			'rules'	=> 'trim|required|matches[pwd_ulang]'
		),
		'pwd_ulang' => array(
			'field' => 'pwd_ulang',
			'label'	=> 'Ulang Password',
			'rules'	=> 'trim|required'
		)
	);

	function daftar()
	{
		
		$tz = new DateTime('now', new DateTimeZone('Asia/Jakarta'));
		$tanggal = $tz->format('Y-m-d H:i:s');

		$array = array(
			'nama' 		=> $this->input->post('nama'),
			'email'		=> $this->input->post('email'),
			'password' 	=> $password = $this->hash($this->input->post('password')),
			'tanggal'	=> $tanggal
		);

		$this->db->insert('db_pengguna', $array);
	}

	public function hash($string)
	{
		return hash('sha512', $string . config_item('encription_key'));
	}

}

?>