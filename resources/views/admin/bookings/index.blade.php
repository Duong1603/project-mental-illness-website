@extends('admin.master')
@section('content')
<!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">
    <div class="page-header">
      <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
          <i class="mdi mdi-clipboard-check"></i>
        </span> Booking
      </h3>
      <nav aria-label="breadcrumb">
        <ul class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <span></span>Booking <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
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
                    <th> Id user </th>
                    <th> Start meeting </th>
                    <th> End meeting </th>
                    <th> Booking on </th>
                    <th> Problem </th>
                    <th> Type </th>
                    <th> Status </th>
                    <th> Link google meeting </th>
                  </tr>
                </thead>
                @foreach ($bookings as $booking)
                <tbody>
                  <tr>
                    <td>{{ $booking -> id_order}}</td>
                    <td>{{ $booking -> start_meeting}}</td>
                    <td>{{ $booking -> end_meeting}}</td>
                    <td>{{ $booking -> created_at}}</td>
                    <td>{{ $booking -> problem}}</td>
                    <td>{{ $booking -> times}} minutes</td>
                    <td>
                      @if ($booking -> status == 'will do')
                        <label class="badge badge-gradient-danger">WILL</label>
                      @elseif ($booking -> status == 'doing')
                        <label class="badge badge-gradient-info">DOING</label>
                      @elseif ($booking -> status == 'done')
                        <label class="badge badge-gradient-warning">DONE</label>
                      @endif
                    </td>
                    <td><a class="tag" href="{{$booking -> link_gg_meet}}">Link</a></td>
                  </tr>
                </tbody>
                @endforeach
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
<!-- main-panel ends -->
@endsection