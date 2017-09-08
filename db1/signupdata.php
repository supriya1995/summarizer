<?php 
//session_start();
include('cnnctn.php');


$username = $_POST['name1']; 
$email = $_POST['email'];
//$password = $_POST['password']; 


$query ="INSERT INTO registration (username,password) VALUES ('$username','$email')";


        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		
       if($result)
		{   echo "hhhh";

            //header("Location:http://localhost/db/categ.php");
        }


?>


