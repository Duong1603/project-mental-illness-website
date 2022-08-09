@extends('master')
@section('content')
    <div class="container">
        <div>
            <h2> Hey Phi Phi, </h2>
        </div>
        <div>
            <h4> Feedback từ khách hàng  {{ $details['name'] }}</h4>
            <h4> Message: {{ $details['message'] }}</h4>
        </div>

</div>
@endsection