<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Hardware extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('hardwares');
		$this->load->helper('form');
		$this->load->helper('katapendek');
	}

	public function index()
	{
		$data['hasil'] = $this->hardwares->tampil();
		$this->load->view('admin/hardware/hardware', $data);
	}

	public function simpan($id = NULL)
	{
		if($id == NULL)
		{
			$this->hardwares->tambah();
			redirect('hardware', 'refresh');
		}
		else
		{
			$this->hardwares->update($id);
			redirect('hardware', 'refresh');
		}
	}

	public function tambah()
	{
		//membuat option menu dropdown menjadi array
		$menu = array();

		//menampilkan dropdown database
		$this->db->select('*');
		$sql = $this->db->get('db_tipe');

		//melakukan perulangan untuk menampilkan hasil query menjadi array
        foreach ($sql->result_array() as $row) 
        {
        	$menu[$row['kd_tipe']] = $row['nama_tipe'];
        }

        $data['options'] = $menu;

        //menampilkan judul berdasarkan kerusakan
        $data['title'] = 'Tambah Masalah Hardware';

		$this->load->view('admin/hardware/tambah', $data);
	}

	public function edit($id)
	{

        //menampilkan data berdasarkan id masalah software
        $this->db->where('id_masalah', $id);
        $sql1  = $this->db->get('db_hardware');

        $data['data'] = $sql1->result();
		
		//menampilkan judul kerusakan
		$data['title'] = 'Edit Masalah Hardware';

		$this->load->view('admin/hardware/update', $data);
	}

	public function hapus($id)
	{
		$this->hardwares->hapus($id);
		redirect('hardware','refresh');
	}

}

/* End of file hardware.php */
/* Location: ./application/controllers/hardware.php */