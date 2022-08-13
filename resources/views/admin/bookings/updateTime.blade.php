@extends('admin.master')
@section('content')
    <div class="main-panel">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    <span class="page-title-icon bg-gradient-primary text-white me-2">
                        <i class="mdi mdi-blogger"></i>
                    </span> Booking
                </h3>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{route('bookings.index')}}">Back To Booking</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Form Change time for meeting
                        </li>
                    </ol>
                </nav>
            </div>
            <div class="row">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <form class="form-sample" method="POST" action="{{ route('changeTime') }}">
                                @csrf
                                <input type="hidden" name="_method" value="PATCH">
                                <input  type="hidden" 
                                        id="package_id" 
                                        value="{{isset($order)? $order->package_id:""}}">
                                <input  type="hidden" 
                                id="package_id" 
                                name="id"
                                value="{{isset($order)? $order->id:""}}">
                                <div class="form-group">
                                    <label for="title">Customer</label>
                                    <input type="text" class="form-control" name="customer" readonly="true"
                                        value=" {{ isset($order) ? $order->user->name : '' }}">
                                </div>
                                <div class="form-group">
                                    <label for="start_meeting" class="content">Start meeting || formatting
                                        mm/dd/yyyy</label>
                                    <input  id="start_meeting"
                                            class="form-control" 
                                            type="datetime-local" 
                                            name="start_meeting"
                                            value="{{ isset($order) ? $order->start_meeting : '' }}" 
                                           >
                                </div>
                                <div class="form-group">
                                    <label for="end_meeting" class="content">End meeting</label>
                                    <input  id="end_meeting"
                                            class="form-control" 
                                            type="datetime-local" name="end_meeting"
                                            value="{{ isset($order) ? $order->end_meeting : '' }}" 
                                            readonly='true'
                                         >
                                </div>
                                <div class="form-group">
                                    <label for="content">Package</label>
                                    <input  readonly="true" 
                                            type="text"
                                            placeholder="Content" 
                                            class="form-control"
                                            name="content" 
                                            value="{{ isset($order) ? $order->type->name : '' }}" />
                                </div>
                                <button type="submit" 
                                        class="btn btn-gradient-primary me-2">
                                        Submit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('custom_js')
    <script src="/assets/js/updateEndTime.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
