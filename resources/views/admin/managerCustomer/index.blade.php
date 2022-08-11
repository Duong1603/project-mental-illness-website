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
                            <span></span>Manager Customer <i
                                class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
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
                                            <th> Customer name </th>
                                            <th> Phone </th>
                                            <th> Email </th>
                                        </tr>
                                    </thead>
                                    @foreach ($managerCustomer as $managerCus)
                                        <tbody>
                                            <tr>
                                                <td>{{ $managerCus->id }}</td>
                                                <td>{{ $managerCus->name }}</td>
                                                <td>{{ $managerCus->phone }}</td>
                                                <td>{{ $managerCus->email }}</td>
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
    @endsection
