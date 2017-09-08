<%@page import="java.sql.*"%>
<%
int enroll=Integer.parseInt(request.getParameter("value1"));
String year,course,semtype;
year=request.getParameter("value2");
course=request.getParameter("value3");
semtype=request.getParameter("value4");


try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
PreparedStatement ps=con.prepareStatement
("select * from "+course+" where eno=? and year=? and ctype=?");
ps.setInt(1,enroll);
ps.setString(2,year);
ps.setString(3,semtype);
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
    <%=rs.getInt(1)%>
    </td>
    </tr>
    <tr>
    <td>
    PHYSICS
    </td>
    <td>
    <%=rs.getString(2)%>
    </td>
    </tr>
    <tr>
    <td>
    CHEMISTRY
    </td>
    <td>
    <%=rs.getString(3)%>
    </td>
    </tr>
    <tr>
    <td>
    MATHS
    </td>
    <td>
    <%=rs.getString(4)%>
    </td>
    </tr>
    <tr>
    <td>
   YEAR
    </td>
    <td>
    <%=rs.getString(5)%>
    </td>
    </tr>
    <tr>
    <td>
    SEMESTER TYPE
    </td>
    <td>
    <%=rs.getString(6)%>
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