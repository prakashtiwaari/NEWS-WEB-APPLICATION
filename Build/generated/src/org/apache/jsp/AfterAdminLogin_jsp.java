package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class AfterAdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>ADMIN PAGE</title>\n");
      out.write("</head>\n");
      out.write("<body bgcolor=\"#424242\">\n");
      out.write("<center><h2 style=\"color:white\">ALL REQUESTED NEWS</h2>\n");
      out.write("\n");
      out.write(" ");

                                       String param1 = request.getParameter("p1");
                                       HttpSession session1 = request.getSession(true);
                                        session1.setAttribute("p1", param1);
                                        String a=session.getAttribute("p1").toString();
                                        
      out.write("<h1 style=\"color:red;\">  ");
out.println("Hello "+a);
      out.write("</h1>\n");
      out.write("                                        \n");
      out.write("   </center>\n");
      out.write("<hr>\n");

try {
     Class.forName("com.mysql.jdbc.Driver");
     Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnitnews?","root","");


Statement statement = null;
ResultSet rs = null;

statement = cnn.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from users_post where verification='unverified'";
rs = statement.executeQuery(QueryString);

      out.write("\n");
      out.write("<center>\n");
      out.write("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\">\n");

    
while (rs.next()) {

      out.write("\n");
      out.write("<TR>\n");
      out.write("<TD style=\"color:black;\">");
      out.print("POST_ID");
      out.write("</TD>\n");
      out.write("<TD>");
      out.print("USER_ID");
      out.write("</TD>\n");
      out.write("<TD>");
      out.print("USER_NAME");
      out.write("</TD>\n");
      out.write("<TD>");
      out.print("POST_TITLE");
      out.write("</TD>\n");
      out.write("<TD>");
      out.print("POST_IMAGE");
      out.write("</TD>\n");
      out.write("<TD>");
      out.print("POST_DESCRIPTION");
      out.write("</TD>\n");
      out.write("\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write("<TD>");
      out.print(rs.getInt(1));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(2));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(3));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(4));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(5));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(6));
      out.write("</TD>\n");
      out.write("</TR>\n");
 } 
      out.write('\n');

// close all the connections.
rs.close();
statement.close();
} catch (Exception ex) {

      out.write("\n");
      out.write("</font>\n");
      out.write("<font size=\"+3\" color=\"red\"></b>\n");

out.println("Unable to connect to database.");
}

      out.write("\n");
      out.write("</TABLE></center><br><br><br>\n");
      out.write("\n");
      out.write("<center><form action=\"Logout.jsp\" method=\"get\">\n");
      out.write("<button type=\"submit\" style=\"width:400px;background: red;height: 30px\" >LOGOUT</button>\n");
      out.write(" </form>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
