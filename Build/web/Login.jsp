<%-- 
    Document   : Login
    Created on : 5 Apr, 2019, 6:02:30 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
    </head>
    <style>
        
        body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}
input[type=submit] {
    padding:5px 15px; 
   
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    width: 300px;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}

#Admin {background-color: #860202;}
#User {background-color: green;}
        
        
        </style>
        
    <body>
        <button class="tablink" onclick="openPage('User', this, 'green')" id="defaultOpen">USER</button>
        <button class="tablink" onclick="openPage('Admin', this, 'red')">ADMIN</button>
        
        
        <div id="User" class="tabcontent">
            <center>
                <h1>USER LOGIN</h1>
                 <form action="LoginCheck.jsp" method="post">
                     Enter username :<input type="text" name="username"> <br><br><br>
                     Enter password :<input type="password" name="password"><br><br>
                     <input type="submit" value="Submit1" name="userbtn" style="background: #A7031F">
</form>
                
            </center>
  
       </div>
        
        
         <div id="Admin" class="tabcontent">
            <center>
                <h1>ADMIN LOGIN</h1>
                 <form action="LoginCheck.jsp" method="post">
                     Enter username :<input type="text" name="ad_username"> <br><br><br>
                     Enter password :<input type="password" name="ad_password"><br><br>
<input type="submit" value="Submit2" name="adminbtn" style=" background:#26A70F ">
</form>
            </center>
  
       </div>
        
        <script>  
        function openPage(pageName, elmnt, color) {
  // Hide all elements with class="tabcontent" by default */
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove the background color of all tablinks/buttons
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }

  // Show the specific tab content
  document.getElementById(pageName).style.display = "block";

  // Add the specific color to the button used to open the tab content
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
       
</script>
    </body>
</html>
