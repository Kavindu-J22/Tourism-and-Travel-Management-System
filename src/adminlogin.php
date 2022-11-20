<?php

	include_once 'config.php'; //include the config file
	session_start(); 
?>
<?php

	if(isset($_POST['submit'])){
		
		$errors = array();
		
		if(!isset($_POST['uname']) || strlen(trim($_POST['uname'])) < 1 ){  //chach the user input have any errors
			
			$errors[] = "User Name Is Missing / Invalid";
			
		}if(!isset($_POST['password']) || strlen(trim($_POST['password'])) < 1 ){
			
			$errors[] = "Password Is Missing / Invalid";
			
		}if(!isset($_POST['cid']) || strlen(trim($_POST['cid'])) < 1 ){
			
			$errors[] = "Complany ID Is Missing / Invalid";
			
		}
		
		if(empty($errors)){
			
			$nme = mysqli_real_escape_string($conn ,$_POST['uname']);
			$pwrd = mysqli_real_escape_string($conn,$_POST['password']);
			$cd = mysqli_real_escape_string($conn,$_POST['cid']);
			
			
		$query = "select * from admin_table where User_Name = '{$nme}' AND Password = '{$pwrd}' AND User_ID = '{$cd}' limit 1"; //get to the details in the data base
			
			$result_set = mysqli_query($conn,$query);
			
			if($result_set) {
				
				if(mysqli_num_rows($result_set) == 1){
					
					$user= mysqli_fetch_assoc($result_set);  //stroe the data base details to the variables
					$_SESSION['user_name'] = $user['User_Name'];
					$_SESSION['uid'] = $user['User_ID'];
					$_SESSION['up'] = $user['User_Position'];
					$_SESSION['age'] = $user['Age'];
					$_SESSION['dob'] = $user['DOB'];
					$_SESSION['email'] = $user['Email'];
					$_SESSION['mb'] = $user['Mobile_Number'];
					$_SESSION['nic'] = $user['NIC'];
					$_SESSION['in'] = $user['Income'];
					$_SESSION['pw'] = $user['Password'];
					
					header('Location: adminaccount.php');
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
	
	<br>
	<br> 
	
	<a href="Home.html" class="inlinethepages">Home  </a><br><br>
	
	
	<table  border="0" width="100%" bgcolor="#e8e8e8" class="table2" >
	<tr><td><br>
	
	<form action="#" method="post">
	<center>
	<table width="60%" border="1"> 
	<tr><td>
	
	 <center><h1><b> Admin Login </b></h1><br><br>
	 
	 
	 	<?php 
			if(isset($errors) && !empty($errors)){
				
				echo "<p> Invalid Username / Password / Company ID </p>";
			}?>
			
			
	 <h3>User Name : </h3>
	 <input type="text" name="uname" class="boxlog" required><br><br>
	 
	 <h3> Password : </h3>
	 <input type="password" name="password" class="boxlog" placeholder="*******"required><br><br>
	 
	 <h3> Company ID : </h3>
	 <input type="password" name="cid" class="boxlog" placeholder="********"required><br><br>

	 <input class="button" type="submit" name="submit" value="Login" ><br><br><br></center>
	 
	 </div>
	</center>
	</form>
	</td></tr>
	</table>
	<br><br>
	
	</center>
	
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