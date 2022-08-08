{{-- <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Reset Password</title>
	<link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/my-login.css') }}">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center align-items-center h-100">
				<div class="card-wrapper">
					<div class="cardx fat">
						<div class="card-body">
							<h4 class="card-title">Reset Password</h4>
							<form method="POST" class="my-login-validation" novalidate="" action="{{ route('update-password') }}">
                                @csrf
								<div class="form-group">
									<label for="password">New Password</label>
									<input id="password" type="password" class="form-control" name="password" placeholder="Enter new password">
                                    <span class="text-danger">@error('password'){{$message}}@enderror</span>
								</div>
								<div class="form-group">
									<label for="password-confirm">Confirm Password</label>
									<input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Enter confirm password">
                                    <span class="text-danger">@error('password_confirmation'){{$message}} @enderror</span>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Reset Password
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2021 &mdash; Your Company
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/popper.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script src="js/my-login.js"></script>
</body>
</html> --}}

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Psychothetary</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/../../assets/vendors/css/vendor.bundle.base.css">
    
    <link rel="stylesheet" href="/../../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/../../assets/images/favicon.ico" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth">
                <div class="row flex-grow">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left p-5">
                            <div class="brand-logo">
                                <img src="/../../assets/images/logo.svg">
                            </div>
                            <div class="card-body">
								<h4 class="card-title">Reset Password</h4>
								<form method="POST" class="my-login-validation" novalidate="" action="{{ route('update-password') }}">
									@csrf
									<div class="form-group">
										<input id="email" type="hidden" class="form-control" name="email" placeholder="Email address" value="{{ $account}}" />
										<span class="text-danger">@error('email'){{$message}} @enderror</span>
									</div>
									<div class="form-group">
										<label for="password">New Password</label>
										<input id="password" type="password" class="form-control" name="password" placeholder="Enter new password">
										<span class="text-danger">@error('password'){{$message}}@enderror</span>
									</div>
									<div class="form-group">
										<label for="password-confirm">Confirm Password</label>
										<input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Enter confirm password">
										<span class="text-danger">@error('password_confirmation'){{$message}} @enderror</span>
									</div>
	
									<div class="form-group m-0">
										<button type="submit" class="btn btn-primary btn-block">
											Reset Password
										</button>
									</div>
								</form>
							</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="/../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/../../assets/js/off-canvas.js"></script>
    <script src="/../../assets/js/hoverable-collapse.js"></script>
    <script src="/../../assets/js/misc.js"></script>
    <!-- endinject -->
    @include('admin.login.script')
</body>

</html>