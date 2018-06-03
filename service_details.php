
<?php
include_once("navigation.php");
session_start();
if(!$_SESSION['Lsuccess'])
{
  $_SESSION['error']="UN AUTHORISED LOGIN DETECTED";
  header("Location:dbAutomobileLogin.php");
}
 if($_POST)
 {
  $_SESSION['problems']=$_POST['about'];
  //echo($_SESSION['problems']);
}
  //echo("type = ".$_SESSION['type']." model = ".$_SESSION['model']."  manufacturer = ".$_SESSION['manufacturer']);
 ?>
 <head>
<link href="service_details.css" type="text/css" rel="stylesheet">
 </head>
 <center>
   <div class="container">
<form method="post" action="estimation.php">
<p><br>
  <input type="checkbox" name="service" value="service" checked>General Service
</p><br>
<p>
  <label for="about">Additional Problems:</label><br/>
    <textarea rows="10" cols="40" id="inp08" name="about">

    </textarea>
</p>
<p>
  <input type="submit" value="Proceed" class="proceed">
</p>
</form>
</div>
</center>
