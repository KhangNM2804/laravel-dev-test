@extends('layout.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-ms-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <h2>All Category</h2>
                            <div class="ms-auto">
                                <a href="{{ route('category.create') }}" class="btn btn-outline-secondary">Add Category</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        @include ('layout._messages')

                        @forelse ($categories as $category)
                            @include ('category._excerpt')
                        @empty
                            <div class="alert alert-warning">
                                <strong>Sorry</strong> There are no category.
                            </div>
                        @endforelse
                    </div>
                    <div class="card-footer">
                        {{ $categories->links('vendor.pagination.bootstrap-5') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
