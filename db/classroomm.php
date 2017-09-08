<?php
//session_start();
include('cnnctn.php');


//$tname = $_POST['name']; 
$day = $_POST['day'];
$time=$_POST['time'];
//$password = $_POST['password']; 

$class=$_POST['class'];
$query ="SELECT time FROM classroom WHERE day=$day AND name=$class" ;

        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		 //if($result)
	
       while($row = mysql_fetch_array($result)){
		  if($result!=$time)
					{
						echo "room  is available at desired time"
		  //echo "hhhh";
					}
	//header("Location:http://localhost/db/robotics.html");
		   
		   }
		  
           
									  


?>