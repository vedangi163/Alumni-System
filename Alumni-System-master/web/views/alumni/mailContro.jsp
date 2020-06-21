<%-- 
    Document   : mailContro
    Created on : Jan 7, 2020, 9:46:38 PM
    Author     : Shubham Nehe
--%>

<%@page import="javax.activation.DataHandler"%>
<%@page import="javax.activation.FileDataSource"%>
<%@page import="javax.activation.DataSource"%>
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

    
    String[] r=new String[2];
    r[0]="sidhargunani@gmail.com";
    r[1]="techlovers123456@gmail.com";
    
    final String subject = request.getParameter("subject");

    final String messg = request.getParameter("body");

    // Sender's email ID and password needs to be mentioned

    final String from = "utkarshan177@gmail.com";

    final String pass = "utkarsha@123";

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
    
    props.put("mail.smtp.port", "465");
    
    props.put("mail.smtp.socketFactory.port", "465");

    props.put("mail.defaultEncoding", "UTF-8");
    
    props.put("mail.smtp.starttls.required", "true");
    
    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    
    props.put("mail.smtp.socketFactory.fallback", "false");
  
 

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
            
        for(int i=0;i<2;i++)
        {
            message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(r[i]));
        }
             BodyPart messageBodyPart2 = new MimeBodyPart();
             String filename = "attachment.txt";
            DataSource source = new FileDataSource(filename);   
            messageBodyPart2.setDataHandler(new DataHandler(source));   
            messageBodyPart2.setFileName(filename); 
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
        <%
        response.sendRedirect("searchAlumni.jsp");
        %>
    </body>
</html> 
