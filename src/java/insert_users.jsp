<%-- 
    Document   : insert_users
    Created on : 5 Apr, 2019, 10:29:58 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
//String gender=request.getParameter("gender");

PreparedStatement pstatement = null;

   if( username.isEmpty() || password.isEmpty() || address.isEmpty() || email.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("register_1.jsp");
			req.include(request, response);
		}
   else{
             Class.forName("com.mysql.jdbc.Driver");
                Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
         //  Statement st=cnn.createStatement();
           
            String queryString = "INSERT INTO users(user_id,user_name,user_pass,user_address,user_phone,user_email,user_gender,user_image,user_total_post)" +"VALUES (?,?, ?, ?, ?, ?, ?, ?, ?)";
             pstatement = cnn.prepareStatement(queryString);
             pstatement.setString(2, username);
              pstatement.setString(3, password);
               pstatement.setString(4, address);
                pstatement.setInt(5, Integer.parseInt(contact));
                 pstatement.setString(6, email);
                  pstatement.setString(7, "gender");
                   pstatement.setString(8,"jpg");
                    pstatement.setInt(9,123);
                    
                    pstatement.executeUpdate();
                     
                              
            }  
            
            %>
            

       