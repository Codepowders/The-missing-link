<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use app\User;

class FetchController extends Controller
{
    //
    public function index() {
      // $users = User::whereNotNull('zipcode')->get();
      $user = User::select("forename", "name", "streetnumber", "street", "zipcode", "boodschappen", "telephone")->where('boodschappen', 1)->get();
      $data = [
        'user' => $user
      ];

      return view('fetch.index',$data);
    }
}
