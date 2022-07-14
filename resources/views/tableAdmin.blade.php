<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Table</title>

  
</head>
<body>
<div>
    <h1>All posts </h1>
    <button type="add" class="btn btn-dark">ADD NEW</button>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Image</th>
      <th scope="col">Poston</th>
      <th scope="col">Action</th>
      <th scope="col">Content</th>
      <th scope="col">Status</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <th>
      <tr>
        <td>1</td>
        <td><img src="data:image/jpeg;base64,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" alt="" /></td>
        <td>May 26, 2019</td>
        <td>100 like</td>
        <td><p>Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is either obvious from the content itself (e.g. the visible text), or is included through alternative means, such as additional text hidden with the .sr-only class.</p></td>
        <td><input type="checkbox" name="check" value="check"></td>
        <td><button type="edit" class="btn btn-success">Edit</button></td>
        <td><button type="delete" class="btn btn-danger">Delete</button></td>
      </tr>
    </th>
    <th>
    <tr>
        <td>1</td>
        <td><img src="data:image/jpeg;base64,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" alt="" /></td>
        <td>May 26, 2019</td>
        <td>100 like</td>
        <td><p>Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is either obvious from the content itself (e.g. the visible text), or is included through alternative means, such as additional text hidden with the .sr-only class.</p></td>
        <td><input type="checkbox" name="check" value="check"></td>
        <td><button type="edit" class="btn btn-success">Edit</button></td>
        <td><button type="delete" class="btn btn-danger">Delete</button></td>
      </tr>
    </th>
  </tbody>
</table>
</div>
</body>
</html>