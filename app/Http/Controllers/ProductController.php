<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::where('deleted', '=', 0)->paginate(10);

        return view('product.index', compact('products'));
    }


    public function create()
    {
        $product = new Product();

        return view('product.create', compact('product'));
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
