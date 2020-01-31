<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="{{ asset("images/crop.png") }}"
           alt="Company Logo"
           class="brand-image"
           style="margin-left: 0.2rem;"/>
        <span class="brand-text font-weight-light">{{ config('app.name') }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src={{ asset("images/profile.png") }} class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <router-link to="/admin" class="d-block">{{ Auth::user()->name }}</router-link>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <router-link to="/admin" class="nav-link">
                        <i class="nav-icon fas fa-border-all orange"></i>
                        <p>
                            Dashboard
                        </p>
                    </router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/admin/email" class="nav-link">
                        <i class="nav-icon fas fa-paper-plane light_pink"></i>
                        <p>
                            Send Email
                        </p>
                    </router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/admin/users" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Users
                        </p>
                    </router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/admin/roles" class="nav-link">
                        <i class="nav-icon fas fa-user-tag green"></i>
                        <p>
                            Roles
                        </p>
                    </router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/admin/staffs" class="nav-link">
                        <i class="nav-icon fas fa-user-tie yellow"></i>
                        <p>
                            Staffs
                        </p>
                    </router-link>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
                        <i class="nav-icon fas fa-power-off red"></i>
                        <p> Logout </p>
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
