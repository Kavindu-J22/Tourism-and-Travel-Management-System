<?php session_start(); // section start



	include_once 'config.php'; //include config file



	if(isset($_POST['submit'])){  //check the user enter the submit button 
		
		$errors = array();
		
		if(!isset($_POST['uname']) || strlen(trim($_POST['uname'])) < 1 ){
			
			$errors[] = "User Name Is Missing / Invalid";
			
		}if(!isset($_POST['password']) || strlen(trim($_POST['password'])) < 1 ){
			
			$errors[] = "Password Is Missing / Invalid";
			
		}
		
		if(empty($errors)){
			
			$nme = mysqli_real_escape_string($conn ,$_POST['uname']);
			$pwrd = mysqli_real_escape_string($conn,$_POST['password']);
			
			
		$query = "select * from account where FirstName = '{$nme}' AND Password = '{$pwrd}' limit 1"; //check the query for password and user name
			
			$result_set = mysqli_query($conn,$query);
			
			if($result_set) {
				
				if(mysqli_num_rows($result_set) == 1){  //get the user details from the data base
					$user= mysqli_fetch_assoc($result_set);
					$_SESSION['user_id'] = $user['Signup_ID'];
					$_SESSION['first_name'] = $user['FirstName'];
					$_SESSION['Last_Name'] = $user['Last_Name'];
					$_SESSION['DOB'] = $user['DOB'];
					$_SESSION['Mobile_Number'] = $user['Mobile_Number'];
					$_SESSION['Email'] = $user['Email'];
					$_SESSION['Password'] = $user['Password'];
					
					header('Location: userAccountPage.php');
				}else {
					$errors[] = 'Invalid Username / Password';
				}
			}else {
				$errors [] = 'Database query failed';
			}
		}
	}



?>



<!DOCTYPE html>
<html>

<head>
	<title>Home/traveltime</title>
	<link rel="stylesheet" type = "text/css" href = "styles/styles.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

	<script src = "js/traveltime.js"></script>
</head>

<body>
	<div class="head">
	<button id = "log"  type = "button" value = "Login"><a href="userLogin.php" style="text-decoration: none;">Login</a></button>
	<button id = "sign"  type = "button" value = "Sign Up"> <a href="userSignUp.html" style="text-decoration: none;">Sign Up </a></button>
	<image class="logpic"src="images/log.jpg" alt="Avatar">
	</br>
	
	<image class = "logo" src = "images/logo.jpg"alt = "logo">
	
	<center>
	<h2>TravelTime</h2>
	<h3>Tourism and travel management system<h3>
	</center>
	

		<ul class="menu">
		<li class = "menu1" ><a href = "Home.html">Home</a></li>
		<li class = "menu1"><a href = "About us.html">About us</a></li>
		<li class = "menu1"><a href = "services.html">Service</a></li>
		<li class = "menu1"><a href = "category.html">Catogery</a></li>
		<li class = "menu1"><a href = "contactus.html">Contact</a></li>
		<li><a id = "admin" href = "adminlogin.php">Admin user</a></li>
		<br>
		<input id ="btn"type ="button" value = "search">
		<input id = "searchbar" type = "text" placeholder = "search"></li>
		
	</ul>
	</div>
	<center>
	
	<form method="post" action="#">
	<div class="productData" style="border-style:groove; border-color=dark-blue;">
	<table width="50%">
		<tr>
		<td>
		
		<?php 
			if(isset($errors) && !empty($errors)){
				
				echo "<p> Invalid Username / Password</p>"; //If system have any errors display 
			}?>
		
		
		<center>
			<br><br>
			<h2>User Login </h2><br><br>
		</center>

		
			User Name <br>
			<input type="text" name="uname" class="box" placeholder="xxxxxxxxxxxx"><br><br>
			
			Password <br>
			<input type="password" name="password" class="box" placeholder="*********"><br><br>
			
			<center><input type="submit" name="submit" class="button button1" value="Log In"></center><br><br>
			
			<center><button  class="button"><a href="forgotPW.php" style="text-decoration: none;">Forgot password </a></button></center>
		</td>
		</tr>
	</table>
	</div>
	</form>
	
	</center>
	</div>
	<footer class="footer">
  	 <div class="container">
  	 	<div class="row">
		
  	 		<div class="footer-col">
  	 			
  	 			<ul class="list">
  	 				<li class ="text">TravelTime(pvt)Ltd.</li>
					<li class ="text">+111-651-2559</li>
					<li class ="text">+251-658-2559</li>
					<li class ="text">Mail : TravelTime@gmail.com</li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
			<ul class="list">
  	 			<li class ="text">Follow Us</li>
			</ul>
  	 			<div class="social-links">
  	 				<a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
  	 				<a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
  	 				<a href="https://lk.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
			
  	 	</div>
		
		<ul class="list">
		<li class ="text" style="margin-left:900px; margin-bottom:-170px;" >We accepted</li>
		</ul>
		<div class="creditlogo">
		<a href="http://www.credit-card-logos.com/"><img alt="Credit Card Logos" title="Credit Card Logos" 
		src="http://www.credit-card-logos.com/images/multiple_credit-card-logos-2/credit_card_logos_26.gif" width="302" height="45" border="0" /></a>
		<!--I used get idea for the footer this http://www.credit-card-logos.com/ web site-->
		</div>
	</div>
  </footer>
		
</body>

</html>