/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KOICA UR ADMIN
 */
@WebServlet(name = "upload", urlPatterns = {"/upload"})
public class upload extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String title=request.getParameter("title");
            String author=request.getParameter("author");
            String desc=request.getParameter("description");
            //Part img=request.getParameter("image");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/me", "root", "");
String query="insert into posts(id,title,author,Description) values(?,?,?,?)";
PreparedStatement stmt=con.prepareStatement(query);
stmt.setInt(1, 0);
stmt.setString(2,title);
stmt.setString(3, author);
stmt.setString(4, desc);
stmt.executeUpdate();
        } 
        catch(Exception e) {            
            out.print("Error"+e);
        }response.sendRedirect("board.jsp");
}
}

            /* TODO output your page here. You may use following sample code. */

// Java program to implement
// the servlet