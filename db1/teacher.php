<?php
//session_start();
include('cnnctn.php');


$tname= $_POST['tname']; 
$day = $_POST['day'];
$time=$_POST['time'];
//$password = $_POST['password']; 

$query1="SELECT tid FROM tech where tname='$tname'";
 $result1=mysql_query($query1);
 $row1=mysql_fetch_array($result1);
 $t= $row1['tid'];
$query ="SELECT timings  FROM teacher WHERE  tid='$t' AND day='$day' " ;
//$query="SELECT timings FROM teacher t1,tech t2 WHERE t2.tname='$tname' AND t1.tid=t2.tid

        $result = mysql_query($query);
			
		
       $row = mysql_fetch_array($result);
	   	$tr=$row['timings'];
		 if($tr==$time)
		 {?>
         <html>
         <body background="a3.jpg">
         <font size="+3" color="#FF0000">
         Teacher is  not free
         </font>
         <A HREF="stu_teach_tt.html"></a>
         </body>
         </html>
         <?php
		 
			// echo "teacher is not free";
		 }
		 else
		 {?>
         <html>
         <body background="a3.jpg">
         <font size="+3" color="#FF0000">
         Teacher is free
         </font>
         <A HREF="slot2.html"><img src="button2.jpg" ></a>
         </body>
         </html>
         <?php
		 
			// echo "teacher is free";
		 }
		  //echo "hhhh";
	//echo $row[''];
	//header("Location:http://localhost/db/student_info.html");
		   
?>