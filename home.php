
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <title>Asian Garage</title>
      <meta charset="UTF-8">
      <title>Document</title>
      <style>
      @import url(https://fonts.googleapis.com/css?family=Open+Sans);

  html {
    height:100%;
    background-image: url("bg.jpg") ;
         background-repeat: no-repeat;
       background-size: 100% 720px;

  }

  nav {
    max-width: 700px;
    margin: 0 auto;
    padding: 60px 0;
  }

  nav ul {
    text-align: center;
  background: white;
  box-shadow: gray;

  }

  nav ul li {
    display: inline-block;
  }

  nav ul li a {
    padding: 18px;
    font-family: "Open Sans";
    text-transform:uppercase;
    color: black;
    font-size: 18px;
    text-decoration: none;
    display: block;
    font-weight: bold;
  }

  nav ul li a:hover {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
    background: gray;
    color: rgba(0, 35, 122, 0.7);
  }

  .login_btn{
  padding: 15px 25px;
  border: none;
  background-color:black;
  color: #fff;
  border-radius: 7px;
  }

  .sign_btn{
     margin-top: 60px;
  padding: 15px 25px;
  border: none;
  background-color:black;
  color: #fff;
  border-radius: 7px;
  }
  .sign_btn:hover{
    background-color: gray;
  }

      </style>
  </head>
  <body>
      <nav>
    <ul>
      <li>
        <a href="#">Home</a>
      </li>
      <li>
        <a href="#">About</a>
      </li>
      <li>
        <a href="#">Services</a>
      </li>
      <li>
        <a href="#">Contact</a>
      </li>

    </ul>
    <form>
      <center>
         <input type="button" value="LOGIN" class="login_btn" onclick="location.href='dbAutomobileLogin.php';return true;">
        <input type="button" value="SIGN UP" class="sign_btn" onclick="location.href='dbRegister.php';return true;">
      </center>
    </form>
  </nav>
  </body>
  </html>
