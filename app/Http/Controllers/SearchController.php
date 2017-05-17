<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Profile;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class SearchController extends Controller
{
    //
    public function searchinput(Request $request)
    {
    	$search=$request->get('search');
        $users=Profile::where('Name','like',"%$search%")
        ->get();

    	return view('pages.search',compact('users'));
    }
}
