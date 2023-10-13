@extends('layout.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <h2>All Product</h2>
                            <div class="ms-auto">
                                <a href="{{ route('products.create') }}" class="btn btn-outline-secondary">Add product</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        @include ('layout._messages')
                        @forelse ($products as $product)
                            @include ('product._excerpt')
                        @empty
                            <div class="alert alert-warning">
                                <strong>Sorry</strong> There are no product available.
                            </div>
                        @endforelse
                        {{ $products->links('vendor.pagination.bootstrap-5') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
