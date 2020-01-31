  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
          <li class="nav-item">
              <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
          </li>
          <li class="nav-item d-none d-sm-inline-block">
              <a href="/admin" class="nav-link">Home</a>
          </li>
      </ul>

      <!-- Right Side Of Navbar -->
      <ul class="navbar-nav ml-auto">
          <!-- Authentication Links -->
          {{-- @guest
          <li class="nav-item">
              <router-link to="/Email" class="nav-link">{{ __('Check Email') }}</router-link>
          </li>
          <li class="nav-item">
              <router-link to="/login" class="nav-link">{{ __('Login') }}</router-link>
          </li>
          @if (Route::has('register'))
          <li class="nav-item">
              <router-link to="/register" class="nav-link">{{ __('Register') }}</router-link>
          </li>
          @endif
          @else
          <li class="nav-item dropdown">
              <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false" v-pre>
                  {{ Auth::user()->name }} <span class="caret"></span>
              </a>

              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                  <i class="fas fa-power-off red"></i>
                      {{ __('Logout') }}
                  </a>

                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      @csrf
                  </form>
              </div>
          </li>
          @endguest --}}
      </ul>
  </nav>
  <!-- /.navbar -->
