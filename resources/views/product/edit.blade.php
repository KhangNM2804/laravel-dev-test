@extends('layout.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <h2>Edit Product</h2>
                            <div class="ms-auto">
                                <a href="{{ route('products.index') }}" class="btn btn-outline-secondary">Back to all
                                    Product</a>
                            </div>
                        </div>

                    </div>

                    <div class="card-body">
                        <form action="{{ route('products.update', $product->id) }}" method="post"
                            enctype="multipart/form-data">
                            {{ method_field('PUT') }}
                            @include ('product._form', ['buttonText' => 'Update Product'])
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
