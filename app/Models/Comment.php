<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $fillable = ['post_id', 'user_id', 'content']; 

    public function postEnglish() {
        return $this->belongsTo(PostEnglish::class, 'post_id', 'id'); 
    }
}
