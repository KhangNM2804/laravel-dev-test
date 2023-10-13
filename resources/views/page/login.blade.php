@extends('layout.app')
@section('content')
    <main class="auth-wrapper">
        <form action="{{ route('login') }}" class="auth-form" method="POST">
            @csrf
            <h1>
                <span>ToeDoe</span>
                <strong>List</strong>
            </h1>
            <h2 class="h3 mb-4 fw-normal">Please sign in</h2>
            <div class="form-floating mb-2">
                <input name='email' type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}"
                    id="email" placeholder="name@example.com" />
                <label for="email">Email</label>
                @if ($errors->has('email'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
            <div class="form-floating mb-3">
                <input name="password" type="password"
                    class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="password"
                    placeholder="Password" />
                <label for="password">Password</label>
                @if ($errors->has('password'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
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
