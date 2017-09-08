import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeServlet1 extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
HttpSession ses=req.getSession(false);
RequestDispatcher rd=null;
if(ses==null)
{
rd=req.getRequestDispatcher("login.html");
rd.forward(req,res);

}
else
{
//String n=(String) res.getAttribute("uid");
out.println("welcome user");
}
}

}