<%-- 
    Document   : register
    Created on : 8 Mar, 2018, 3:19:09 AM
    Author     : ADMIN
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="registerpage.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESUME MAKER</title>
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
            <%Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/database_ex","root","");
//            Statement s=c.createStatement();
//             ResultSet rs=s.executeQuery("select * from res_usr");
//            PreparedStatement ps=c.prepareStatement("insert into res_usr  values (?,?,?,?,?);");%>
        <h1>Please fill out your details</h1><hr><br><br>
        <form  name="f1" action="newjsp.jsp" onsubmit="return validate()" method="post">
            <div class="grid-make">
                <div class="grid-1">
                    First Name:<br><br>
                    Last Name:<br><br>
                    Email id:<br><br>
                    Password:<br><br>
                    Confirm Password:<br><br>
                    Date of Birth:<br><br>
                </div>  
                
                <div>
                    <input type="text" placeholder="Enter your first name" name="fname"/><br><br>
                    <input type="text" placeholder="Enter your last name" name="lname"/><br><br>
                    <input type="email" placeholder="Enter your E-mail id" name="id"/><br><br>
                    <input type="password" placeholder="Enter your password" name="pass1"/><br><br>
                    <input type="password" placeholder="Re-enter your password" name="pass2"/><br><br>
                    <input type="date" name="dob"/><br>
                </div>
            </div>
        <input type="submit" value="Get Started"/>
        </form>
        <p id="demo"></p>
        <script>
            function validate(){
                var a=document.f1.name.value;
                var b=document.f1.pass1.value;
                var c=document.f1.pass2.value;
                var d=document.f1.dob.value;
                var e=document.f1.id.value;

                if(a == "" || b == "" || c == "" || d == "" || e== "")
                { 
                    document.getElementById("demo").innerHTML="Please enter all the fields";
                    return false;
                }    
                if(a == "admin")
                {
                    document.getElementById("demo").innerHTML="admin";
                    return false;
                }
                
                if(b != c)
                {
                    document.getElementById("demo").innerHTML="Passwords do not match";
                    return false;
                }
                while(rs.next())
                String s=rs.getString(3);
                {
                    if(e.equals(s))
                    {
                        document.getElementById("demo").innerHTML="same";
                    return false;
                    }
                }
            }
        </script>
        
    </body>
</html>
