<%-- 
    Document   : Register
    Created on : 5 Apr, 2019, 7:04:52 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIGN UP FORM</title>
</head>
<body bgcolor="#424242">
<center><h1 style="color:white">SIGN UP FORM</h1></center><hr>

<center><form action="insert_users.jsp" method="post">
			
				
        <p style="color: white">Username:</p>
                                        <input type="text" name="username"  required />
                                        <p style="color: white"> Password</p>
					<input type="password" name="password"  required/>
                                        <p style="color: white">Address</p>
					<td><input type="text" name="address"  required/>
                                            <p style="color: white"> Contact No</p>
					<input type="text" name="contact"  required/>
                                        <p style="color: white">  Email</p>
					<input type="text" name="email"  required/>
                                        <p style="color: white">  Gender</p>
                                       <input type="radio" name="gender" value="male"> Male
                                       <input type="radio" name="gender" value="female"> Female
                                       <input type="radio" name="gender" value="other"> Other<br><br><br>
                                      
			<input type="submit" value="Submit" style="width:300px;background: red;height: 30px" /></form>
</center>
</body>
</html>