<?php

	include_once 'config.php';

?>

<?php 
	
	$firstName = $_POST["signup1"];
	$lastName = $_POST["signup2"];
	$birthDay = $_POST["signup3"];
	$mobileNumber = $_POST["signup4"];
	$email = $_POST["signup5"];
	$password = $_POST["signup6"];
	
	$signupsql = "insert into account(Signup_ID,FirstName,Last_Name,DOB,Mobile_Number,Email,Password)values ('','$firstName','$lastName','$birthDay','$mobileNumber','$email','$password')";
	
	if(mysqli_query($conn,$signupsql)){
		echo "<script> alert('Your Sign Up Completed'); window.location='userLogin.html'</script>";
		header('Location: userLogin.php');
	}else {
		echo "<script>Faile the Sign Up</script>";
	}
	
	mysqli_close($conn);
?>