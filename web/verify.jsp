<%-- 
    Document   : verify
    Created on : 7 Apr, 2019, 1:49:21 AM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
      //int id = Integer.parseInt(request.getParameter("id"));
      Class.forName("com.mysql.jdbc.Driver");
     Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
    // String sql="update users_post set verification='verified' where post_id =?";
      PreparedStatement spmt=cnn.prepareStatement("update users_post set verification='verified' where post_id =?");
      spmt.setInt(1,1);
      int  rs2=spmt.executeUpdate();
      int x=0;


  if(rs2!=0)
                     {
                        HttpSession s = request.getSession();
                          response.sendRedirect("AfterAdminLogin.jsp");
                     }
  else{
      out.println("<br/><b>Couldn't Verify. Sorry ");
  }
     
     %>
     
     
     
     
     
     
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
