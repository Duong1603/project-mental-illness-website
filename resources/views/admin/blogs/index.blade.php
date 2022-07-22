@extends('admin.master')
@section('content')
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-blogger"></i>
                </span> Blogs
            </h3>
            <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <span></span>Blogs <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
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
                            <h4 class="card-title">Blogs</h4>
                            <a type="button" class="btn btn-inverse-dark btn-fw" href="/admin/blogs/create">ADD NEW</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Image</th>
                                        <th>Emotion</th>
                                        <th>Content</th>
                                        <th>Status</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                @foreach ($posts as $post)
                                <tbody>
                                    <tr>
                                        <th>{{ $post->title }}</th>
                                        <td>
                                            <img src="{{env('APP_URL')}}/img/{{ $post->image }}" class="me-2" alt="Avatar" />
                                        </td>
                                        <td>100 <i class="mdi mdi-heart text-danger"></i></td>
                                        <td>{{ $post->content }}</td>
                                        <td><input class="switch" type="checkbox"></td>
                                        <td>
                                            <a href="/admin/blogs/update/{{ $post->id }}" role="button" class="btn btn-inverse-info btn-fw" onclick="return confirm('Bạn có muốn sửa!')">Edit</a>
                                        </td>
                                        <td>
                                            <a href="/admin/blogs/delete/{{ $post->id }}" role="button" class="btn btn-inverse-danger btn-fw" onclick="return confirm('Bạn có muốn xóa!')">Delete</a>
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