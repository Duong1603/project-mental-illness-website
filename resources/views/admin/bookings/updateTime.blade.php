@extends('admin.master')
@section('content')
    <div class="container mt-3">
        <h1>Change time booking</h1>
        <form class="input-group" action="/action_page.php">
            <input class="form-control" type="datetime-local" value="2014-11-16T15:25:33" id="birthdaytime" name="birthdaytime">
            <input class="form-control btn btn-primary" type="submit">
        </form>
    </div>
@endsection
