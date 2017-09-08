<html>
<body background="images/slide9.jpg">
</body>
</html>


<?php
//session_start();
include('cnnctn.php');


/*$uid = $_POST['uid']; 
$pass = $_POST['pass'];
$type=$_POST['type'];
//$password = $_POST['password'];*/ 


$query ="SELECT day,batch,room,timings,subject FROM student_tt" ;

        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		 //if($result)
		 ?>
	<tr>
       <td>
       <font  color=""  size="+5">
       Time Table Of This Semester::
       </font>
       </td>
       </tr>
	   <?php
       while($row = mysql_fetch_array($result))
	   {?>
       <html>
       <body>
       <table  align="center" bgcolor="#CC9933" border="1" bordercolor="#0000FF">
      
       <tr>
       <td>
       
       <font color="#000033" size="+4">
		<?php echo $row['day']?>  
        </font>
        </td>
        <td>
        <font color="#000033" size="+4">
       <?php echo $row['batch']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo $row['room']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo $row['timings']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo $row['subject']?>
       </font>
       </td>
        </tr> 
        </table>
        <?php      //"batch=".."room=".."timings=".$row['timings']."subject=".$row['subject'];
	   }
           
									  


?>
