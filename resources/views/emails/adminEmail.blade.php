@extends('emails.master')
@section('content')
    <div class="container">
        <div>
            <h2> Hey Phi Phi, </h2>
        </div>
        <div>
            <div class="content__toAdmin">
                <p>There is a new message from system, please check <strong><a href="{{ route('bookings.index') }}">admin
                            page</a></strong></p>
            </div>
            <p>Type: {{ $data['type'] }}</p>
            <p>Customer: {{ $data['customer'] }}</p>
            <p>Problem: {{ isset($data['problem']) ? $data['problem'] : '' }}</p>
            @isset($data['times'])
                Time from customer:
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Start meeting</th>
                            <th scope="col">End meeting</th>
                            <th scope="col">Link</th>
                            <th scope="col">package</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['times'] as $item)
                            <tr>
                                <th scope="row">{{ $loop->index + 1 }}</th>
                                <td>{{ $item->start_meeting }}</td>
                                <td>{{ $item->end_meeting }}</td>
                                <td> <a href="{{ $item->link->link_gg_meet }}">link</a> </td>
                                <td>{{ $data['package'] }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endisset
        </div>
    </div>
@endsection
