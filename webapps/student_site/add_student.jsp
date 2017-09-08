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
	try
	{
	int eno;
	String sname,fname,contact,address,year,course,email,doa,dob,gender;

eno=Integer.parseInt(request.getParameter("eno"));
sname=request.getParameter("sname");
fname=request.getParameter("fname");
contact=request.getParameter("cno");
address=request.getParameter("address");
year=request.getParameter("year");
course=request.getParameter("course");
email=request.getParameter("email");
doa=request.getParameter("doa");
dob=request.getParameter("dob");
gender=request.getParameter("gen");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
PreparedStatement ps=con.prepareStatement
("insert into student1 values (?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1,eno);
ps.setString(2,sname);
ps.setString(3,fname);
ps.setString(4,contact);
ps.setString(5,address);
ps.setString(6,year);
ps.setString(7,course);
ps.setString(8,email);
ps.setString(9,doa);
ps.setString(10,dob);
ps.setString(11,gender);
int a=ps.executeUpdate();
if(a==1)
{
//	out.println("Record Added");
response.sendRedirect("add_form.jsp?msg=Record Added");
}
else
{
	out.println("record not added...");
}
	}
	catch(Exception e)
	{
	out.println(e);	
	}
}
%>