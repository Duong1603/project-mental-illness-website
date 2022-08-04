<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    // public $timestamps = false;
    // protected $table= "post_englishes";
    public function comments() {
        return $this->hasMany(Comment::class, 'post_id', 'id');
    }
}
