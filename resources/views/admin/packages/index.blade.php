@extends('admin.master')
@section('content')
<!-- partial -->
<div class="main-panel">
@if(Session::has('message'))
<p class="alert alert-info">{{ Session::get('message') }}</p>
@endif
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-blogger"></i>
                </span> Packages
            </h3>
            <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <span></span>Packages <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                    </li>
                </ul>
            </nav>
            <!-- <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <span></span><a type="button" class="btn btn-inverse-dark btn-fw" href="/admin/blogs/create">ADD NEW</a>
                    </li>
                </ul>
            </nav> -->
        </div>
        <div class="row">
            <div class="col-12 grid-margin">
                <div class="card">
                    <div class="card-body">
                        <div id="card-title-btn-blogs">
                            <h4 class="card-title">Packages</h4>
                            <a type="button" class="btn btn-gradient-danger btn-fw" href="/admin/packages/create">ADD NEW</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table package-table">
                                <thead>
                                    <tr>
                                        <th>Name </th>
                                        <th>Price </th>
                                        <th style="width: 30%">Description</th>
                                        <th>Image</th>
                                        <th>Create time</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                @foreach ($packages as $package)
                                <tbody>
                                    <tr>
                                        <th>{{ $package->name }}</th>
                                        
                                        <td>{{ $package->price }} <i class="mdi text-danger"></i></td>
                                        <td class="description">{{ $package->description }}</td>
                                        <td>
                                            <img src="{{ config('constants.APP_URL') }}/img/{{ $package->image }}" class="me-2" alt="Avatar" />
                                        </td>
                                        <td>{{ $package->created_at }}</td>
                                        <td>
                                            <a href="/admin/packages/update/{{ $package->id }}"><i class="mdi mdi-pencil-box"></i></a>
                                        </td>
                                        <td>
                                            <a href="/admin/packages/delete/{{ $package->id }}" onclick="return confirm('Bạn có muốn xóa!')"><i class="mdi mdi-delete"></i></a>
                                        </td>
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