<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $action == 'create' ? 'create' : 'edit | ' . $post['id'] }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous">
    </script>
</head>

<body>
    <div class="container mt-5">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div>
            <a href="/posts">Quay lại</a>
        </div>
        <form action={{ $action == 'create' ? '/store' : '/update/' . $post->id }} method="POST" enctype="multipart/form-data">
            @csrf
            <!-- @method('put') -->
            <div class="row">
                <label class="col-3" for="title">Title :</label>
                <input type="text" class="col form-control" name="title"
                    value="{{ isset($post) ? $post->title : '' }}">
            </div>
            <div class="row mt-3">
                <label class="col-3" for="image">Image :</label>
                <input type="file" onchange="changeImage(event)" class="col form-control" name="image">
                <img id="preview-img" class="col-6 img-thumbnail" style="width: 10rem" alt=""
                    src="/img/{{ isset($post) ? $post->image : '' }}">
                <script>
                    const changeImage = (e) => {
                        var preImage = document.getElementById("preview-img")
                        preImage.src = URL.createObjectURL(e.target.files[0])
                        preImage.onload = () => {
                            URL.revokeObjectURL(output.src)
                        }
                    }
                </script>
            </div>
            <div class="row mt-3">
                <label class="col-3" for="content">Content :</label>
                <input type="text" class="col form-control" name="content"
                    value="{{ isset($post) ? $post->content : '' }}">
            </div>
            <div class="text-center mt-3">
                <button class="btn btn-primary" type="submit">Save</button>
            </div>
        </form>
    </div>
</body>

</html>
