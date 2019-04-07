<%-- 
    Document   : Logout
    Created on : 5 Apr, 2019, 7:33:13 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT PAGE</title> 
    </head> 
    <body> 
        <% session.removeAttribute("username"); session.removeAttribute("password"); session.invalidate(); %> 
    <center><h2 style="color:red">Logout was done successfully. THANK YOU !</h1> <br>
    <br>
    <a href="HomePage.jsp">Click Here</a></center>
    </body> 
</html>