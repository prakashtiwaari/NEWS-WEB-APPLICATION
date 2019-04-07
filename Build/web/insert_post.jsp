<%-- 
    Document   : insert_post
    Created on : 6 Apr, 2019, 10:36:18 PM
    Author     : Dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--       <script>var text0 = document.getElementById('Heading').value; </script> 
       <script>var text01 = document.getElementById('description').value; </script> -->
<%
//    String name=request.getParameter("username");
//    String head=request.getParameter("Heading");
//    String desc=request.getParameter("description");
//    
//     Class.forName("com.mysql.jdbc.Driver");
//    Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
//  PreparedStatement spmt=cnn.prepareStatement("select * from users where user_name=?");
//                 spmt.setString(3,name);
//                 ResultSet rs=spmt.executeQuery();
//                int id=Integer.parseInt(rs.getString(2));
//  
////String description = ParamUtil.get(actionRequest, "descriptionHidden", StringPool.BLANK);
////String text=request.getParameter("Heading");
////String text2=request.getParameter("description");
//   // plain JavaScript
//
//
////StringBuffer text = new StringBuffer(request.getParameter("Heading"));
////
////        int loc = (new String(text)).indexOf('\n');
////        while(loc > 0){
////           text.replace(loc, loc+1, "<BR>");
////          loc = (new String(text)).indexOf('\n');
////      }
////       String str = text.toString();
//       //out.println(text); 
//       
//       
////       StringBuffer text2 = new StringBuffer(request.getParameter("description"));
////
////       int loc2 = (new String(text2)).indexOf('\n');
////        while(loc2 > 0){
////            text.replace(loc2, loc2+1, "<BR>");
////            loc2 = (new String(text2)).indexOf('\n');
////       }
////      // out.println(text); 
////      String str2 = text2.toString();
//      
//      
//      
//      
//
//PreparedStatement pstatement = null;
//
// 
//           //  Class.forName("com.mysql.jdbc.Driver");
//              //  Connection cnn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
//         //  Statement st=cnn.createStatement();
//           
//            String queryString = "INSERT INTO users_post(post_id,user_id,user_name,post_title,post_image,post_description,verification)" +"VALUES (?,?, ?, ?, ?, ?, ?)";
//             pstatement = cnn.prepareStatement(queryString);
//             pstatement.setInt(1, 0);
//             pstatement.setInt(2, id);
//              pstatement.setString(3, name);
//               pstatement.setString(4, head);
//                pstatement.setString(5,"img");
//                 pstatement.setString(6,desc);
//                
//                   pstatement.setString(7,"Unverified");
//           
//                    
//                    pstatement.executeUpdate();
//                    
//                    
//                     
//                              
//            }  
//            
            %>


<%
String username=request.getParameter("username");
String head=request.getParameter("heading");
String desc=request.getParameter("description");
Integer n=0;
PreparedStatement pstatement = null;


             Class.forName("com.mysql.jdbc.Driver");
                Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");
         //  Statement st=cnn.createStatement();
            PreparedStatement spmt=cnn.prepareStatement("select * from users where user_name=?");
              spmt.setString(1,username);
                 ResultSet rs=spmt.executeQuery();
             while (rs.next()) {
                          Integer id= rs.getInt(2);
                          
                           
                     
         
      
  String queryString = "INSERT INTO users_post(post_id,user_id,user_name,post_title,post_img,post_description,verification)" +"VALUES (?,?, ?, ?, ?, ?, ?)";
             pstatement = cnn.prepareStatement(queryString);
             pstatement.setInt(1, 1);
             pstatement.setInt(2,id );
              pstatement.setString(3, username);
               pstatement.setString(4, head);
                pstatement.setString(5,"img");
                 pstatement.setString(6,desc);
                 
                   pstatement.setString(7,"Unverified");
                   
                    
                    pstatement.executeUpdate();
                    
                    
             } 
                              
            
            
            %>









            <html
   
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title> 
    </head> 
    <body> 
      
    <center><h2 style="color:red">Post has been successfully Submitted. Admin will review it soon. !</h1> <br>
    <br>
    <a href="AfterLogin.jsp">Click Here</a></center>
    </body> 
</html>