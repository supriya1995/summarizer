import javax.servlet.*;
import java.sql.*;
import java.io.*;
import javax.servlet.http.*;

public class AddRecordServlet extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
int empno=Integer.parseInt(req.getParameter("t1"));
String empname=req.getParameter("t2");
String dname=req.getParameter("t3");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mydata?user=root&password=");
PreparedStatement ps=con.prepareStatement("insert into employee values(?,?,?)");
ps.setInt(1,empno);
ps.setString(2,empname);
ps.setString(3,dname);
int a=ps.executeUpdate();
if(a==1)
out.println("Record added");
else
out.println("record not added");
}
catch(Exception e)
{
out.println(e);
}
}
} 