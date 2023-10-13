@extends('layout.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <h2>Add Category</h2>
                            <div class="ms-auto">
                                <a href="{{ route('category.index') }}" class="btn btn-outline-secondary">Back to all
                                    Category</a>
                            </div>
                        </div>

                    </div>

                    <div class="card-body">
                        <form action="{{ route('category.store') }}" method="post">
                            @include ('category._form', ['buttonText' => 'Add Category'])
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
