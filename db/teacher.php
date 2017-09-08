
<?php
//session_start();
include('cnnctn.php');


$tname = $_POST['tname']; 
$day = $_POST['day'];
$time=$_POST['time'];*/
//$password = $_POST['password']; 


$query ="SELECT time FROM teacher t1, tech t2 WHERE t1.tid=t2.tid and t1.day=$day" ;

        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		 //if($result)
	
       while($row = mysql_fetch_array($result)){
		  if($result!=$time)
					{
						echo "teacher is available at desired time"
		  //echo "hhhh";
					}
	//header("Location:http://localhost/db/robotics.html");
		   
		   }
		  
           
									  


?>