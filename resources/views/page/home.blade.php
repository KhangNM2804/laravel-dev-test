@extends('layout.app')
@section('content')
    @guest
        <main class="px-4 py-5 my-5 text-center" style="min-height: 50vh;">
            <h1 class="display-5 fw-bold mt-4">Stay Organized, be productive</h1>
            <div class="col-lg-6 mx-auto">
                <p class="lead mb-4">Organize your ideas, and be productive everyday.</p>
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <a href="{{ route('get.register') }}" class="btn btn-primary btn-lg px-4 gap-3">Sign up</a>
                    <a href="{{ route('get.login') }}" class="btn btn-outline-secondary btn-lg px-4">Sign in</a>
                </div>
            </div>
        </main>
    @else
        <main class="px-4 py-5 my-5 text-center" style="min-height: 50vh;">
            <h1 class="display-5 fw-bold mt-4">Successful login</h1>
            <div class="col-lg-6 mx-auto">
                <p class="lead mb-4">Organize your ideas, and be productive everyday.</p>
            </div>
        </main>
    @endguest
@endsection
