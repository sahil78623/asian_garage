
<?php

    session_start();
    include_once('navigation.php');
    if(!$_SESSION['Lsuccess'])
    {

      header("Location:home.php");
    }
      $errors=array();
      if($_POST)
      {

        if(empty($_POST['manufacturer']))
        {
          $errors['manufacturer']="Select The Makers Of Your Bike";
        }
        if(empty($_POST['model']))
        {
          $errors['model']="Select your bike model";
        }
        if(empty($_POST['Rn1'])||empty($_POST['Rn2'])||empty($_POST['Rn3'])||empty($_POST['Rn4']))
        {
          $errors['Rnumber']="INVALID Registration Number";
        }

        if(empty($errors))
        {
          $_SESSION['bike_type']=$_POST['bike_type'];
          $_SESSION['model']=$_POST['model'];
          $_SESSION['manufacturer']=$_POST['manufacturer'];
          $_SESSION['Rnumber']=$_POST['Rn1'].$_POST['Rn2'].$_POST['Rn3'].$_POST['Rn4'];
          //echo("type = ".$_SESSION['type']." model = ".$_SESSION['model']."  manufacturer = ".$_SESSION['manufacturer']);
          header("Location:service_details.php");
        }
    }

    //dynamic drop down


 ?>

<html>
<head>
    <title>Asian Garage</title>
     <link href="bike_details.css" type="text/css" rel="stylesheet"><?php
  $pdo=new PDO('mysql:host=localhost;port=3306;dbname=garage','root','');
  $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);




  //$row=$stmt->fetch(PDO::FETCH_ASSOC)
   ?>



</head>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script>
var t_name;
   function getManufacturer(val)
   {
     t_name=val;
    // console.log(val);
     $.ajax({
       type:"POST",
       url:"get_sports.php",
       data:'bike_id='+val,
       success:function(data){

         $("#manufacturer").html(data);
       }
     });
   }

   function getModel(val)
   {

     val=t_name+" "+val;
     console.log(val);
     $.ajax({

       type:"POST",
       url:"get_model.php",
       data:'model_id='+val,
       success:function(data){

         $("#model").html(data);
       }
     });
   }


</script>
<div class="container">
<body>

  <center>
  <form method="post">
    <div class="container">
        <p><label for="bike_type">Bike Type:</label>
          <select id="bike_type" onChange="getManufacturer(this.value);" class="bike_type">
            <option value="">--Please Select --</option>
            <option value="sports_bike">Sports</option>
            <option value="cruiser_bikes">Cruiser</option>

          </select>

      </p>
      <p><label for="manufacturer">Manufacturer:</label>
        <select name="manufacturer" id="manufacturer" onChange="getModel(this.value);">
          <option value="">--Please Select --</option>

        </select>
        <p style="color:red"><?php if(isset($errors['manufacturer'])) echo $errors['manufacturer']; ?></p>
      </p>
        <p><label for="model">Model:</label>
          <select name="model" id="model">
            <option value="">--Please Select --</option>
          </select>
          <p style="color:red"><?php if(isset($errors['model'])) echo $errors['model']; ?></p>
        </p>
      </div>
      <div class="text_inp">
        <p><label for="model">Registration Number:</label>
          <input type="text" name="Rn1" id="Rn1" size="5" placeholder="TS" >
          <input type="text" name="Rn2" id="Rn2" size="5" placeholder="08" >
          <input type="text" name="Rn3" id="Rn3" size="5" placeholder="FG">
          <input type="text" name="Rn4" id="Rn4" size="5" placeholder="3908">
        </p>
      </div>
        <p style="color:red"><?php if(isset($errors['Rnumber'])) echo $errors['Rnumber']; ?></p>

        <p>
          <input type="submit" value="Proceed" class="proceed_btn">
        </p>
      </form>
      </center>
</body>
</div>
</html>
