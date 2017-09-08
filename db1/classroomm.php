<?php
//session_start();
include('cnnctn.php');


$cname= $_POST['cname']; 
$day = $_POST['day'];
$time=$_POST['time'];
//$password = $_POST['password']; 

/*$query1="SELECT tid FROM tech where tname='$tname'";
 $result1=mysql_query($query1);
 $row1=mysql_fetch_array($result1);
 $t= $row1['tid'];*/
$query ="SELECT timings  FROM classro WHERE classroom='$cname'  AND  day='$day' " ;
//$query="SELECT timings FROM teacher t1,tech t2 WHERE t2.tname='$tname' AND t1.tid=t2.tid

        $result = mysql_query($query);
			
		
       $row = mysql_fetch_array($result);
	   	$tr=$row['timings'];
		 if($tr==$time)
		 {?>
         <html>
         <body background="a3.jpg">
         <font size="+3" color="#FF0000">
         Classroom is  not free
         </font>
         </body>
         </html>
         <?php
			 //echo "classroom is free is not free";
		 }
		 else
		 {?>
         <html>
         <body background="a3.jpg">
         <font size="+3" color="#FF0000">
         classroom is free
         </font>
         </body>
         </html>
         <?php
		 
			// echo "teacher is free";
		 }
		  //echo "hhhh";
	//echo $row[''];
	//header("Location:http://localhost/db/student_info.html");
		   
?>