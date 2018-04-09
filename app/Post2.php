<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post2 extends Model
{
    // Table Name
    protected $table = 'posts2';
    // Primary Key
    public $primaryKey = 'id';
    // Timestamps
    public $timestamps = true;

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function categories(){
        return $this->belongsToMany('App\Category')->using('App\PostCategory');
    }

    public function reaction(){
        return $this->hasMany('App\Reaction');
    }
}
