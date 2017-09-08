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
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
PreparedStatement ps=con.prepareStatement
("select * from student1");
ResultSet rs=ps.executeQuery();
%>
<table border="1" align="center" style="color:#FFF;">
<tr>
<th>
Enrollment Number
</th>
<th>
Student Name
</th>
<th>
Father's Name
</th>
<th>
Contact
</th>
<th>
Address
</th>
<th>
Year
</th>
<th>
Course
</th>
<th>
Email-ID
</th>
<th>
DOA
</th>
<th>
DOB
</th>
<th>
Gender
</th>
<th>
CHANGES
</th>
</tr>
<%
while(rs.next())
{
	String email=rs.getString(8);
%>
<tr>
<td>
<%=rs.getInt(1)%>
</td>
<td>
<%=rs.getString(2)%>
</td>
<td>
<%=rs.getString(3)%>
</td>
<td>
<%=rs.getString(4)%>
</td>
<td>
<%=rs.getString(5)%>
</td>
<td>
<%=rs.getString(6)%>
</td>
<td>
<%=rs.getString(7)%>
</td>
<td>
<%=rs.getString(8)%>
</td>
<td>
<%=rs.getString(9)%>
</td>
<td>
<%=rs.getString(10)%>
</td>
<td>
<%=rs.getString(11)%>
</td>
<td>
<%
out.println("<a href='edit.jsp'>EDIT</a>");
out.println("<a href='delete.jsp?eno="+rs.getInt(1)+"'>DELETE</a>");
out.println("<a href='mail_form.jsp?email="+email+"'>EMAIL</a>");
%>
</td>
</tr>
<%	
}
%>
     </table>
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