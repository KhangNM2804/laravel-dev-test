<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
    <div class="container py-2">
        <a class="navbar-brand">
            <span>Toedoe</span>
            <strong>List</strong>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav" v-if="store.isLoggedIn">
                <li class="nav-item">
                    <a class="nav-link">Tasks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Summary</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="btn btn-outline-secondary ms-2">Login</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-danger ms-2">Register</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">

                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li>
                            <a class="dropdown-item">Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
