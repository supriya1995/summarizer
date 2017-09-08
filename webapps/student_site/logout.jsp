<%
session.invalidate();
	%>
 <div align="center" style="font-family:'Comic Sans MS', cursive;">
    <font color="white" size="7">
    <%
	out.println("Logout Successfully");
	%>
    </font>
    </div>
    <jsp:include page="form_login.jsp" />