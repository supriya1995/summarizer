<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	
	<jsp:useBean id="imp" class="mypack.DataImport" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
<%
String operate = request.getParameter("imp");
out.println(operate);
//if ("true".equals(operate)) {
out.println("check2");   
 imp.setRequest(request);
    imp.setTableName("btech");
    imp.setColumnNames(new String[]{"eno", "sub_1", "sub_2","sub_3", "year","ctype"});
try
{    
boolean a=imp.importdata();
if(a==true)
out.println("success.......");
else
out.println("fail........");
}
catch(Exception e)
{
out.println(e);
}
//}
%>
  </body>
</html>
