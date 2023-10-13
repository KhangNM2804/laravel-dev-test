<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::select('id', 'code', 'title')->where('deleted', '=', 0)->orderBy('created_at', 'desc')->paginate(10);
        return CategoryResource::collection($categories);
    }
}
