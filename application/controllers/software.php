<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class software extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('softwares');
		$this->load->helper('form');
	}

	public function index()
	{
		$data['hasil'] = $this->softwares->tampil();
		$this->load->view('admin/software/software', $data);
	}

	public function simpan($id = NULL)
	{
		if($id == NULL)
		{
			$this->softwares->tambah();
			redirect('software', 'refresh');
		}
		else
		{
			$this->softwares->update($id);
			redirect('software', 'refresh');
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
        $data['title'] = 'Tambah Masalah Software';

		$this->load->view('admin/software/tambah', $data);
	}

	public function edit($id)
	{

        //menampilkan data berdasarkan id masalah software
        $this->db->where('id_masalah', $id);
        $sql1  = $this->db->get('db_software');

        $data['data'] = $sql1->result();
		
		//menampilkan judul kerusakan
		$data['title'] = 'Edit Masalah Software';

		$this->load->view('admin/software/update', $data);
	}

	public function hapus($id)
	{
		$this->softwares->hapus($id);
		redirect('software','refresh');
	}

}

/* End of file software.php */
/* Location: ./application/controllers/software.php */