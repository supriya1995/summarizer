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
<link href="date/jquery-ui.min.css" rel="stylesheet" />
<script src="date/jquery-1.11.3.min.js"></script>
<script src="date/jquery-ui.min.js"></script>
	   <script>
		$(document).ready(function ()
		{
			$("#d1").datepicker
			({
			 //dateFormat:"dd/mm/yy"
			 dateFormat:"dd/MM/yy"
			 });
			$("#d2").datepicker
			({
			 dateFormat:"dd/MM/yy"
			 });	
		});
		</script>
         <!-- end of featured project -->
        <div style="background-color:#FFF;" align="center">
        <%
		String msg=request.getParameter("msg");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
PreparedStatement ps=con.prepareStatement
("select max(eno) from student1");
ResultSet rs=ps.executeQuery();
rs.next();
int eno=rs.getInt(1);
eno++;
		%>
        <div style="color:red; font-size:25px;">
        <%
		if(msg!=null)
		{
		out.println(msg);
		}
		%>
        </div>
        <form method="get" action="add_student.jsp">
        <table border="0" align="center" width="80%" height="400px">
        <tr>
        <td>
        Student Enrollment Number 
        </td>
        <td>
        <%=eno%>
<input type="hidden" name="eno" value="<%=eno%>" />
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Name 
        </td>
        <td>
        <input type="text" name="sname" />
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Father's Name 
        </td>
        <td>
        <input type="text" name="fname" />
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Contact Number 
        </td>
        <td>
  <input type="text" name="cno" maxlength="10" />
        </td>
        </tr>
  <tr>
        <td>
        Enter Student Address 
        </td>
        <td>
 	<textarea rows="3" cols="20" name="address" style="resize:none;"></textarea>
        </td>
        </tr>
              <tr>
        <td>
       Select Year 
        </td>
        <td>
        <select name="year">
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
       Select Course
        </td>
        <td>
        <select name="course">
        <option>Select Course</option>
        <option value="btech">B.TECH</option>
        <option value="mtech">M.TECH</option>
        <option value="bba">BBA</option>
        <option value="bca">BCA</option>
        <option value="mca">MCA</option> 
        </select>
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Email-ID
        </td>
        <td>
        <input type="text" name="email" />
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Date of Admission
        </td>
        <td>
        <input type="text" name="doa" id="d1" />
        </td>
        </tr>
        <tr>
        <td>
        Enter Student Date of Birth
        </td>
        <td>
        <input type="text" name="dob" id="d2" />
        </td>
        </tr>
        <tr>
		<td>
        Select Gender
        </td>
        <td>
        <input type="radio" name="gen" value="male" />MALE
        <input type="radio" name="gen" value="female" />FEMALE
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <input type="submit" value="ADD RECORD" />
        </td>
        </tr>
        </table>
        </form>
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