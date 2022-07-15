<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Psychotherapy </title>
	<link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
	<script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="../assets/js/material-dashboard.min.js?v=3.0.4"></script>  
	{{-- <link href="{{url('css/user/header.css')}}" title="style" rel="stylesheet" /> --}}
	<link href="{{url('css/admin/material-dashboard.css')}}" title="style" rel="stylesheet" />
	<link href="{{url('css/admin/leftAdmin.css')}}" title="style" rel="stylesheet" />
	{{-- <link href="{{url('css/admin/material-dashboard.min.css')}}" title="style" rel="stylesheet" />
	<link href="{{url('css/admin/nucleo-icons.css')}}" title="style" rel="stylesheet" />
	<link href="{{url('css/admin/nucleo-svg.css')}}" title="style" rel="stylesheet" /> --}}

	{{-- Script --}}
	<script>scr="{{url('js/core/popper.min.js')}}" </script> 
	<script>scr="{{'js/core/bootstrap.min.js'}}" </script> 
	<script>scr="{{url('js/plugins/perfect-scrollbar.min.js')}}" </script> 
	<script>scr="{{'js/plugins/smooth-scrollbar.min.js'}}" </script> 

</head>
<body>
	{{-- @include ('header') --}}
	<div class="rev-slider">
		@yield('content')
	</div>
	{{-- @include ('footer') --}}
	<!-- include js files -->
	{{-- @include('script') --}}
</body>
</html>