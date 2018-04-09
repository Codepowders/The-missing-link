<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use app\User;

class Fetch4Controller extends Controller
{
    //
    public function index() {
      // $users = User::whereNotNull('zipcode')->get();
      $user = User::select("forename", "name", "streetnumber", "zipcode", "street", "gezelschap", "telephone")->where('gezelschap', 1)->get();
      $data = [
        'user' => $user
      ];

      return view('fetch.index4',$data);
    }
}
