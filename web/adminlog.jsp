<%-- 
    Document   : logintodashboard.jsp
    Created on : Nov 22, 2021, 5:54:01 PM
    Author     : KOICA UR ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%



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
%>

      <script>
              alert("Invalid username");
      </script>
      <%    
            }

    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="logtodashboard.css">
    <title>login</title>
</head>
<body>
<!-- header section starts  -->

<header>

    <a href="#" class="logo"><span>The</span> Doctor</a>

    <div id="menu" class="fas fa-bars"></div>

    <nav class="navbar">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="index.jsp#about">Contact us</a></li>
            <li><a href="post.jsp">Posts</a></li>
            <li><a href="index.jsp#prevent">Prevention</a></li>
            <li><a href="index.jsp#doctor">Doctors</a></li>
            <li><a class="active"  href="login.jsp">Login</a></li>
            
            
        </ul>
    </nav>

</header>

<!-- header section ends -->


    <div class="main-container_log">
        <div class="container-log">
            <div class="upper box-log">
                <h1>Login</h1>
                <h6>To access Admin dashboard</h6>
            </div>
            <div class="lower box-log">
                <form action="" method="POST">
                    <div class="input">
                        <input type="text" name="username" id="username" placeholder="Username" required>
                        
                    </div>
                    <div class="input">
                        <input type="password" name="password" id="password" placeholder="Password" required>
                        
                    </div>
                    <input type="submit" value="Login as Admin" name="login" class="login-btn">
                    
                    
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>



