<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">
        <span class="text-primary">{{ $brand_title->value ?? 'Parampara-Landmarks' }}</span>
        @if ($status)
            <span class="text-success">| {{ $user['name'] }}</span>
        @else
            <span class="text-info">| Guest</span>
        @endif
    </a>
    <div class="w-100"></div>
    <ul class="navbar-nav">
        @auth
            @foreach (auth()->user()->unreadNotifications ?? [] as $notification)
                <li class="nav-item">
                    <a class="nav-link text-light" href="{{ $notification->data['link'] }}">{{ $notification->data['message'] }}</a>
                </li>
            @endforeach
        @endauth
    </ul>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
        data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-nav">
        @if ($status)
            <div class="nav-item text-nowrap btn btn-primary">
                <a class="nav-link px-3" href="{{ url(route('AdminLogout')) }}">Log out</a>
            </div>
        @else
            <div class="nav-item text-nowrap btn btn-info">
                <a class="nav-link px-3" href="{{ url(route('AdminLoginPage')) }}">Log in</a>
            </div>
        @endif
    </div>
</header>
