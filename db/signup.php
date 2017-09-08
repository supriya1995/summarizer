


<?php 
//session_start();
include('cnnctn.php');


$uid = $_POST['uid']; 
$pass = $_POST['pass'];
$type = $_POST['type'];
//$password = $_POST['password']; 


$query ="INSERT INTO table1 (uid,pass,type) VALUES ('$uid','$pass', '$type')";


        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		
       if($result)
		{   echo "hhhh";

            //header("Location:http://localhost/db/categ.php");
        }


?>

