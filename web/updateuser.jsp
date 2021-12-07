<%-- 
    Document   : signuptodashboard
    Created on : Nov 22, 2021, 9:19:27 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("username") == null){
        response.sendRedirect("logintodashboard.jsp");
    }

%>


<%
    if(request.getParameter("submit")!=null){
      int id= Integer.parseInt(request.getParameter("id"));
      String u = request.getParameter("u");
      String us= request.getParameter("us");
      String up= request.getParameter("up");
      
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost/me","root","");
    
    stmt =con.prepareStatement ("update post_user set username=?,user_email=?,user_password=? where id=?");
    
    stmt.setString(1,u);
    stmt.setString(2,us);
    stmt.setString(3,up);
    stmt.setInt(4,id);
    stmt.executeUpdate();
    
    
    %>
    <script>
        
        
            window.location.href='userboard.jsp';
        
    </script>
        
    <%
    }


%>



                    <%
        Connection con;
        Statement statement= null;
        ResultSet rst; 
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
          String id = request.getParameter("id");
          PreparedStatement ps=con.prepareStatement("SELECT * FROM post_user where id="+id); 
          rst=ps.executeQuery(); 
          int no=0; 
        while(rst.next()){
        %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="logtodashboard.css">
    <title>Sign Up</title>
</head>
<%@page contentType="text/html" import="java.sql.*"%>
<%@page import="java.sql.*"%>


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
            <li><a  href="logintodashboard.jsp">Login</a></li>
            <li><a  class="active"  href="signuptodashboard.jsp">SignUp</a></li>
        </ul>
    </nav>

</header>

<!-- header section ends -->


    <div class="main-container_log">
        <div class="container-log">
            <div class="upper box-log">
                <h1>Sign up </h1>
                <h6>To Become a user</h6>
            </div>

            <div class="lower box-log">                     

                <form action="" method="POST">
     
                    <div class="input">
                        <input type="text" name="u" id="username"  value="<%=rst.getString("username") %>" required>
                        
                    </div>
                    <div class="input">
                            <input type="text" name="us" id="email"  value="<%=rst.getString("user_email") %>" required>
                        
                    </div>
                    <div class="input">
                        <input type="password" name="up" id="password"  value="<%=rst.getString("user_password") %>" required>
                        
                    </div>
                    <input type="submit" value="update" name="submit" class="login-btn">
    
                </form>
     
            </div>

        </div>
    </div>
        <%
        }
       %>
</body>
</html>