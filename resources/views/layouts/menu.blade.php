<nav class="navbar navbar-expand-lg navbar-light bg-custom mb-4">
    <div class="container">
        <b><a class="navbar-brand" href="/">BUBUR AYAM SUKABUMI</a></b>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="mr-auto navbar-nav"></ul>
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="/">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="produk">Produk</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="kategori">Kategori</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ URL::to('kontak') }}">Kontak</a>
              </li>
              <li class="nav-item mt-2 ml-3">
                @if (Auth::guest())
                    <a href="{{ route('login') }}" class="mr-3 text-light">Login</a>
                    <a href="{{ route('register') }}" class="text-light">Register</a>
                @else
                
                  <div class="logout">
                    <b class="col-md-2">
                      {{ Auth::user()->name }}
                    </b>
                    <a href="{{ url('/logout') }}" class="logout">Logout</a>
                  </div>    
                    
                @endif
              </li>
            </ul>
        </div>
    </div>
</nav>