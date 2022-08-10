@extends('emails.master')
@section('content')
    <div class="container">
        <div>
            <h2> Hey Phi Phi, </h2>
        </div>
        <div>
            <h4> There are a new message from system</h4>
            <p>Type: {{ $data['type'] }}</p>
            <p>Customer: {{ $data['customer'] }}</p>
            <p>{{ isset($data['problem']) ? $data['problem'] : '' }}</p>
            <p>{{ isset($data['time']) ? $data['time'] : '' }}</p>

            Time from customer:
            @isset($data['times'])
                @foreach ($data['items'] as $item)
                    start: {{ $item->start_meeting }}
                    end: {{ $item->end_meeting }}
                    link: {{ $item->link->link_gg_meet }}
                @endforeach
            @endisset
        </div>
    </div>
@endsection
