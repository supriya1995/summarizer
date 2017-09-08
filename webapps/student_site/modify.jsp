<%@page import="java.sql.*"%>
<%
String x=(String)session.getAttribute("u");
if(x==null)
{
	%>
 <div align="center" style="font-family:'Comic Sans MS', cursive;">
    <font color="white" size="7">
    <%
	out.println("Session Expire");
	%>
    </font>
    </div>
    <jsp:include page="form_login.jsp" />
    <%	
}
else
{
//	out.println(x);
%>
<jsp:include page="admin_header.jsp"/>
         <!-- end of featured project -->
        <div align="center" style="color:#FFF;">
        <script type="text/javascript">
var request;
function showStudent()
{
	if(window.XMLHttpRequest)
{  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject)
{  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}
else
{
alert("browser does not support XMLHttpRequest");
return;
}
var a=document.ff1.enroll.value;
var url="show.jsp?value1="+a;
try  
{  
request.onreadystatechange=getStudent;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}

}

function getStudent()
{
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('show').innerHTML=val;  
}  
}


</script>
<form name="ff1">
        <table  align="center">
        <tr>
        <td>
        Enter Enrollment Number
        </td>
        <td>
        <input type="text" name="enroll" />
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <input type="button" value="Show Data" onclick="showStudent()" />
        </td>
        </tr>
        </table>
        </form>
        </div>
        <div align="center" style="color:#FFF;" id="show">
        
        </div>
         <!-- end of content -->
    
    </div> <!-- end of content -->
	
    <div class="cleaner"></div>    
</div> <!-- end of wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">

        <a href="index.html">Home</a> | <a href="about.html">About Us</a> | <a href="services.html">Services</a> | <a href="gallery.html">Gallery</a> | <a href="contact.html">Contact</a> <br /><br />
        
        Copyright © 2048 <a href="#">Company Name</a> - Design: <a href="http://www.tooplate.com">tooplate</a>
		
    </div>
</div>

</body>
</html>
<%
}
%>