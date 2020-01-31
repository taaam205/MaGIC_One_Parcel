<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    @include('includes.master.head')
    <script src="{{ asset('js/vendor/jquery.overlayScrollbars.min.js') }}" defer></script>
    <link rel="stylesheet" href="{{ asset("css/Admin/dashboard.css") }}">
    <link rel="stylesheet" href="{{ asset("css/Admin/dataTables.bootstrap4.css") }}">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div id="app" class="wrapper">
        <header>
            @include('includes.admin.navbar')
        </header>

        {{-- Sidebar --}}
        @include('includes.admin.sidebar')

        @yield('admin-dashboard')
        
    </div>
</body>
</html>
