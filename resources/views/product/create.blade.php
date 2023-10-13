@extends('layout.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <h2>Create Product</h2>
                            <div class="ml-auto">
                                <a href="{{ route('products.index') }}" class="btn btn-outline-secondary">Back to all
                                    Product</a>
                            </div>
                        </div>

                    </div>

                    <div class="card-body">
                        <form action="{{ route('products.store') }}" method="post" enctype="multipart/form-data">
                            @include ('product._form', ['buttonText' => 'Add product'])
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
