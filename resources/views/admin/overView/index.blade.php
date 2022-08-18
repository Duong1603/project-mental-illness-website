@extends('admin.master')
@section('content')
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-chart-pie menu-icon"></i>
                </span> Overview
            </h3>
            <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" data-group="month" class="btn btn-sm btn-danger">Month</button>
            <button type="button" data-group="year" class="btn btn-sm btn-primary">Year</button>
        </div>
        <div class="row">
            <div class="container col-lg-10 grid-margin stretch-card" style="background-color: white;">
                <canvas id="myChart"></canvas>
            </div>
        </div>
        <div class="btn-group btn-group-user" role="group" aria-label="Basic example">
            <button type="button" data-group="monthUser" class="btn btn-user btn-sm btn-danger">Month</button>
            <button type="button" data-group="yearUser" class="btn btn-user btn-sm btn-primary">Year</button>
        </div>
        <div class="row">
            <div class="container col-lg-10 grid-margin stretch-card" style="background-color: white;">
                <canvas id="myChartUser"></canvas>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <!-- Order -->
    <script>
        let myChart = document.getElementById("myChart").getContext("2d");
        // Global Options
        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;
        Chart.defaults.global.defaultFontColor = "#777";

        let massPopChart = new Chart(myChart, {
            type: 'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
            options: {
                title: {
                    display: true,
                    text: "Booking statistics",
                    fontSize: 25,
                },
                legend: {
                    display: true,
                    position: "right",
                    labels: {
                        fontColor: "#000",
                    },
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0,
                    },
                },
                tooltips: {
                    enabled: true,
                },
            },
        });

        function displayChart(group = 'month') {
            fetch("{{ route('charts.orders') }}?group=" + group)
                .then(response => response.json())
                .then(json => {
                    massPopChart.data.labels = json.labels;
                    massPopChart.data.datasets = json.datasets;
                    massPopChart.update();
                });
        }
        $('.btn-group .btn').on('click', function(e) {
            e.preventDefault();
            displayChart($(this).data('group'));
        });
        displayChart();
    </script>
    <!-- User -->
    <script>
        let myChartUser = document.getElementById("myChartUser").getContext("2d");
        // Global Options
        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;
        Chart.defaults.global.defaultFontColor = "#777";

        let massPopChartUser = new Chart(myChartUser, {
            type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
            options: {
                title: {
                    display: true,
                    text: "User statistics",
                    fontSize: 25,
                },
                legend: {
                    display: true,
                    position: "right",
                    labels: {
                        fontColor: "#000",
                    },
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0,
                    },
                },
                tooltips: {
                    enabled: true,
                },
            },
        });

        function displayChartUser(group = 'monthUser') {
            fetch("{{ route('charts.users') }}?group=" + group)
                .then(response => response.json())
                .then(json => {
                    massPopChartUser.data.labels = json.labels;
                    massPopChartUser.data.datasets = json.datasets;
                    massPopChartUser.update();
                });
        }
        $('.btn-group-user .btn-user').on('click', function(e) {
            e.preventDefault();
            displayChartUser($(this).data('group'));
        });
        displayChartUser();
    </script>
    <!-- main-panel ends -->
    @endsection