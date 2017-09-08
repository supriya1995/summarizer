
<%@page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String pass=request.getParameter("pass");
String type=request.getParameter("type");

try
{Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mydata?user=root&password=");
PreparedStatement ps=con.prepareStatement("select * from login where uid=? and pass=? and type=?");
ps.setString(1,uid);
ps.setString(2,pass);
ps.setString(3,type);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
%>
<jsp:forward page="welcome.jsp"/>
<%

	
	}
else
{
	%>
    
	<font color="red" size="20">INVALID USER NAME AND PASSWRORD</FONT>
<jsp:include page="form_login.html"/>

	
	<%
	
    
    }
}
catch(Exception e)
{}

%>
