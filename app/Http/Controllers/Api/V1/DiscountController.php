<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Discount;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DiscountController extends Controller
{
    public function index()
    {
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => Discount::with(['products'])->get()
        ];
        return response()->json($result);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'rate' => 'required|min:0|max:100|unique:discounts',
        ]);
        $discount = new Discount();
        $discount->rate = $request->rate;
        $discount->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $discount
        ];
        return response()->json($result);
    }

    public function show($id)
    {
        $discount = Discount::with(['products'])->find($id);
        if (!isset($discount)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy giảm giá',
                'data' => $discount
            ];
            return response()->json($result);
        }
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $discount
        ];
        return response()->json($result);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'rate' => 'required|min:0|max:100|unique:discounts,rate,' . $id . ',id',
        ]);
        $discount = Discount::find($id);
        if (!isset($discount)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy giảm giá',
                'data' => []
            ];
            return response()->json($result);
        }
        $discount->rate = $request->rate;
        $discount->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $discount
        ];
        return response()->json($result);
    }


    public function destroy($id)
    {
        $discount = Discount::find($id);
        if (!isset($discount)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy giảm giá',
                'data' => []
            ];
            return response()->json($result);
        }
        $products = Product::select('*')->where('discount_id', '=', $id)->get();
        foreach ($products as $product) {
            $product->discount_id = null;
            $product->save();
        }
        $discount->delete();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => []
        ];
        return response()->json($result);
    }
}
