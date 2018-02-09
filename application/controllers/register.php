<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
        $this->load->library('form_validation');
		$this->load->model('registers');
	}
	
	function index()
	{
		$rules = $this->registers->rules;
        $this->form_validation->set_rules($rules);

        if($this->form_validation->run() == TRUE)
        {
        	$this->registers->daftar();
        	redirect('login', 'refresh');
        }
        
		$this->load->view('register');
	}
}

?>