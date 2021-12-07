
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpSession;
import java.sql.DriverManager;


@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
     
        try (PrintWriter out = response.getWriter()) {
          

     String username=request.getParameter("username");
           HttpSession session= request.getSession();
session.setAttribute("username",username);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/me","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from post_user where username='"+username+"' and user_password='"+password+"'");
rs.next();
if(rs.getString("user_password").equals(password)&&rs.getString("username").equals(username))
{
response.sendRedirect("board.jsp");
}
else{
response.sendRedirect("logintodashboard.jsp");
}
}
catch (Exception e) {
e.printStackTrace();
}
        }
    }

   