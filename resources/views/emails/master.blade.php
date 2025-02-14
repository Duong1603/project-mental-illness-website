<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        *,
        *:before,
        *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            font-family: 'Nunito', sans-serif;
            color: #384047;
        }

        table {
            max-width: 960px;
            margin: 10px auto;
        }

        caption {
            font-size: 1.6em;
            font-weight: 400;
            padding: 10px 0;
        }

        thead th {
            font-weight: 400;
            background: #8a97a0;
            color: #FFF;
        }

        tr {
            background: #f4f7f8;
            border-bottom: 1px solid #FFF;
            margin-bottom: 5px;
        }

        tr:nth-child(even) {
            background: #e8eeef;
        }

        th,
        td {
            text-align: left;
            padding: 20px;
            font-weight: 300;
        }

        tfoot tr {
            background: none;
        }

        tfoot td {
            padding: 10px 2px;
            font-size: 0.8em;
            font-style: italic;
            color: #8a97a0;
        }
    </style>


    @yield('custom_css')
</head>

<body>
    @yield('content')
</body>

</html>
