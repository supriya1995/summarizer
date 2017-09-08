<%@page import="java.util.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%
String tomail=request.getParameter("email");
String frommail="iactmzn@gmail.com";
String mes=request.getParameter("msg");
    String host = "smtp.gmail.com";
    String username = "iactmzn";
    String password = "nitaihacs";
    String to =tomail;
    String from = frommail;
    Properties props = new Properties();
    props.put("mail.smtps.auth", "true"); 
    props.put("mail.smtps.host", host);
    Session ss = Session.getDefaultInstance(props);
    MimeMessage msg = new MimeMessage(ss);
    msg.setSubject("trail mail");
    msg.setText(mes);
    msg.setFrom(new InternetAddress(from));
    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    Transport t = ss.getTransport("smtps");
    try {
	t.connect(host, username, password);
	t.sendMessage(msg, msg.getAllRecipients());
out.println("successfull");
    } finally {
	t.close();
    }
%>
