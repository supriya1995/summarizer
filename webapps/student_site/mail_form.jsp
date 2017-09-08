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
//	out.println(x);
%>
<jsp:include page="admin_header.jsp"/>
         <!-- end of featured project -->

<div align="center">
<%
String email=request.getParameter("email");
%>
<form method="post" action="mail.jsp">
<table border="1" align="center" style="color:#FFF;">
<tr>
<td>
Student Email-ID
</td>
<td>
<input type="text" name="email" value="<%=email%>" />
</td>
</tr>
<tr>
<td>
Enter the subject
</td>
<td>
<input type="text" name="sub" />
</td>
</tr>
<tr>
<td colspan="2" >
Enter your message
</td>
</tr>
<tr>
<td colspan="2">
<textarea name="msg" rows="5" cols="30">
</textarea>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="SEND" />
</td>
</tr>
</table>
</form>
</div>


         <!-- end of content -->
    
    </div> <!-- end of content -->
	
    <div class="cleaner"></div>    
</div> <!-- end of wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">

        <a href="index.html">Home</a> | <a href="about.html">About Us</a> | <a href="services.html">Services</a> | <a href="gallery.html">Gallery</a> | <a href="contact.html">Contact</a> <br /><br />
        
        Copyright © 2048 <a href="#">Company Name</a> - Design: <a href="http://www.tooplate.com">tooplate</a>
		
    </div>
</div>

</body>
</html>
<%
}
%>