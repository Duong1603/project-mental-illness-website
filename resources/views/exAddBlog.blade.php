<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>addBlo</title>
</head>

<body>
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">

                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <span class="anchor" id="formLogin"></span>
                        <!-- form card login -->
                        <div class="card card-outline-secondary">
                            <div class="card-header">
                                <h3 class="mb-0">Add Blog</h3>
                            </div>
                            <div class="card-body">
                                <form autocomplete="off" class="form" id="" name="" role="form">
                                    <div class="form-group">
                                        <strong><label for="title">Title</label></strong>
                                        <input class="form-control" id="uname1" name="title" required=""
                                            type="text">
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group-prepend">
                                            <strong><label for="title">Image</label></strong>
                                        </div>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="inputGroupFile01"
                                                aria-describedby="inputGroupFileAddon01">
                                            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <strong> <label>Content</label></strong>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <strong> <label>Status</label></strong>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input"
                                                id="customControlValidation2" name="radio-stacked" required>
                                            <label class="custom-control-label" for="customControlValidation2">Toggle
                                                this custom radio</label>
                                        </div>
                                        <div class="custom-control custom-radio mb-3">
                                            <input type="radio" class="custom-control-input"
                                                id="customControlValidation3" name="radio-stacked" required>
                                            <label class="custom-control-label" for="customControlValidation3">Or toggle
                                                this other custom radio</label>

                                        </div>
                                    </div>
                                    <button class="btn btn-success float-right" type="button">ADD</button>
                                </form>
                            </div>
                            <!--/card-block-->
                        </div><!-- /form card login -->
                    </div>
                </div>
                <!--/row-->
            </div>
            <!--/col-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous">
</script>

</html>
