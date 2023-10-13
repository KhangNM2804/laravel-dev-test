@extends('layout.app')
@section('content')
    <main class="auth-wrapper">
        <form action="{{ route('register') }}" class="auth-form" method="POST">
            @csrf
            <h1>
                <span>Laravel</span>
                <strong>Dev-Test</strong>
            </h1>
            <h2 class="h3 mb-4 fw-normal">Please sign up</h2>
            @if (Session::has('success'))
                <div class="alert alert-success">
                    {{ Session::get('success') }}
                </div>
            @endif
            <div class="form-floating mb-2">
                <input name="name" type="text" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}"
                    id="name" placeholder="Your name" />
                <label for="name">Name</label>
                @if ($errors->has('name'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('name') }}</strong>
                    </span>
                @endif
            </div>
            <div class="form-floating mb-2">
                <input name="email" type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}"
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
            <div class="form-floating mb-3">
                <input name="password_confirmation" type="password" class="form-control" id="password_confirmation"
                    placeholder="Password Confirmation" />
                <label for="password_confirmation">Password Confirmation</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">
                Sign up
            </button>
        </form>
    </main>
    <style scoped>
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
