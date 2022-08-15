@extends('admin.master')
@section('content')
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            @if (Session::has('message'))
                <div class="alert alert-success" role="alert">
                    {{ Session::get('message') }}
                </div>
            @endif
            <div class="page-header">
                <h3 class="page-title">
                    <span class="page-title-icon bg-gradient-primary text-white me-2">
                        <i class="mdi mdi-clipboard-check"></i>
                    </span> Booking
                </h3>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">
                            <span></span>Booking <i
                                class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row">
                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Bookings</h4>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th> Customer </th>
                                            <th> Start meeting </th>
                                            <th> End meeting </th>
                                            <th> Booking on </th>
                                            <th> Type </th>
                                            <th> Status </th>
                                            <th> Link google meeting </th>
                                        </tr>
                                    </thead>
                                    @foreach ($bookings as $booking)
                                        <tbody>
                                            <tr>
                                                <td>{{ $booking->user->name }}</td>
                                                <td>{{ $booking->start_meeting }}</td>
                                                <td>{{ $booking->end_meeting }}</td>
                                                <td>{{ $booking->created_at }}</td>
                                                <td>{{ $booking->type->name }} </td>
                                                <td>
                                                    @if ($booking->status == config('constants.APPROVED'))
                                                        <button
                                                            class="badge badge-gradient-danger">{{ $booking->status }}</button>
                                                    @elseif ($booking->status == config('constants.REJECTED'))
                                                        <button
                                                            class="badge badge-gradient-info">{{ $booking->status }}</button>
                                                    @elseif ($booking->status == config('constants.WAITING_APPROVED'))
                                                        <button onclick="handleChangeState({{ $booking->id }})"
                                                            class="badge badge-gradient-warning">{{ $booking->status }}</button>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($booking->status != config('constants.REJECTED'))
                                                        <a class="tag" href="{{ $booking->link->link_gg_meet }}"> Link
                                                        </a>
                                                    @endif
                                                </td>
                                            </tr>
                                        </tbody>
                                    @endforeach
                                </table>
                                {{ $bookings->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('modal.modal')
@endsection

@section('custom_css')
@endsection

@section('custom_js')
    <script src="/assets/js/modal.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
