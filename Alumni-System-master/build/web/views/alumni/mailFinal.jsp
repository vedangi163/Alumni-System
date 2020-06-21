<%-- 
    Document   : mailContro
    Created on : Jan 7, 2020, 9:46:38 PM
    Author     : Shubham Nehe
--%>

<%@page import="javax.mail.PasswordAuthentication"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,javax.mail.*"%> 
<%@ page import="javax.mail.internet.*" %>

<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");
    out.print("\n\nTO = "+to);
    
    final String subject = request.getParameter("sub");

    final String messg = request.getParameter("mess");

 

    // Sender's email ID and password needs to be mentioned

    final String from = "utkarshan177@gmail.com";

    final String pass = "DemoCall(12345)";

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

    /*mail.defaultEncoding=UTF-8
mail.smtp.auth=true
mail.smtp.starttls.required=true
mail.smtp.starttls.enable=true
mail.smtp.socketFactory.class=javax.net.ssl.SSLSocketFactory
mail.smtp.socketFactory.fallback=false
mail.smtp.port=465
mail.smtp.socketFactory.port=465*/
 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);
        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message
        out.print("\nNow SENDING\n");
        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) { 

        out.print("\n\n\n\n\n\nNEW ERROR\n\n\n\n\n"+mex);
        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>

<title>Sending Mail in JSP</title>

<h1><center><font color="blue">Sending Mail Using JSP</font></h1>

<b><center><font color="red"><% out.println(result);%></b>
    </body>
</html> 
