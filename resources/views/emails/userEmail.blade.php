@extends('emails.master')
@section('content')
    <div class="container user__email">
        <h3>Dear Mr/ms {{ $data['customer'] }} </h3>
        <div class=" useremail">
            <p> {{ $data['content'] }} </p>
        </div>
    </div>
    @include('emails.footer')
@endsection
@section('custom_css')
    <style>
        .user__email {
            margin-top: 10%;
            width: 40%;
        }

        .useremail {
            margin: auto;
            text-align: center;
            text-align: justify;
        }
    </style>
@endsection
