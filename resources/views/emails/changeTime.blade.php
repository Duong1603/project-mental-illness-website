@extends('emails.master')
@section('content')
    <div class="container resign">
        <h3 class="title_confirm-book">Dear Mr/Ms {{ isset($data['customer']) ? $data['customer'] : 'unknown' }}
        </h3>
        <div class="content_resign ">
            <p>This is a system email</p>
            <p>Information about the meeting</p>
            <p>We changed the time for the meeting To
                {{ isset($data) ? $data['start'] : '' }}
            </p>
            <p>Link <a href="{{ isset($data) ? $data['link'] : '' }}">google meeting</a></p>
            <div class="card-footer text-info content">Buil website by student at PNV </div>
        </div>
        @include('emails.footer')
    </div>
@endsection
@section('custom_css')
    <style>
        .content_resign ul {
            list-style: none;
        }

        .title_confirm-book {
            color: #09474B;
        }
    </style>
@endsection
