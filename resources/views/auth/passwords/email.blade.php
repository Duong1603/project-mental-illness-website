@extends('layouts.app')

@section('content')
<div class="container-login">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card-login">
                <div class="card-header-send-password">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input placeholder="Email Address........" id="email" type="email" class="form-control-login @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-0 send-password">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary login_submit_btn_send-password">
                                    {{ __('Send Password Reset Link') }}
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
