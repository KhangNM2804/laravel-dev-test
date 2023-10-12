@extends('layout.app')
@section('content')
    <main class="auth-wrapper">
        <form class="auth-form">
            <h1>
                <span>ToeDoe</span>
                <strong>List</strong>
            </h1>
            <h2 class="h3 mb-4 fw-normal">Please sign in</h2>
            <div class="form-floating mb-2">
                <input type="email" class="form-control" id="email" placeholder="name@example.com" />
                <label for="email">Email</label>
                <div class="invalid-feedback">
                </div>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="password" placeholder="Password" />
                <label for="password">Password</label>
                <div class="invalid-feedback">
                </div>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">
                Sign in
            </button>
        </form>
    </main>
    <style>
        .auth-wrapper {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            min-height: 60vh;
            margin-top: 2rem;
        }

        .auth-form {
            width: 400px;
        }
    </style>
@endsection
