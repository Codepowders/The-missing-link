<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    // Table Name
    protected $table = 'categories';

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * The categories that belong to the posts.
     */
    public function posts()
    {
        return $this->belongsToMany('App\Post')->using('App\PostCategory');
    }
}