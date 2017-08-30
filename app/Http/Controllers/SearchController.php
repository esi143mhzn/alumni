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
        $users=Profile::where('Name','like',"$search%")
        ->get();

    	return view('pages.search',compact('users'));
    }
     public function searchdate(Request $request)
    {
    	$search=$request->get('datesearch');
        $users=Profile::where('Graduation_Date','like',"$search%")
        ->get();

    	return view('pages.date',compact('users','search'));
    }
    public function searchpro(Request $request)
    {
    	$search=$request->get('profsearch');
        $users=Profile::where('Profession','like',"$search%")
        ->get();

    	return view('pages.profess',compact('users'));
    }
}
