<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DataTipe extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('datatipes');
		$this->load->helper('form');
		$this->load->helper('tanggalindo');
	}

	public function index()
	{
		$query['hasil'] = $this->datatipes->tampil();
		$this->load->view('admin/tipe/datatipe', $query);
	}

	public function simpan($id = NULL)
	{
		if($id == NULL)
		{
			$this->datatipes->tambah();
			redirect('datatipe', 'refresh');
		}
		else
		{
			$this->datatipes->update($id);
			redirect('datatipe', 'refresh');
		}
	}

	public function tambah()
	{
		$this->load->view('admin/tipe/tambah');
	}

	public function edit($id)
	{
		$query['hasil'] = $this->datatipes->edit($id);
		$this->load->view('admin/tipe/update', $query);
	}

	public function hapus($id)
	{
		$this->datatipes->hapus($id);
		redirect('datatipe','refresh');
	}

}

/* End of file datatipe.php */
/* Location: ./application/controllers/datatipe.php */