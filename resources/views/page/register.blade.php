@extends('layout.app')
@section('content')
    <main class="auth-wrapper">
        <form class="auth-form" @submit.prevent="handleSubmit">
            <h1>
                <span>ToeDoe</span>
                <strong>List</strong>
            </h1>
            <h2 class="h3 mb-4 fw-normal">Please sign up</h2>
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="name" placeholder="Your name" />
                <label for="name">Name</label>
                <div class="invalid-feedback">
                </div>
            </div>
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
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="password_confirmation"
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
