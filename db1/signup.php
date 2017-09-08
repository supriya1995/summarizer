

<?php
//session_start();
include('cnnctn.php');


$uid = $_POST['uid']; 
$pass = $_POST['pass'];
$type=$_POST['type'];
//$password = $_POST['password']; 


$query ="SELECT username,password FROM registration  WHERE username='$uid' AND password='$pass' AND type='$type'" ;

        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		 //if($result)
	
       $row = mysql_fetch_array($result);
		  if($row['password']==$pass)
		  
			{
	header("Location:http://localhost/db/student_info.html");
		   
		   }
		   
		   else
		   {echo "Enter correct password";
			   }
		  
           
									  


?>