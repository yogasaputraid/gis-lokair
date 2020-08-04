<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('AirModel');
        $this->load->model('KecamatanModel');
    }

    public function index()
    {
        if ($this->session->userdata('email')) {
            if ($this->session->userdata('role_id') == 1) {
                redirect('admin');
            } else {
                redirect('user');
            }
        }

        $datacontent['url'] = 'home';
        $datacontent['title'] = '';
        $data['content'] = $this->load->view('homeView', $datacontent, TRUE);
        $data['js'] = $this->load->view('peta/js/mapHomeJs', $datacontent, TRUE);
        $data['title'] = 'GIS &ndash; LOKAIR | PDAM Tirta Patriot Kota Bekasi';
        $this->load->view('layouts/website/html', $data);
    }
}
