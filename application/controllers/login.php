<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller{
	
	function __construct()
	{
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('logins');
    }

    public function index() 
    {
        //check session
        $this->logins->loggedin() == FALSE || redirect('login/admin');

        //validasi input data
        $rules = $this->logins->rules;
        $this->form_validation->set_rules($rules);
        if($this->form_validation->run() == TRUE)
        {
            if ($this->logins->login() == 'admin')
            {
                redirect('login/admin');
            }
            elseif($this->logins->login() == 'user')
            {
                redirect('login/user');
            }
            else
            {
                $this->session->set_flashdata('error', 'nama/password salah.');
                $data = array('error' => 'Nama atau password salah.');
                $this->load->view('login', $data);
            }
        }
        else
        {
            $this->load->view('login');
        }
    }

    public function logout()
    {
       $this->logins->logout();
       redirect('login');
    }

    public function admin()
    {
        //check session
        if ($this->logins->loggedin() == FALSE) {
            redirect('login');
        }
        else
        {
            //jika user login sebagai user, kembalikan user ke halaman user.
            if ($this->session->userdata['strata'] == 2)
            {
                redirect('login/user');
            }
            else
            {
                $this->load->view('admin/home');
            }

        }
    }

    //menampilkan pilihan tipe hape dan tipe kerusakannya, software atau hardware
    public function user()
    {
        //check dulu sessionnya
        if ($this->logins->loggedin() == FALSE) {
            redirect('login');
        }
        else
        {
            //jika admin login sebagai admin, kembalikan admin ke halaman admin.
            if ($this->session->userdata['strata'] == 1)
            {
                redirect('login/admin');
            }
            else
            {
                //query untuk menampilkan halaman tipe
                $sql = $this->logins->tampiltipe();
                $menu = array();
                foreach ($sql->result_array() as $row) {
                    $menu[$row['kd_tipe']] = $row['nama_tipe'];
                }

                $data['options'] = $menu;
                $this->load->view('user/home', $data);
            }
        }
    }

    //menamilkan masalah dihalaman user
    public function carimasalah()
    {
        //check dulu sessionnya
        if ($this->logins->loggedin() == FALSE) {
            redirect('login');
        }
        else
        {
            //query untuk menampilkan masalah berdasarkan tipe hape
            $this->db->where('kd_tipe', $this->input->post('tipe_hp'));
            $sql = $this->db->get('db_'.$this->input->post('tipe_kerusakan'));
            $data['hasil'] = $sql->result();

            //kunci yang nantinya berguna untuk menampilkan hasil solusi berdasarkan tipe kerusakan yang dipilih
            $data['kerusakan'] = $this->input->post('tipe_kerusakan');
            $this->load->view('user/masalah', $data);
        }
    }

    //menampilkan solusi dari masalah yang sudah dipilih admin
    public function carisolusi()
    {
        //check dulu sessionnya
        if ($this->logins->loggedin() == FALSE) {
            redirect('login');
        }
        else
        {
            //kelompokkan hasil kd_masalah untuk dijadikan keyword query
            $id = '"' . implode('","', $this->input->post('id')) . '"';

            if($this->input->post('kerusakan') == 'hardware')
            {
                //query untuk menampilkan masalah dan solusi dari tabel db_hardware berdasarkan kode masalah yang dipilih
                $query = $this->db->query("SELECT masalah, solusi FROM db_".$this->input->post('kerusakan')." WHERE kd_masalah IN($id)");
            }
            else if($this->input->post('kerusakan') == 'software')
            {
                //query untuk menampilkan masalah dan solusi dari tabel db_software berdasarkan kode masalah yang dipilih
                 $query = $this->db->query("SELECT masalah, solusi FROM db_".$this->input->post('kerusakan')." WHERE kd_masalah IN($id)");
            }
            else
            {
                echo 'Tipe kerusakan tidak ada!';
            }

            $data['hasil'] = $query->result();

            //tampilkan hasil dihalaman solusi
            $this->load->view('user/solusi', $data);
        }
    }

}

?>

