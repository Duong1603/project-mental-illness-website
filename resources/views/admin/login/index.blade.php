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
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth">
                <div class="row flex-grow">
                    <div class="col-lg-4 mx-auto">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        @if (Session::has('message'))
                        <div class="alert alert-danger">
                            {{Session::get('message')}}
                        </div>
                        @endif
                        <div class="auth-form-light text-left p-5">
                            <div class="brand-logo" style="display: flex;justify-content: start;align-items: flex-end;text-align: end;">
                            <img style="width:100px;height:auto;z-index:1;" src="/../../assets/images/logoPhiPhi.png"><span class="contentt" style="font-size: 50px;">&nbsp;Phi Phi</span>
                            </div>
                            <h4>Hello! let's get started</h4>
                            <h6 class="font-weight-light">Sign in to continue.</h6>
                            <!--  -->
                            <form class="pt-3" action="login" method="post">
                                @csrf
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control form-control-lg"
                                        id="exampleInputEmail1" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="pw" class="form-control form-control-lg"
                                        id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="mt-3">
                                    <!-- <a type="submit" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" href="/../../index.html">SIGN IN</a> -->
                                    <button type="submit"
                                        class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">SIGN
                                        IN</button>
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <!-- <div class="form-check">
                                        <label class="form-check-label text-muted">
                                            <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                                    </div> -->
                                    <a href="/forgot" class="auth-link text-black">Forgot password?</a>
                                </div>
                                <!-- <div class="text-center mt-4 font-weight-light"> Don't have an account? <a
                                        href="#" class="text-primary">Create</a>
                                </div> -->
                            </form>

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
