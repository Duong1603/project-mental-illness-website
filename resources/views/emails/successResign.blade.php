@extends('emails.master')
@section('content')
    <div class="container resign">
        <h3 class="title_confirm-book">Dear Mr/Ms {{ isset($data['customer']) ? $data['customer'] : 'unknown' }}
        </h3>
        <div class="content_resign ">
            <p>This is a system email</p>
            <p>We record your chose</p>
            <p>Information about the meeting</p>
            @isset($data['times'])
                Time you chose:
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Start meeting</th>
                            <th scope="col">End meeting</th>
                            <th scope="col">Package</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['times'] as $item)
                            <tr>
                                <th scope="row">{{ $loop->index + 1 }}</th>
                                <td>{{ $item->start_meeting }}</td>
                                <td>{{ $item->end_meeting }}</td>
                                <td>{{ $data['package'] }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endisset
            <p>Total price: {{ $data['price'] }} vnD</p>
            @if ($data['price'] != 0)
                <p>Please scan this qr code to pay for package:</p>
                <img src="{{ env('APP_URL') . '/img/qr-code/' . $data['qrCode'] }}" />
            @endif
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
