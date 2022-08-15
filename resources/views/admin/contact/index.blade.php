@extends('admin.master')
@section('content')
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
                    </span> Contact
                </h3>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">
                            <span></span>Contact <i
                                class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row">
                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Contact</h4>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th> Customer </th>
                                            <th> Phone </th>
                                            <th> Email </th>

                                            <th> Create at</th>
                                            <th> Problem </th>
                                        </tr>
                                    </thead>
                                    @foreach ($contacts as $contact)
                                        <tbody>
                                            <tr>
                                                <td>{{ $contact->user->name }}</td>
                                                <td>{{ $contact->user->phone }}</td>
                                                <td>{{ $contact->user->email }}</td>
                                                <td>{{ $contact->created_at }}</td>
                                                <td>
                                                    <p>{{ $contact->problem }}</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    @endforeach
                                </table>
                                {{ $contacts->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
