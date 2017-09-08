<%@page import="java.sql.*"%>
<%
int enroll=Integer.parseInt(request.getParameter("value1"));
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
PreparedStatement ps=con.prepareStatement
("select * from student1 where eno=?");
ps.setInt(1,enroll);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	%>
    <table border="1" align="center">
    <tr>
    <td>
    Student Enrollment Number 
    </td>
    <td>
    <input type="text" value="<%=rs.getInt(1)%>" name="enroll">
    </td>
    </tr>
    <tr>
    <td>
    Student Name
    </td>
    <td>
    <input type="text" value="<%=rs.getString(2)%>" name="sname">
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    <input type="button" value="UPDATE">
    </td>
    </tr>
    </table>
    <%
}
else
{
out.println(" No data found");	
}
}
catch(Exception e)
{
out.println(e);	
}
%>