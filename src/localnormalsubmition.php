<?php
	include_once 'config.php' 
?>

<?php
	$name = $_POST["t1"];
	$code = $_POST["t2"];
	$price = $_POST["t3"];
	$desc = $_POST["t4"];
	
	$sql = "insert into localnormal(Tour_id,Name,Tour_code,Price,Descriptiom) values('','$name','$code','$price','$desc')"; 

	if(mysqli_query($conn,$sql))
	{
		//echo "<script>alert('successfully uploaded !')</script>";
		header("Location:localnormal.php");
	}
	else
	{
		echo "<script>alert('unsuccessfully !')</script>";
	}
	
	mysqli_close($conn);
	
?>