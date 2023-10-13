<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Discount;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with(['user', 'category', 'discount'])->where('deleted', '=', 0)->orderBy('created_at', 'desc')->paginate(10);

        return view('product.index', compact('products'));
    }


    public function create()
    {
        $product = new Product();
        $categories = Category::where('deleted', '=', 0)->orderBy('title', 'asc')->get();
        $discounts = Discount::orderBy('rate', 'asc')->get();
        return view('product.create', compact('product', 'categories', 'discounts'));
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:255',
            'code' => 'required|string|max:255|unique:products',
            'description' => 'required|string',
            'price' => 'required|numeric',
            'discount_id' => 'nullable|exists:discounts,id',
            'category_id' => 'required|exists:categories,id',
            'photo' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // Kiểm tra tệp ảnh
        ]);

        // Xử lý lưu trữ ảnh sản phẩm (nếu có)
        $photoPath = null;
        if ($request->hasFile('photo')) {
            $photoPath = $request->file('photo')->store('product_photos', 'public');
        }
        // Tạo sản phẩm
        $product = new Product();
        $product->title = $request->title;
        $product->code = $request->code;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->discount_id = $request->discount_id;
        $product->category_id = $request->category_id;
        $product->photo = $photoPath; // Lưu đường dẫn ảnh
        $product->user_id = Auth()->user()->id;

        // Lưu sản phẩm
        $product->save();
        return redirect()->route('products.index')->with('success', "Your product has been submitted");
    }

    public function edit(Product $product)
    {
        $categories = Category::where('deleted', '=', 0)->orderBy('title', 'asc')->get();
        $discounts = Discount::orderBy('rate', 'asc')->get();
        return view("product.edit", compact('product', 'categories', 'discounts'));
    }

    public function update(Request $request, Product $product)
    {
        $this->validate($request, [
            'title' => 'required|string|max:255',
            'code' => 'required|string|max:255|unique:products,code,' . $product->id,
            'description' => 'required|string',
            'price' => 'required|numeric',
            'discount_id' => 'nullable|exists:discounts,id',
            'category_id' => 'required|exists:categories,id',
            'photo' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // Kiểm tra tệp ảnh
        ]);

        // Xử lý lưu trữ ảnh sản phẩm (nếu có)

        if ($request->hasFile('photo')) {
            $product->photo = $request->file('photo')->store('product_photos', 'public');
        }

        // Tạo sản phẩm

        $product->title = $request->title;
        $product->code = $request->code;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->discount_id = $request->discount_id;
        $product->category_id = $request->category_id;

        $product->user_id = Auth()->user()->id;

        // Lưu sản phẩm
        $product->save();
        return redirect()->route('products.index')->with('success', "Your product has been submitted");
    }

    public function destroy(Product $product)
    {
        $product->comments()->delete();
        $product->likes()->delete();
        $product->deleted = 1;
        $product->save();
        return redirect()->route('products.index')->with('success', "Your product has been deleted");
    }
}
