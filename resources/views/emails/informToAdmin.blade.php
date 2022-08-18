
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
 
  <title>Document</title>
</head>
<style>
    .container{
      margin-top:20% ;
      width: 40%;
    }
   .content__toAdmin{
      margin: auto;
      text-align: center;
  text-align: center
   }
   .title_confirm-book{
    color: #09474B;

   }
</style>
<body>
<div class="container">
  <h4 class="title_confirm-book">Dear Phi Phi,</h4>
  <div class="content__toAdmin">
  <p>There is a customer just book in system, please check <strong><a href="{{route('admin.getLogin')}}">admin page</a></strong></p>
</div>
<br>
  <div class="card-footer content">Buil website by student at PNV </div>
  </div>
</body>
</html>
