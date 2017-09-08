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
<jsp:include page="student_header.jsp"/>
        <div align="center" style="color:white;">
        <script type="text/javascript">
var request;
function showMarks()
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
var b=document.ff1.yy.value;
var c=document.ff1.course.value;
var d=document.ff1.semtype.value;
var url="student_marks.jsp?value1="+a+"&value2="+b+"&value3="+c+"&value4="+d;
try  
{  
request.onreadystatechange=getMarks;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}

}

function getMarks()
{
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('marks').innerHTML=val;  
}  
}


</script>
<form name="ff1">
        <table align="center">
        <tr>
        <td>
        Enter Student Enrollment Number
        </td>
        <td>
        <input type="text" name="enroll" />
        </td>
        </tr>
        <tr>
        <td>
        Select Student Year
        </td>
       	<td>
        <select name="yy">
        <option>Select Year</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        </select>
        </td>
        </tr>
        <tr>
        <td>
        Select Student Course
        </td>
       	<td>
        <select name="course">
        <option>Select Course</option>
        <option value="btech">B.TECH</option>
        <option value="mtech">M.TECH</option>
        <option value="bba">BBA</option>
        <option value="mca">MCA</option>
        </select>
        </td>
        </tr>
        <tr>
        <td>
        Select Student Semester Type
        </td>
       	<td>
        <select name="semtype">
        <option>Select Semester Type</option>
        <option>Internal 1</option>
        <option>Internal 2</option>
        <option>External</option>
        </select>
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <input type="button" value="Show Marks" onclick="showMarks()" />
        </td>
        </tr>
        </table>
        </form>
        </div>
        <div align="center" style="color:white;" id="marks">
        
        </div>
        
         <!-- end of featured project -->
        
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