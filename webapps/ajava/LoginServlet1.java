import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet1 extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
String uid=req.getParameter("uid");
String pass=req.getParameter("pass");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mydata?user=root&password=");
PreparedStatement ps=con.prepareStatement("select * from login where uid=? and pass=?");
ps.setString(1,uid);
ps.setString(2,pass);
ResultSet rs=ps.executeQuery();
RequestDispatcher rd=null;
if(rs.next())
{
rd=req.getRequestDispatcher("welcome");
}
else
{
rd=req.getRequestDispatcher("error");
}
rd.forward(req,res);
}
catch (Exception e)
{
out.println(e);
}
}

}