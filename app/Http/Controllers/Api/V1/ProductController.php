<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Like;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class ProductController extends Controller
{
    public function index()
    {
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => Product::where('deleted', '=', 'false')->with(['discount', 'category', 'comments' => function ($query) {
                $query->where('parent_id', null)->with('children');
            }])->get()
        ];
        return response()->json($result);
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
        $product->user_id = Auth::user()->id;
        // Lưu sản phẩm
        $product->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $product
        ];
        return response()->json($result);
    }

    public function show($id)
    {
        $product = Product::where('deleted', '=', 0)->with(['discount', 'comments' => function ($query) {
            $query->where('parent_id', null)->with('children');
        }])->find($id);
        if (!isset($product)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy sản phẩm',
                'data' => $product
            ];
            return response()->json($result);
        }
        $product->view =  $product->view + 1;
        $product->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $product
        ];
        return response()->json($result);
    }

    public function findByCategoryId($category_id = null)
    {
        if ($category_id === null) {
            $result = [
                'code' => 200,
                'msg' => 'Thành công',
                'data' => Product::where('deleted', '=', 0)->with(['discount', 'category', 'comments' => function ($query) {
                    $query->where('parent_id', null)->with('children');
                }])->paginate(10)
            ];
            return response()->json($result);
        } else {
            $result = [
                'code' => 200,
                'msg' => 'Thành công',
                'data' => Product::where('deleted', '=', 0)->where('category_id', '=', $category_id)->with(['discount', 'category', 'comments' => function ($query) {
                    $query->where('parent_id', null)->with('children');
                }])->paginate(10)
            ];
            return response()->json($result);
        }
    }

    public function likeAndUnlikeProduct(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
        ]);
        try {
            $product = Product::find($request->product_id);
            if (isset($product)) {
                if ($product->deleted) {
                    $result = [
                        'code' => 200,
                        'msg' => 'Sản phẩm này đã ngừng kinh doanh',
                        'data' => []
                    ];
                    return response()->json($result);
                }
                $like = Like::where('product_id', '=', $product->id)->where('user_id', '=', Auth::user()->id)->first();
                if (isset($like)) { // nếu có like sp này rồi thì thực hiện unlike
                    $like->delete();
                    $product->like =  $product->like - 1;
                    $product->save();
                    $result = [
                        'code' => 200,
                        'msg' => 'Bỏ like thành công',
                        'data' => []
                    ];
                    return response()->json($result);
                } else {
                    $item = new Like();
                    $item->user_id = Auth::user()->id;
                    $item->product_id = $product->id;
                    $item->save();
                    $product->like =  $product->like + 1;
                    $product->save();
                    $result = [
                        'code' => 200,
                        'msg' => 'Like thành công',
                        'data' => []
                    ];
                    return response()->json($result);
                }
            } else {
                $result = [
                    'code' => 200,
                    'msg' => 'Không tìm thấy sản phẩm',
                    'data' => []
                ];
                return response()->json($result);
            }
        } catch (\Exception $error) {
            return response()->json($error);
        }
    }
}
