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
                <tbody>
                  <tr>
                    <td> 01 </td>
                    <td> 6:30 PM </td>
                    <td> 6:30 PM </td>
                    <td> Dec 13, 2022 </td>
                    <td> Lorem ipsum dolor sit. </td>
                    <td> 25 minutes </td>
                    <td>
                      <label class="badge badge-gradient-danger">WILL</label>
                    </td>
                    <td> <a class="tag" href="https://meet.google.com/nkg-smha-jdi?authuser=0">Link</a> </td>
                  </tr>
                  <tr>
                    <td> 02 </td>
                    <td> 6:30 PM </td>
                    <td> 6:30 PM </td>
                    <td> Dec 13, 2022 </td>
                    <td> Lorem ipsum dolor sit. </td>
                    <td> 25 minutes </td>
                    <td>
                      <label class="badge badge-gradient-info">DOING</label>
                    </td>
                    <td> <a class="tag" href="https://meet.google.com/nkg-smha-jdi?authuser=0">Link</a> </td>
                  </tr>
                  <tr>
                    <td> 03 </td>
                    <td> 6:30 PM </td>
                    <td> 6:30 PM </td>
                    <td> Dec 13, 2022 </td>
                    <td> Lorem ipsum dolor sit. </td>
                    <td> 25 minutes </td>
                    <td>
                      <label class="badge badge-gradient-warning">DID</label>
                    </td>
                    <td> <a class="tag" href="https://meet.google.com/nkg-smha-jdi?authuser=0">Link</a> </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
<!-- main-panel ends -->
@endsection