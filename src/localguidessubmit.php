<?php
	include_once 'config.php' 
?>

<?php
	$name = $_POST["g1"];
	$age = $_POST["g2"];
	$price = $_POST["g3"];
	
	
	$sql = "insert into localguides(Guider_id,Guider_name,Hire_price,age) values('','$name','$price','$age')"; 

	if(mysqli_query($conn,$sql))
	{
		//echo "<script>alert('successfully uploaded !')</script>";
		header("Location:localguides.php");
	}
	else
	{
		echo "<script>alert('unsuccessfully !')</script>";
	}
	
	mysqli_close($conn);
	
?>