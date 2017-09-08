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
<div align="center" style="font-size:50px;">
<a href="btech_form.jsp">BTECH</a><br /><br /><br /><br />
<a href="mtech_form.jsp">MTECH</a>
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