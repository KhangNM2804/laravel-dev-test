<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::where('deleted', '=', 0)->paginate(10);

        return view('category.index', compact('categories'));
    }


    public function create()
    {
        $category = new Category();

        return view('category.create', compact('category'));
    }


    public function store(StoreCategoryRequest $request)
    {
        Category::create($request->validated());
        return redirect()->route('category.index')->with('success', "Your category has been submitted");
    }

    public function edit(Category $category)
    {
        return view("category.edit", compact('category'));
    }

    public function update(StoreCategoryRequest $request, Category $category)
    {

        $category->update($request->only('title', 'description'));

        return redirect('/category')->with('success', "Your category has been updated.");
    }

    public function destroy(Category $category)
    {
        $category->update(['deleted' => 1]);
        $category->products()->update(['deleted' => 1]);
        return redirect('/category')->with('success', "Your category has been deleted");
    }
}
