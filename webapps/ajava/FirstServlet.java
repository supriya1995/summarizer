import javax.servlet.*;
import java.io.*;

public class FirstServlet extends GenericServlet
{
public void service(ServletRequest req,ServletResponse res) throws ServletException, IOException
{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
out.println("this is my first servlet");
}

}