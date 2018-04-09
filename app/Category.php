<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    // Table Name
    protected $table = 'categories2';
    // Primary Key
    public $primaryKey = 'id';

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * The categories that belong to the posts.
     */
    public function post()
    {
        return $this->belongsToMany('App\Post2')->using('App\PostCategory');
    }
}