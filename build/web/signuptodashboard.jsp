<%-- 
    Document   : signuptodashboard
    Created on : Nov 22, 2021, 9:19:27 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("admin") == null){
        response.sendRedirect("logintodashboard.jsp");
    }

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


%>
<%
String nm1=request.getParameter("username");
String nm2=request.getParameter("email");
String nm3=request.getParameter("password");
try{
Class.forName("com.mysql.jdbc.Driver"
        + ""
        + "");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/me","root","");
Statement st=con.createStatement();
if(nm1==null||nm2==null||nm3==null||nm3==null ){
System.out.println("There is an empty field");        
}
else{

st.executeUpdate("insert into post_user values('"+0+"','"+nm1+"','"+nm2+"','"+nm3+"')");
out.print("The data has been inserted successfully");

}}
    catch(Exception e){
e.getMessage();
out.print(e);
}
%>
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
            <li><a class="active"  href="signuptodashboard.jsp">Sign up</a></li>
          
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
                        <input type="text" name="username" id="username" placeholder="Enter Username" required>
                        
                    </div>
                    <div class="input">
                            <input type="text" name="email" id="email" placeholder="Enter email" required>
                        
                    </div>
                    <div class="input">
                        <input type="password" name="password" id="password" placeholder="Password" required>
                        
                    </div>
                    <input type="submit" value="Sign up" name="submit" class="login-btn">
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>