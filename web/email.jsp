
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%



String email=(String)application.getAttribute("email");
out.println(email);
String mypass = (String)application.getAttribute("pass");
out.println(mypass);

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="rits1379@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="ritesh13"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="shinderitesh@gmail.com"; //Email id of the recipient
//String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="Your password is ="+mypass+" ";


//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject("Password");
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent

}
catch (Exception err) 
{

out.println("message not successfully sended"); // assume it?s a fail
}
transport.close();

%>