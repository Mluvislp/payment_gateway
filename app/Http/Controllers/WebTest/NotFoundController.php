<?php

namespace App\Http\Controllers\WebTest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NotFoundController extends Controller
{
    public function index(){
        return view('test.notfound');
    }
}
