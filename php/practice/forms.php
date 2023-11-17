

 <!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
    <style>
      .error{
        color:red;
      }
      </style>
</head>
<body>
   
<?php 
  print_r($_POST);
  if(isset($_POST['submit']) && $_POST['submit']==1){
     
      $errors = array();
      $values = array();
      $fname = $_POST['fname'];
      if(isset($_POST['fname']) && !empty($_POST['fname'])){
        $fname = $_POST['fname'];
        $values['fname'] = $_POST['fname'];
      }else{
        $errors['fname'] = "First name is required";
      }
      $lname = $_POST['lname'];
      if(isset($_POST['lname']) && !empty($_POST['lname'])){
        $lname = $_POST['lname'];
        $values['lname'] = $_POST['lname'];
      }else{
        $errors['lname'] = "First name is required";
      }
      $phone = $_POST['phone'];
      if(isset($_POST['phone']) && !empty($_POST['phone'])){
        $phone = $_POST['phone'];
        $values['phone'] = $_POST['phone'];
      }else{
        $errors['phone'] = "First name is required";
      }
    }
  ?>
   <h2>Registration Form</h2>
    <form action="result.php" method="post">
    <label for="fname">fName:</label>
    <input type="text" name="fname" id="fname" placeholder="enter your Fname" value="<?php if(isset($values['fname']) && !empty($values['fname'])){ echo $values['fname'];}?>"><br>
                <p id="fnameError" class="error">

                <?php  if(isset($errors['fname']) && !empty($errors['fname'])){ echo $errors['fname'];}?>
                </p>

    <label for="lname">lname:</label>
    <input type="text" name="lname" id="lname" placeholder="enter your lname" value="<?php if(isset($values['lname']) && !empty($values['lname'])){ echo $values['lname'];}?>"><br>
                <p id="lnameError" class="error">

                <?php  if(isset($errors['lname']) && !empty($errors['lname'])){ echo $errors['lname'];}?>
                </p>

    <label for="phone">phone:</label>
    <input type="text" name="phone" id="phone" placeholder="enter your phone" value="<?php if(isset($values['phone']) && !empty($values['phone'])){ echo $values['phone'];}?>"><br>
                <p id="phoneError" class="error">

                <?php  if(isset($errors['phone']) && !empty($errors['phone'])){ echo $errors['phone'];}?>
                </p>
        <input type="hidden" name="submit" value="1" > 
        <button type="submit" name="save">submit</button>
    </form>
</body>
</html>
