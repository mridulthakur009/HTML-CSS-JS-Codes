<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOG IN FORM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header text-center">
            sign up
          </div>
          <div class="card-body">
            <form action="result.php" method="post" enctype="multipart/form-data">
              <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name">
              </div>
              <div class="mb-3">
                <label for="dob" class="form-label">DOB</label>
                <input type="date" class="form-control" name="dob" placeholder="Enter your DOB">
              </div>
              <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="tel" class="form-control" name="phone">
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" name="email">
              </div>
              <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input type="address" class="form-control" name="address">
              </div>
              <div class="mb-3">
                <label for="file" class="form-label">file</label>
                <input type="file" class="form-control" name="file">
              </div>
              <div class="mb-3 text-center">
              <button type="submit" class="btn btn-primary" name="submit">Sign Up</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>


<!-- script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>