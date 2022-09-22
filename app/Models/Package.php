<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'image', 'price', 'description', 'comment'];

    public function order()
    {
        return $this->hasOne(Order::class);
    }
    public function getLinkQrCode()
    {
        return config('constants.QR_URL').$this->qr_code;
    }
    public function getImage()
    {
        return config('constants.IMG_URL').$this->image;
    }
}
