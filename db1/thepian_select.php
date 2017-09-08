
<html>
<body background="images/tumblr-background-bw.jpg">
</body>
</html>


<?php
//session_start();
include('cnnctn.php');


/*$uid = $_POST['uid']; 
$pass = $_POST['pass'];
$type=$_POST['type'];*/
//$password = $_POST['password']; 


$query ="SELECT hubid,hubname,mem_id,achievements,sitelink FROM hubs WHERE hubname='the thespian circle'" ;

        $result = mysql_query($query);
		//$query1="SELECT uid FROM log WHERE email='$email'";
		//$res = mysql_query($query1);
		
		//echo $res;
		 //if($result)
	
       while($row = mysql_fetch_array($result)){ ?>
		   <html>
       <body>
       <table  align="center" bgcolor="#CC9933" border="1" bordercolor="#0000FF">
      
       <tr>
       <td>
       
       <font color="#000033" size="+4">
		<?php echo  $row['hubname']?>  
        </font>
        </td>
        <td>
        <font color="#000033" size="+4">
       <?php echo $row['hubid']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo $row['mem_id']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo  $row['sitelink']?>
       </font>
       </td>
       <td>
       <font color="#000033" size="+4">
       <?php echo $row['achievements']?>
       </font>
       </td>
        </tr> 
        </table>
        <?php
									  
		  
									  
		  //echo "hhhh";
	/*echo $row['hubname'];
	echo $row['hubid'];
	echo $row['mem_id'];
	echo $row['sitelink'];
	echo $row['achievements'];
	//header("Location:http://localhost/db/robotics.html");*/
		   
		   }
		  
           
									  


?>