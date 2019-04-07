<%-- 
    Document   : index
    Created on : 5 Apr, 2019, 3:18:57 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%Class.forName("com.mysql.jdbc.Driver");
                Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal?","root","");
                PreparedStatement spmt=cnn.prepareStatement("Select * from tbladmin");
                ResultSet rs=spmt.executeQuery();
                 while(rs.next())
             {
                 
                 out.println(rs.getString(1)+"<br>");
                 out.println(rs.getString(2)+"<br>");
                 out.println(rs.getString(3)+"<br>");
                 out.println(rs.getString(4)+"<br>");
                out.print("<br>");
                 out.println(rs.getString(5)+"<br>");                 
             }
                %>
        <h1>Hello World!</h1>
    </body>
</html>
