<%-- 
    Document   : LoginCheck
    Created on : 5 Apr, 2019, 6:41:13 PM
    Author     : Dell
--%>

<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   String x1 = request.getParameter("userbtn");
   String x2= request.getParameter("adminbtn");
   
    String user=request.getParameter("username"); 
   String pass=request.getParameter("password");
   
     String user2=request.getParameter("ad_username"); 
   String pass2=request.getParameter("ad_password");
    ResultSet RS=null;
   
%>
  <%
      Class.forName("com.mysql.jdbc.Driver");
     Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
     
      if(x1!=null && x1.equals("Submit1"))
   {

     PreparedStatement spmt=cnn.prepareStatement("select * from users where user_name=? AND user_pass=?");
                spmt.setString(1,user);
                spmt.setString(2,pass);
                 ResultSet rs=spmt.executeQuery();
                 RS=rs;
                  int x = 0;
                     while (RS.next()) {
                           if (RS.getString(2).equals(user) && RS.getString(3).equals(pass)) {
                                 x = 1;
                                  } else {
                                 x = 2;
                           }
                     }
                    
                           if(x==1)
                     {
                        HttpSession s = request.getSession();
                           out.println("<center><h1>Welcome: " + user + "</h1>");
                           out.println("<br/><b>You are successfully logged in.. ");
                          out.print("<a href='AfterLogin.jsp?p1="+user+"'>Click here to go to Home page</a>");

                        // response.sendRedirect("AfterLogin.jsp");
//                      session.setAttribute("LoginCheck", user);
//                          response.sendRedirect("AfterLogin.jsp");
//
//                           
                           
                           
                          
                     }
                     else {
                         out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");
                           out.print("<a href='HomePage.jsp'>Click here to go Back</a>");
                       
                          
                          }
                     
   }
      else if(x2!=null && x2.equals("Submit2"))
      {
            PreparedStatement spmt=cnn.prepareStatement("select * from admins where admin_name=? AND admin_pass=?");
                spmt.setString(1,user2);
                spmt.setString(2,pass2);
                 ResultSet rs=spmt.executeQuery();
                 RS=rs;
                  int x = 0;
                     while (RS.next()) {
                           if (RS.getString(1).equals(user2) && RS.getString(2).equals(pass2)) {
                                 x = 1;
                                  } else {
                                 x = 2;
                           }
                     }
                     if(x==1)
                     {
                           HttpSession s = request.getSession();
                           out.println("<center><h1>Welcome ADMIN: " + user2 + "</h1>");
                           out.println("<br/><b>You are successfully login........ ");
                             out.print("<a href='AfterAdminLogin.jsp?p1="+user2+"'>Click here to go to Admin Page</a>");
                             


%>
                           
                            <%
                     }
                     else {
                         out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");
  out.print("<a href='HomePage.jsp'>Click here to go to Back</a>");
                      
                          }
      }
                
               
//          
          
//             
//                  int x = 0;
//                   while (RS.next()) {
//
//            if (RS.getString(2).equals(user) && RS.getString(3).equals(pass)) {
//
//                x = 1;
//
//            } else {
//
//                x = 2;
//
//            }
//
//        }
                  
%>


    
    
 
<%




                  
//              if(rs.next())
//  {
//
//   String dbusername=rs.getString("user_name");
//   String dbpassword=rs.getString("user_pass");
//   
//   if(user.equals(dbusername) && pass.equals(dbpassword))
//   {
//     session.setAttribute("login",dbusername); //session name is login and store fetchable database email address
//     response.sendRedirect("AfterLogin.jsp"); //after login success redirect to welcome.jsp page
//   }
//
//  }
//  else
//  {
//    request.setAttribute("errorMsg","invalid email or password"); //invalid error message for email or password wrong
//  }
//              



//this is another


//session.setAttribute("login",userId); //session name is login and store fetchable database email address
//response.sendRedirect("AfterLogin.jsp"); //after login success redirect to welcome.jsp page
//



        %>
                
                
                
                
  