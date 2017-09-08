import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ErrorServlet extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
out.println("<font color=red size=20>Invalid User name and pssword.......</font>");
}}