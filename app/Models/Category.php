<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['title', 'code', 'description', 'deleted'];
    use HasFactory;
    public function products()
    {
        return $this->hasMany(Product::class);
    }
    public function getCreatedDateAttribute()
    {
        return $this->created_at->diffForHumans();
    }
}
