<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    //
        protected $table = 'message';

        protected $fillable = [
        'id', 'profile_id', 'message','sender','contact'
    ];
}
