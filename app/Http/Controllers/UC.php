<?php

namespace App\Http\Controllers;
use DB;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Profile;
use App\Http\Controllers;
use App\Message;
class UC extends Controller
{
    public function home()
    {
    	
        $users = DB::table('profiles')->paginate(3);
        
      //  $users = DB::table('profiles');
                                
        // DB::table('profiles')->chunk(3, function($users));
    	return view('pages.home', compact('users'));
    }
    public function individual($id)
    {

        return view('pages.individual')->with('user_ind', Profile::find($id));

        //return view('pages.individual', $id);
    }

    public function message($id)
    {
        

        
        return view('pages.message')->with('user_mess', Profile::find($id));



    }
     public function messagesave($id,Request $req)
    {
        
        $s = new Message();
        $s->id=$req['id'];

        $s->message=$req['message'];
        $s->sender=$req['sender'];
        $s->contact=$req['contact'];
        //$stu->head=$s->head;
        //$stu->body=$s->body;
        //$stu->save(); 
        $s->save();


        return back();


    }
    
    /*public function viewmessage($id)
    {
         /*$accout = DB::table('users')->find($id);
         //$user=Profile::find($accout->profile_id);
         //$messages=Message::find($accout->message_id);
         $messages = DB::table('message')->find($accout->message_id);
        return view('pages.viewmessage',compact('messages'));
        

        
        $user_mess = DB::table('message')
                            ->join('users', 'message.id'='message_id')
                            ->select('message.*','users.message_id')
                            ->where('message_id','=',$id)
                            ->get();


          return view('pages.message',compact('user_mess'));


    }
    */

    public function setting($id)
    {
        //$accout = Accout::find($id);
        $accout = DB::table('users')->find($id);
        $ids = $accout->id;
        $user=Profile::find($accout->profile_id);
    
        return view('pages.setting',compact('user', 'ids'));
        //$profile = App\Profile::find($accout->profile_id);
      //  return view('pages.setting',compact('user'))->with('user', Profile::find($accout->profile_id) );
    }
    public function settingupdate($id,Request $request)
    {
        $accout = DB::table('users')->find($id);
        $user =  new Profile;
        $data = array('Address'=>$request->input('Address'),
                        'Contact'=>$request->input('Contact'),
                        'Graduation_Date'=>$request->input('Graduation_Date'),
                        'Comments'=>$request->input('Comments'),
                        'Email'=>$request->input('Email'));

        $user->where('id',$accout->profile_id)->update($data);

        return Redirect('/');
       }
       
}

