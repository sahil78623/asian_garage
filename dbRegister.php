<?php
  //print_r($_POST);

  session_start();
    //not empty
    //atleast 6 characters
    //Start the session
//session_start();

//Dump your POST variables
//$_SESSION['POST'] = $_POST;

    //all the values which are entered are stored in array

  //start validation
  $_SESSION['error']=false;

    if(empty($_POST['Rname']))
    {
      $_SESSION['Rname']="name cannot be empty";
      $_SESSION['error']=true;
    }
    if(empty($_POST['Rpassword']))
    {
      $_SESSION['Rpassword']="password cannot be empty";
      $_SESSION['error']=true;
    }
    if(empty($_POST['email']))
    {
      $_SESSION['email']="email cannot be empty";
      $_SESSION['error']=true;
    }
    if(empty($_POST['phone']))
    {
      $_SESSION['phone']="phone cannot be empty";
      $_SESSION['error']=true;
    }




    if(!empty($_POST['Rname'])&&!empty($_POST['Rpassword'])&&!empty($_POST['email'])&&!empty($_POST['phone']))
      {
          require_once "pdo.php";
        $sql="INSERT INTO users (name,email,phone,password) VALUES (:name,:email,:phone,:password)";

        //echo("<pre>\n".$sql."\n</pre>\n");
        $stmt=$pdo->prepare($sql);
        $stmt->execute(array(
          ':name'=>$_POST['Rname'],
          ':email'=>$_POST['email'],
          ':phone'=>$_POST['phone'],
          ':password'=>$_POST['Rpassword']  ));


      }

      //reloading the entered values
      if(!$_POST)
      {
        $name = "";
        $phone = "";
        $pwd = "";
        $email = "";
      }
      else {
        $name = $_POST['Rname'];
        $phone = $_POST['phone'];
        $pwd = $_POST['Rpassword'];
        $email = $_POST['email'];
      }

 ?>
<?php   require_once('navigation.php'); ?>
 <html>
 <head>
   <link href="dbRegister.css" type="text/css" rel="stylesheet">
 </head>
 <body>
   
   <?php
   try {


   if($_SESSION['error']==false)
     {
       $_SESSION['Rsuccess']='SUCCESSFULLY REGISTERED';


       $name = "";
       $phone = "";
       $pwd = "";
       $email = "";

       $pdo=new PDO('mysql:host=localhost;port=3306;dbname=transaction','root','');
       $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
       $table_name=$_POST['email'];
       //str_replace("@","",$table_name);
       //str_replace(".","",$table_name);

       $table_name=str_replace("@","",$table_name);   //removing predefined characters
       $table_name=chop($table_name,".com");
       //echo ($table_name);

     $create="CREATE TABLE $table_name(tran_id INT AUTO_INCREMENT PRIMARY KEY,
                                             time_of_order VARCHAR(30),
                                             manufacturer VARCHAR(30),
                                             model VARCHAR(30),
                                             cost VARCHAR(30),
                                             pay_mode VARCHAR(30),
                                             service_centre VARCHAR(30),
                                             parts_replaced VARCHAR(100),
                                             location_picked VARCHAR(30),
                                             location_droped VARCHAR(30),
                                             time_picked VARCHAR(30),
                                             time_droped VARCHAR(30));";
      $pdo->exec($create);

      //$_SESSION['error']==true;
      header("Location:dbAutomobileLogin.php");
      exit();
     }
   } catch (Exception $e) {
      echo "<p style='color:red'>Customer Already Registered</p>";
   }
    ?>
  <center><div class="container">
     <form method="post" id="form">

   <p>User Name:
     <input type="text" name="Rname" size="40" value="<?= htmlentities($name)  ?>">  <p style="color:red"><?php if(isset($_SESSION['Rname']) && $_POST) { echo $_SESSION['Rname']; }  unset($_SESSION['Rname']); ?></p>
   </p>
   <p>Email:
     <input type="text" name="email" size="40" value="<?= htmlentities($email)?>">   <p style="color:red"><?php if(isset($_SESSION['email']) && $_POST) {echo $_SESSION['email']; } unset($_SESSION['email']); ?></p>
   </p>
   <p>Phone:
     <input type="text" name="phone" size="40" value="<?= htmlentities($phone)?>">    <p style="color:red"><?php if(isset($_SESSION['phone']) && $_POST) { echo $_SESSION['phone']; } unset($_SESSION['phone']); ?></p>
   </p>
   <p>Password:
     <input type="password" name="Rpassword" size="40" value="<?= htmlentities($pwd)?>"> <p style="color:red"> <?php if(isset($_SESSION['Rpassword']) && $_POST) {echo $_SESSION['Rpassword']; } unset($_SESSION['Rpassword']); ?></p>
   </p>
   <input type="submit" value="Register" size="40" class="register">
 </form>
</div>
</center>
</body>

</html>
