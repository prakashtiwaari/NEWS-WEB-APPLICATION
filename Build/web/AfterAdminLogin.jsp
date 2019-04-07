<%-- 
    Document   : AfterAdminLogin
    Created on : 7 Apr, 2019, 1:11:56 AM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ADMIN PAGE</title>
</head>
<body bgcolor="#424242">
<center><h2 style="color:white">ALL REQUESTED NEWS</h2>

 <jsp:scriptlet>
                                       String param1 = request.getParameter("p1");
                                       HttpSession session1 = request.getSession(true);
                                        session1.setAttribute("p1", param1);
                                        String a=session.getAttribute("p1").toString();
                                        </jsp:scriptlet><h1 style="color:red;">  <jsp:scriptlet>out.println("Hello "+a);</jsp:scriptlet></h1>
                                        
   </center>
<hr>
<%
try {
     Class.forName("com.mysql.jdbc.Driver");
     Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");


Statement statement = null;
ResultSet rs = null;

statement = cnn.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from users_post where verification='unverified'";
rs = statement.executeQuery(QueryString);
%>
<center>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
    <TR>
<TD style="color:blue;"><%="POST_ID"%></TD>
<TD style="color:blue;"><%="USER_ID"%></TD>
<TD style="color:blue;"><%="USER_NAME"%></TD>
<TD style="color:blue;"><%="POST_TITLE"%></TD>
<TD style="color:blue;"><%="POST_IMAGE"%></TD>
<TD style="color:blue;"><%="POST_DESCRIPTION"%></TD>

</TR>
<%
    
while (rs.next()) {
%>

<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><form action="verify.jsp" method="get">
<button type="submit" style="width:200px;background: green;height: 50px; color: white" >Verify this</button>
<input type="hidden" name="id" value="<%=rs.getInt(1)%>"></form>
</TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE></center><br><br><br>

<center><form action="Logout.jsp" method="get">
<button type="submit" style="width:350px;background: red;height: 40px" >LOGOUT</button>
 </form>
</center>


</body>
</html>
