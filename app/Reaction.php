<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reaction extends Model
{
    // Table Name
    protected $table = 'reactions';
    // Primary Key
    public $primaryKey = 'id';

    /**
     * Get the post that owns te reaction.
     */
    public function post()
    {
        return $this->belongsTo('App\Post2');
    }
}