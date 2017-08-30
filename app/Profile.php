<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    //
        // protected $table = 'profiles';
        protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
