<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Like;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use League\Flysystem\Adapter\Local;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'content' => 'required',
            'product_id' => 'required|exists:products,id',
        ]);
        $product = Product::find($request->product_id);
        if (!isset($product) || $product->deleted) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy sản phẩm này',
                'data' => []
            ];
            return response()->json($result);
        }
        $comment = new Comment();
        $comment->content = $request->content;
        $comment->product_id = $request->product_id;
        $comment->user_id = Auth::user()->id;
        if (isset($request->parent_id)) {
            $item = Comment::find($request->parent_id);
            if (!isset($item)) {
                $result = [
                    'code' => 200,
                    'msg' => 'Không tìm thấy comment để trả lời',
                    'data' => []
                ];
                return response()->json($result);
            }
            if (isset($item->parent_id)) {
                $result = [
                    'code' => 200,
                    'msg' => 'Không được trả lời comment con',
                    'data' => []
                ];
                return response()->json($result);
            }
            $comment->parent_id = $request->parent_id;
            $comment->product_id = $item->product_id;
        }
        $comment->save();
        $product->comment = $product->comment + 1;
        $product->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $comment
        ];
        return response()->json($result);
    }

    public function show($id)
    {
        $comment = Comment::with(['product', 'children',])->find($id);
        if (!isset($comment)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy comment',
                'data' => $comment
            ];
            return response()->json($result);
        }
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $comment
        ];
        return response()->json($result);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'content' => 'required',
        ]);
        $comment = Comment::find($id);
        if (!isset($comment)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy bình luận',
                'data' => []
            ];
            return response()->json($result);
        }
        if ($comment->user_id != Auth::user()->id) {
            $result = [
                'code' => 200,
                'msg' => 'Bạn không phải người tạo comment này',
                'data' => []
            ];
            return response()->json($result);
        }
        $comment->content = $request->content;
        $comment->save();
        $result = [
            'code' => 200,
            'msg' => 'Thành công',
            'data' => $comment
        ];
        return response()->json($result);
    }


    public function destroy($id)
    {
        $comment = Comment::find($id);
        if (!isset($comment)) {
            $result = [
                'code' => 200,
                'msg' => 'Không tìm thấy bình luận để xóa',
                'data' => []
            ];
            return response()->json($result);
        }
        if ($comment->user_id == Auth::user()->id) {
            $comment->children()->delete();
            $comment->delete();
            $product = Product::findOrFail($comment->product_id);
            $count = Comment::select('*')->where('product_id', '=', $product->id)->count();
            $product->comment = $count;
            $product->save();
            $result = [
                'code' => 200,
                'msg' => 'Thành công',
                'data' => []
            ];
            return response()->json($result);
        } else {
            $result = [
                'code' => 200,
                'msg' => 'Bạn không có quyền xóa bình luận này',
                'data' => []
            ];
            return response()->json($result);
        }
    }
}
