@extends('emails.master')
@section('content')
    <div class="container">
        <h4 class="title_confirm-book">Dear Mr, {{ $data['customer'] }} </h4>
        <div class="content">
            <p>We are going meeting with the doctor at:
                {{ $data['start'] ? date_format(date_create($data['start']), 'g:ia \o\n l jS F Y') : '' }}</p>
            <p><strong> Link : <a href="{{ $data['link'] ? $data['link'] : env('FRONT_END') }}">google meet</a></strong>
            </p>
        </div>
        <br>
    </div>
    @include('emails.footer')
@endsection
@section('custom_css')
    <style>
        .container {
            margin-top: 20%;
        }

        .content {
            margin: auto;
            text-align: center;

            text-align: center
        }

        .title_confirm-book {
            color: #09474B;

        }

        .have__a-nice {
            float: left;
        }
    </style>
@endsection
