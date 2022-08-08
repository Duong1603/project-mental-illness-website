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
                            <!--  -->
                            <div class="card-body">
								<h4 class="card-title">Forgot Password</h4>
								<form method="POST" class="my-login-validation" novalidate="" action="/forgot">
									@csrf
									@if (session('status'))
										<div class="alert alert-ssuccess">
											{{ session('status') }}
										</div>
									@endif
									<div class="form-group">
										<label for="email">E-Mail Address</label>
										<input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Enter your email">
										<span class="text-danger">@error('email'){{ $message }} @enderror</span>
									</div>
	
									<div class="form-group m-0">
										<button type="submit" class="btn btn-primary btn-block">
											Send Password Link
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