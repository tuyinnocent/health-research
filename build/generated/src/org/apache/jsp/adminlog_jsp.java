package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import java.sql.*;

public final class adminlog_jsp extends org.apache.jasper.runtime.HttpJspBase
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




    if ("POST".equals(request.getMethod())) {
        out.print("post method");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Class.forName("com.mysql.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/me";
        String user = "root";
        String pwd = "";

        Connection conn = DriverManager.getConnection(url, user, pwd);
        PreparedStatement ps = conn.prepareStatement("select * from admin where username=? and user_password=?");
        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        boolean status = rs.next();
        if (status) {
            session.setAttribute("admin", username);
//            session.setAttribute("username", rs.getString("username"));
            response.sendRedirect("userboard.jsp");
            
        } else {
            response.sendRedirect("logintodashboard.jsp?error=incorrect username or password");

        }

    }

      out.write("\n");
      out.write("      <script>\n");
      out.write("              alert(\"Invalid username\");\n");
      out.write("      </script>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"logtodashboard.css\">\n");
      out.write("    <title>login</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- header section starts  -->\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("\n");
      out.write("    <a href=\"#\" class=\"logo\"><span>The</span> Doctor</a>\n");
      out.write("\n");
      out.write("    <div id=\"menu\" class=\"fas fa-bars\"></div>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"index.jsp#about\">Contact us</a></li>\n");
      out.write("            <li><a href=\"post.jsp\">Posts</a></li>\n");
      out.write("            <li><a href=\"index.jsp#prevent\">Prevention</a></li>\n");
      out.write("            <li><a href=\"index.jsp#doctor\">Doctors</a></li>\n");
      out.write("            <li><a class=\"active\"  href=\"login.jsp\">Login</a></li>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<!-- header section ends -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"main-container_log\">\n");
      out.write("        <div class=\"container-log\">\n");
      out.write("            <div class=\"upper box-log\">\n");
      out.write("                <h1>Login</h1>\n");
      out.write("                <h6>To access Admin dashboard</h6>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"lower box-log\">\n");
      out.write("                <form action=\"\" method=\"POST\">\n");
      out.write("                    <div class=\"input\">\n");
      out.write("                        <input type=\"text\" name=\"username\" id=\"username\" placeholder=\"Username\" required>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input\">\n");
      out.write("                        <input type=\"password\" name=\"password\" id=\"password\" placeholder=\"Password\" required>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"submit\" value=\"Login as Admin\" name=\"login\" class=\"login-btn\">\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
