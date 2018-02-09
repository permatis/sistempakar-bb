<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DataUser extends CI_Controller {

	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		//query untuk menampilkan data pengguna
		$query = $this->db->query("SELECT * FROM db_pengguna WHERE strata = '2' ORDER BY id_nama ASC");
		$sql = $query->result();
		$data['hasil'] = $sql;

		//menampilkan data penguna ke halaman view datauser
		$this->load->view('admin/user/datauser', $data);
	}

	public function hapus($id)
	{
		$this->db->where('id_nama', $id);
		$this->db->delete('db_pengguna');

		//setelah data terhapus berdasarkan id_nama, langsung kembali ke halaman datauser
		redirect('datauser', 'refresh');
	}

}

/* End of file datauser.php */
/* Location: ./application/controllers/datauser.php */