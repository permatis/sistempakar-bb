<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class C_about extends CI_Controller {
 
    function __construct(){
        parent::__construct();
        
    }
    public function index()
    {
        $this->load->view("v_about"); //maksudnya menampilkan file v_about.php yg ada difolder view
    }
}
