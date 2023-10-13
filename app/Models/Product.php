<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'code',
        'price',
        'photo',
        'description',
        'discount_id',
        'category_id',
        'user_id',
        'view',
        'like',
        'comment'
    ];
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function likes()
    {
        return $this->hasMany(Like::class);
    }
    public function discount()
    {
        return $this->belongsTo(Discount::class);
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function getAmountAttribute()
    {
        return $this->price * $this->discount->rate / 100;
    }
}
