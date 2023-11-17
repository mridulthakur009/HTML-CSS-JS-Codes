<?php
    $conn = new mysqli("localhost", "root", "", "student_registration_form");
    if ($conn->connect_error) {
      die();
    } else {
      if (isset($_POST['submit'])){

        $name = $_POST['name'];
        $dob = $_POST['dob'];
        $phone = $_POST['phone'];
        $email = $_POST["email"];
        $address = $_POST['address'];
        $uploadfile = $_FILES['file'];


        $file_name = $_FILES['file']['name'];
        $file_tmp = $_FILES['file']['tmp_name'];

        $folder = "images/".$file_name;
        move_uploaded_file($file_tmp, $folder);
        if(isset($_POST['id'])){
          die('update here');
          
        }else{
          $students = $conn->prepare("INSERT INTO `student_data` (`id`, `name`, `dob`, `phone`, `email`, `address`, `file`) VALUES (NULL, ?,?,?,?,?,?)");
          $students->bind_param('ssssss', $name, $dob, $phone, $email, $address, $file_name);
          $students->execute();
          $students->close();
        }
      
      }
      $sqlcommand = "SELECT * FROM `student_data`";
      $final = $conn->query($sqlcommand);
      $row = $final->fetch_all(MYSQLI_ASSOC);
    }
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">id</th>
        <th scope="col">name</th>
        <th scope="col">dob</th>
        <th scope="col">email</th>
        <th scope="col">phone</th>
        <th scope="col">address</th>
        <th scope="col">file</th>
        <th scope="col">action</th>
      </tr>
    </thead>
    <tbody>
      <?php
        if (count($row) == 0) {
          echo '<tr><td>no data found</td></tr>';
        } else {
          foreach($row as $item){
            ?>  

              <tr>
                <td><?= $item['id']; ?></td>
                <td><?= $item['name']; ?></td>
                <td><?= $item['dob']; ?></td>
                <td><?= $item['email']; ?></td>
                <td><?= $item['address']; ?></td>
                <td><?= $item['phone']; ?></td>
                <td><?= $item['file']; ?></td>
                <td>
                <a href="http://localhost/php/database_connectivity/edit.php/?id=<?= $item['id']; ?>">Edit</a>

                </td>
              </tr>
            <?php
          }
        }
      ?>

    </tbody>
  </table>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>

</html>