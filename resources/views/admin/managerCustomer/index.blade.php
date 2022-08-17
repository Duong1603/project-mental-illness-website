@extends('admin.master')
@section('content')
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-contacts"></i>
                </span> Manager Customer
            </h3>
            <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <span></span>Manager Customer <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row">
            <div class="col-12 grid-margin">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Manager Customer</h4>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th> No </th>
                                        <th id="sort"> Customer name
                                            <form action="">
                                                @csrf
                                                <select style="border:2px solid grey;outline:none;" name="sort_name" id="sort_name" class="form-control">
                                                    <option selected value="{{ Request::url() }}?sort_by=none">Filter</option>
                                                    <option value="{{ Request::url() }}?sort_by=kytu_az_by_name" style="color:black;">A đến Z</option>
                                                    <option value="{{ Request::url() }}?sort_by=kytu_za_by_name" style="color:black;">Z đến A</option>
                                                </select>
                                                <!--  -->
                                            </form>
                                        </th>
                                        <th> Phone </th>
                                        <th id="sort"> Email
                                            <form action="">
                                                @csrf
                                                <select style="border:2px solid grey;outline:none" name="sort_email" id="sort_email" class="form-control">
                                                    <option selected value="{{ Request::url() }}?sort_by=none">Filter</option>
                                                    <option value="{{ Request::url() }}?sort_by=kytu_az_by_email" style="color:black;">A đến Z</option>
                                                    <option value="{{ Request::url() }}?sort_by=kytu_za_by_email" style="color:black;">Z đến A</option>
                                                </select>
                                            </form>
                                        </th>
                                        <th> Type </th>

                                    </tr>
                                </thead>
                                @foreach ($managerCustomer as $managerCus)
                                <tbody>
                                    <tr>
                                        <td>{{ $managerCus->id }}</td>
                                        <td>{{ $managerCus->name }}</td>
                                        <td>{{ $managerCus->phone }}</td>
                                        <td>{{ $managerCus->email }}</td>
                                        <td>
                                            @if ($managerCus->type === 'booking')
                                            <p class="btn btn-success"> booking </p>
                                            @else
                                            <p class="btn btn-warning">contact</p>
                                            @endif
                                        </td>
                                    </tr>
                                </tbody>
                                @endforeach
                            </table>
                            {!! $managerCustomer->links() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('sort_name').onchange = function(e) {
            var url = $(this).val();
            // alert(url);
            if (url) {
                window.location = url;
            }
            return false;
        };
    </script>

    <script>
        document.getElementById('sort_email').onchange = function(e) {
            var url = $(this).val();
            // alert(url);
            if (url) {
                window.location = url;
            }
            return false;
        };
    </script>
    @endsection