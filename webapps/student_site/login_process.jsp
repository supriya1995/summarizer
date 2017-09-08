<%@page import="java.sql.*"%>
<%
try
{
String uid,pass,type;
uid=request.getParameter("name");
pass=request.getParameter("password");
type=request.getParameter("type");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/mydata?user=root&password=");
PreparedStatement ps=con.prepareStatement
("select * from login where uid=? and pass=? and type=?");

ps.setString(1,uid);
ps.setString(2,pass);
ps.setString(3,type);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	session.setAttribute("u",uid);
	if(type.equals("admin"))
	{
  	response.sendRedirect("admin_welcome.jsp");
	}
	else if(type.equals("student"))
	{
	response.sendRedirect("student_welcome.jsp");
	}
	else
	{
	out.println("\n please select your type");	
	}
}
else
{
	%>
 <div align="center" style="font-family:'Comic Sans MS', cursive;">
    <font color="white" size="7">
    <%
	out.println("Invalid Username or Password");
	%>
    </font>
    </div>
    <jsp:include page="form_login.jsp" />
    <%
}
}
catch(Exception e)
{
out.println(e);	
}
%>