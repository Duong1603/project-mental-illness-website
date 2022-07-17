@extends('layouts.app')

@section('content')
<div class="container-login">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card-login">
                <div class="card-header-login">{{ __('RESET PASSWORD') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.update') }}">
                        @csrf

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input id="email" placeholder="Email Address........" type="email" class="form-control-login form-control-login-1 @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 form-control-login-2">
                                <input id="password" placeholder="Password........" type="password" class="form-control-login @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 form-control-login-3">
                                <input id="password-confirm" placeholder="Confirm Password........" type="password" class="form-control-login" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="row mb-0 login_submit">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary login_submit_btn">
                                    {{ __('Reset Password') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
