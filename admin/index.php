<?php
  session_start();
  if(isset($_SESSION['admin'])){
    header('location:home.php');
  }
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<style>
.login-box {
  width: 100%;
  max-width: 500px;
  margin: 100px auto 0; /* Center the login box horizontally and add margin-top */
  padding: 50px;
  background-color: #163020;
  background-image: linear-gradient(to bottom right, #163020, #1a3b2b);
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
  color: white;
}

  .login-logo b {
    color: white;
    font-family: 'Poppins Regular';
  }

  .login-box-body {
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 10px;
    padding: 30px;
    color: black;
    position: relative; /* Added for button positioning */
  }

  .login-box-msg {
    font-family: 'Poppins Regular';
    font-size: 25px;
    color: black;
  }

  .btn-primary {
  background-color: #163020;
  border-color: #163020;
  color: white;
  position: absolute;
  left: 230px;
  top: -5px;
  border-radius: 5px; /* Softens the edges */
}
</style>

<div class="login-box" style="padding-top: 30px; padding-bottom: 40px;">
  	<div class="login-logo">
  		<b>Betty Bakery Admin Login</b>
  	</div>
  
  	<div class="login-box-body" style="padding-top: 25px; padding-bottom: 40px;">
    	<p class="login-box-msg">Sign in to start your session</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" placeholder="input Username" required autofocus>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="input Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-soft" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>
