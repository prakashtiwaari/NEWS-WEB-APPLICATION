<%-- 
    Document   : ReportNews
    Created on : 6 Apr, 2019, 2:00:04 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REPORT NEWS | BE THE AUTHOR</title>
</head>
<body bgcolor="#424242">
<center><h1 style="color:white">REPORT NEWS</h1>
 <jsp:scriptlet>
                                       String param1 = request.getParameter("p1");
                                       HttpSession session1 = request.getSession(true);
                                        session1.setAttribute("p1", param1);
                                        String a=session.getAttribute("p1").toString();
                                        </jsp:scriptlet><h1 style="color:red;">  <jsp:scriptlet>out.println("Hello "+a);</jsp:scriptlet></h1>
                                        
                                    
    </center>
<hr>

<center><form action="insert_post.jsp?username=<%=a%>" method="post">
			
				
                                
                                       <p><h3 style="color: white;">NEWS HEADING</h3></p>
                                       <input type="text" name="Heading"/><br>
                                        <p><h3 style="color: white">NEWS DESCRIPTION</h3></p>
                                        <input type="text" name="description"/><br>
                                        
                                       <br><br><br>
                                      
			<input type="submit" value="Submit" style="width:300px;background: red;height: 30px" /></form>
</center>
</body>
</html>