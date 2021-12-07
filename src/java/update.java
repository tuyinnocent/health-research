/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KOICA UR ADMIN
 */
@WebServlet(urlPatterns = {"/update"})
public class update extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    try
    {
      int id= Integer.parseInt(request.getParameter("id"));

      String u=request.getParameter("u");
      String us= request.getParameter("us");
      String up= request.getParameter("up"); 
     Connection con;
     PreparedStatement stmt;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost/me","root","");
    String q="update posts set title=?,author=?,Description=? where id="+id;
     stmt =con.prepareStatement (q);
    stmt.setString(1,u);
    stmt.setString(2,us);
    stmt.setString(3,up);
    stmt.executeUpdate();
    response.sendRedirect("board.jsp");
    }
    catch(Exception e)
    {
            out.print(e);
            }
    }
}
