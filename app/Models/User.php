<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class User extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'phone',
    ];
    public function order()
    {
        return $this->hasOne(Order::class);
    }
    public function contact()
    {
        return $this->hasOne(Contact::class);
    }
    public function scopeNewest($query)
    {
        return $query->orderBy('created_at','DESC');
    }
}
