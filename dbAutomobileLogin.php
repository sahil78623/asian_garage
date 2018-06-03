<?php
  //print_r($_POST);
  require_once "pdo.php";
  require_once('navigation.php');
    //not empty
    //atleast 6 characters
    //Start the session
session_start();

//Dump your POST variables


//$_SESSION['POST'] = $_POST;

  $errors=array();    //all the values which are entered are stored in array

  //start validation
    if(empty($_POST['name']))
    {
      $errors['name']="Invalid User Name";
    }
    if(empty($_POST['password']))
    {
      $errors['password']="Invalid Password";
    }

  //check $errors
      if(isset($_POST['name'])&&isset($_POST['password']))
        {

          $sql="SELECT  user_id from users
          WHERE name=:name AND password=:password";
          //echo("<pre>\n".$sql."\n</pre>\n");
          $stmt=$pdo->prepare($sql);
          $stmt->execute(array(
            ':name'=>$_POST['name'],
            ':password'=>$_POST['password']  ));
            $row=$stmt->fetch(PDO::FETCH_ASSOC);
            $_POST['id']=$row;
              if($row==TRUE)
              {
                $_SESSION['Lsuccess']="Logged In";
                header("Location:bike_details.php");
                exit();
              }
              else{

                echo("<h3 style='color:red'>Login FAILED</h3>");

              }
        }


 ?>


<!-- -------------------------------------------------------------------->
<html>
<head>
     <link href="dbAutomobileLogin.css" type="text/css" rel="stylesheet">
</head>
<body>
  <center>
    <div class="container">
    <h1>Welcome to Asian Garage</h1>
  <h2>Please Log In</h2>
  <form method="post" target="">
    <p>User Name:
      <input type="text" name="name" size="40"><p style="color:red"><?php if($_POST){if(isset($errors['name'])) echo $errors['name']; } ?></p>
    </p>
    <p>Password:
      <input type="password" name="password" size="40"><p style="color:red"><?php if($_POST){ if(isset($errors['password'])) echo $errors['password']; }?></p>
  </p>
      <input type="submit" value="LOGIN" size="40" class="login_btn">
    <!--  <input type="button"
      onclick="location.href='dbRegister.php';return false;" value="Cancel" class="cancel">-->

  </form>
</div>
</center>
</body>
</html>
