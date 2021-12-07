<%-- 
    Document   : delete.jsp
    Created on : Nov 23, 2021, 2:42:32 PM
    Author     : KOICA UR ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>




<%
 
     String id = request.getParameter("id");
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
    
    stmt =con.prepareStatement("delete from post_user where id="+id);
   
//    stmt.setString(1,id);
    stmt.executeUpdate();
    
    %>
    <script>
        
        
        window.location = 'userboard.jsp';
        </script>