<!DOCTYPE html>
<html>

<head>
	<title>Add to local-offers/traveltime</title>
	<link rel="stylesheet" type = "text/css" href = "styles/styles.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

	<script src = "js/traveltime.js"></script>
</head>

<body>
	
	<image class = "logo" src = "images/logo.jpg"alt = "logo">
	
	<center>
	<h2>TravelTime</h2>
	<h3>Tourism and travel management system<h3>
	</center>
	<br>	<table  border="0" width="100%" bgcolor="#e8e8e8" class="table2" >
	<tr><td><br>
	
	<center>
		<h1>Ready to add new tours !</h1>
		<br>
		<h3>Local - offers</h3>
		<br><br>
		<table border = "2" width = "75%">
		<tr>
		<td>
		<center>
		<form class = "form-style-9" method="POST" action="submititems.php">
			Tour Name   : <input type="text" class="boxlog" name="t1" placeholder="Tour name"><br><br>
			Tour Code   :<input type="text" class="boxlog" name="t2" placeholder="Tour Code"><br><br>
			Tour Price  :<input type="text" class="boxlog" name="t3" placeholder="Price"><br><br>
			Description :<textarea name="t4" class="boxlog" placeholder="Description"></textarea><br><br><br>
			<input style="background-color:bb2233;" type="submit" value="Submit"><br><br>
		</form>
		</center>
		</td>
		</tr>
		</table>
	</center><br><br>
	
	</td></tr>
	</table>
	
	<br><br>
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