<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    @include('includes.master.head')
</head>
<body>
    <div id="app">
        <header>
            @include('includes.master.navbar')
        </header>

        <main class="py-4">
        {{-- <p>{{ Auth::user()->role() }}</p> --}}
            {{-- @role('admin')
                @yield('admin-dashboard')
            @endrole
            @role('writer')
                @yield('user-dashboard')
            @endrole --}}

                @yield('admin-dashboard')

                @yield('user-dashboard')

            <router-view></router-view>
        </main>
        
    </div>
</body>
</html>
