<%-- 
    Document   : upload.jsp
    Created on : Nov 22, 2021, 5:57:35 PM
    Author     : KOICA UR ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    if (session.getAttribute("username") == null){
        response.sendRedirect("logintodashboard.jsp");
    }

%>



        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Create Post</title>
</head>
<body>


    <div class="container">
        <%
        Connection con;
        Statement statement= null;
        ResultSet rst; 
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
          String id = request.getParameter("id");
          PreparedStatement ps=con.prepareStatement("SELECT * FROM posts where id="+id); 
          rst=ps.executeQuery(); 
          int no=0; 
        while(rst.next()){
        %>
        <form class="login-email" method="GET" enctype="multipart/form-data" action="update">

            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Post Article</p>
           <input type="hidden"  name="id" value="<%=rst.getString("id") %>" >
            <div class="input-group">
                <input type="text" placeholder="title" name="u" value="<%=rst.getString("title") %>" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="author" name="us" value="<%=rst.getString("author") %>" required>
            </div>
<!--            <div class="input-group">
                <input type="file"  name="uploadfile" required>
            </div>-->
            <div class="input-group">
    
                <textarea name="up"  id="" cols="30" rows="10" placeholder="Description" style="margin-top: 10px; border: 1px solid rgb(228, 228, 228); outline: none; padding: 20px; width: 100%; border-radius: 10px; "><%=rst.getString("description") %></textarea>
            </div>
            <div class="input-group">
            
                <input type="submit" name="submit" class="btn" value="Update">
            </div>
        </form>
        <%
        }
       %>
    </div>

</body>
</html>