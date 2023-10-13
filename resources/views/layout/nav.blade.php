<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
    <div class="container py-2">
        <a class="navbar-brand">
            <span>Laravel</span>
            <strong>Dev-Test</strong>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav" v-if="store.isLoggedIn">
                <li class="nav-item">
                    <a href="{{ route('category.index') }}" class="nav-link">Category</a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('products.index') }}" class="nav-link">Product</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                @guest
                    <li class="nav-item">
                        <a href="{{ route('get.login') }}" class="btn btn-outline-secondary ms-2">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('get.register') }}" class="btn btn-danger ms-2">Register</a>
                    </li>
                @else
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            {{ Auth::user()->name }}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                              document.getElementById('logout-form').submit();"
                                    class="dropdown-item">Logout</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </li>
                        </ul>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
