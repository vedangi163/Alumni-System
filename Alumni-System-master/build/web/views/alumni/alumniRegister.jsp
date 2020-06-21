<%-- 
    Document   : create_course
    Created on : Jul 28, 2018, 10:49:53 PM
    Author     : sarvadnya
--%> 
<%@page import="beans.Alumni_data"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.min.css">
        <script src="../../assets/js/jquery1.min.js"></script>
        <script src="../../assets/js/bootstrap1.min.js"></script>
        <title>Alumni Register</title>
    </head> 
    <body>  
        <div class="container"> 
            <div class="row"> 
                <br>
              <%  try{ 
                if(!(request.getParameter("result").equals(null))){%>
            <div class="col-lg-8"> <p class="alert alert-success"><a href="#" class="close" data-dismiss="alert">&times;</a><%=request.getParameter("result")%></p></div>
            <%}}catch(Exception e){}%><br><br></div>
            
            
            
        <h1>Alumni Registration</h1> <hr> 
        <form action="../../controller/alumni/register.jsp" method="post">
           PR Number/Roll Number : <input type="text" name="prn" required oninvalid="this.setCustomValidity('PRN/Roll number is required.')"
                              oninput="this.setCustomValidity('')">
            <br><br> 
            Name : <input type="text" name="name" required oninvalid="this.setCustomValidity('Name is required.')"
                              oninput="this.setCustomValidity('')"> 
            <br><br>
            
            Password :<input type="password" name="password" required pattern=".{6,}" oninvalid="this.setCustomValidity('Password must be of 6 characters.')" oninput="this.setCustomValidity('')"> 
            <br><br>
            
            Date of Birth : <input type="date" name="dob" required> 
            <br><br> 
            
            Mobile Number : <input type="text" name="mobileNo" required pattern=".{10}" oninvalid="this.setCustomValidity('Mobile number must be of 10 characters.')" oninput="this.setCustomValidity('')">
            <br><br>
            
            Gender : <select name="gender" required oninvalid="this.setCustomValidity('Gender is required.')"
                oninput="this.setCustomValidity('')">
                        <option value="m">Male</option>
                        <option value="f">Female</option> 
                        <option value="o">Other</option>
            </select> 
            <br><br> 
            
            Email : <input type="email" size="25" name="email" required pattern="[^ @]+@[^ @]+\.[a-zA-z]{2,6}" oninvalid="this.setCustomValidity('Email is not in the proper format.')"
                    oninput="this.setCustomValidity('')">
            <br><br>
            
            Address : <input type="text" name="address" required oninvalid="this.setCustomValidity('Address is required.')"
                              oninput="this.setCustomValidity('')">
            <br><br>
            
            College : <select name="programme" required oninvalid="this.setCustomValidity('College is required.')"
                              oninput="this.setCustomValidity('')">
                        <option>CM</option> 
                        <option>IF</option>
                        <option>ME</option>
                        <option>EE</option>
                        <option>CE</option>
                        <option>PE</option>
                        <option>E&TC</option>
                        <option>DDGM</option>
                        <option>IDD</option>
                        <option>AE</option>
            </select>
            <br><br> 
            
            Admission Year : <select name="admissionYear" required oninvalid="this.setCustomValidity('Admission Year is required.')"
                              oninput="this.setCustomValidity('')">
                                <option>2017</option>
                                <option>2018</option>
                                <option>2019</option> 
                    </select>
            <br><br>
            
            Pass Out Year : <select name="passOutYear" required oninvalid="this.setCustomValidity('Pass Out Year is required.')"
                              oninput="this.setCustomValidity('')">
                                <option>2017</option>
                                <option>2018</option>
                                <option>2019</option> 
                    </select>
            <br><br>
            
            Department : <select name="department" required oninvalid="this.setCustomValidity('Term is required.')"
                              oninput="this.setCustomValidity('')">
                    <option>Chemistry</option>
                    <option>Management Studies</option>
            </select>
            <br><br>
            
            Programme : <select name="programme" required oninvalid="this.setCustomValidity('Term is required.')"
                              oninput="this.setCustomValidity('')">
                    <option>Master of Business</option>
                    <option>Master of Computer Applications</option>
            </select> 
            <br><hr>
            <button class="btn btn-primary">Submit</button> 
        </form> 
        </div> 
       <%@include file="../footer.jsp" %>
    </body>
    
</html> 
