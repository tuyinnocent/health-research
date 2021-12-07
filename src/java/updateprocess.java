/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

@WebServlet(urlPatterns = {"/updateprocess"})
public class updateprocess extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/me";
            String user = "root";
            String psw = "";

            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String user_email = request.getParameter("user_email");
            String user_password = request.getParameter("user_password");

            if (id != null) {
                Connection con = null;
                PreparedStatement ps = null;
                int personID = Integer.parseInt(id);
                try {
//Class.forName(driverName);
                    con = DriverManager.getConnection(url, user, psw);
                    String sql = "Insert into post_user set id=?,username=?,user_email=?,user_password=? where id=" + id;
                    ps = con.prepareStatement(sql);
                    ps.setString(1, id);
                    ps.setString(2, username);
                    ps.setString(3, user_email);
                    ps.setString(4, user_password);
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        out.print("Record Updated Successfully");
                    } else {
                        out.print("There is a problem in updating Record.");
                    }

                } catch (SQLException sql) {
                    request.setAttribute("error", sql);
                    out.println(sql);
                }

            }
        }
        catch (Exception e) {
                    
                    out.println("There is ana error");
                }
    }
}