<?php session_start(); //start the session

	include_once 'config.php'; //include the config file

	if(isset($_POST['logout'])){ //log out
		session_destroy();
		header('Location: Home.html');
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
	
	</br>
	
	<image class = "logo" src = "images/logo.jpg"alt = "logo">
	
	<center>
	<h2>TravelTime</h2>
	<h3>Tourism and travel management system<h3>
	</center>
	

	<ul class="menu">
		<li class = "menu1" ><a href = "userAccountPage.php">User Profile</a></li>
		<li class = "menu1"><a href = "userOrder.html">Your Order</a></li>
		<li class = "menu1"><a href = "userAlerts.html">Alerts</a></li>
		
		
	</ul>
	</div>
	
	
	<center>
	
	<form method="post" action="#">
	<div class="productData" style="border-style:groove; border-color=dark-blue;">
	<table width="80%">
		<tr>
		<td>
		<?php
			
			echo "<center><h1>User Profile</h1></center><br><br>"; //display the data base details
			
			echo "<center><table border='1' width='100%'><tr><td><h4>First Name : ".$_SESSION['first_name']."</h4></td>";
			echo "<td><h4>Last Name : ".$_SESSION['Last_Name']."</h4></td></tr>";
			echo "<tr><td><h4>Date Of Birth : ".$_SESSION['DOB']."</h4></td>";
			echo "<td><h4>Mobile Number : ".$_SESSION['Mobile_Number']."</h4></td></tr>";
			echo "<tr><td><h4>Email : ".$_SESSION['Email']."</h4></td>";
			echo "<td><h4>Password : ".$_SESSION['Password']."</h4></td></table></center>";
		
		?>
		
		<input type="submit" name="logout" class="button button1" value="Log Out"><br>
		
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