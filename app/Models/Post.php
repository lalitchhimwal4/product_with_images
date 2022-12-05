<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $table = 'posts';

    protected $fillable = [
        'product_name',
        'product_price',
        'product_description'
    ];

    public function images(){
        return $this->hasMany('App\Models\Image', 'product_id');
    }

    use HasFactory;
}
