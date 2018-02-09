<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logins extends CI_Model {	

	public $rules = array(
		'nama' => array(
			'field' => 'nama',
			'label'	=> 'Nama',
			'rules'	=> 'trim|xss_clean|required'
		),
		'password' => array(
			'field' => 'password',
			'label'	=> 'Password',
			'rules'	=> 'trim|required'
		)
	);

	public function login()
	{
		$array = array(
			'nama' 		=> $this->input->post('nama'),
			'password' 	=> $password = $this->hash($this->input->post('password'))
		);

		$this->db->where($array);
		$query = $this->db->get('db_pengguna');
		$sql = $query->row();

		if ($query->num_rows() == 1) {
			if ($sql->strata == 1) 
			{
				$data = array(
					'nama' 		=> $this->input->post('nama'),
					'strata'	=> '1',
					'loggedin'	=> TRUE
				);

				$this->session->set_userdata($data);
				return 'admin';
			}
			else 
			{
				$data = array(
					'nama' 		=> $this->input->post('nama'),
					'strata'	=> '2',
					'loggedin'	=> TRUE
				);

				$this->session->set_userdata($data);
				return 'user';
			}
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
	}

	public function loggedin()
	{
		return (bool) $this->session->userdata('loggedin');
	}

	public function hash($string)
	{
		return hash('sha512', $string . config_item('encription_key'));
	}

	public function tampiltipe()
	{
		$sql 	= $this->db->query('SELECT * FROM db_tipe ORDER BY kd_tipe ASC');
		// $query 	= $sql->result();

		return $sql;
	}
}

/* End of file logins.php */
/* Location: ./application/models/logins.php */