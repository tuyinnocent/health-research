<%-- 
    Document   : post.jsp
    Created on : Nov 22, 2021, 5:55:33 PM
    Author     : KOICA UR ADMIN
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="post.css">
    <title>Document</title>
</head>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/me";
String database = "me";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<body>
    <!-- header section starts  -->

<header>

<a href="#" class="logo"><span>The</span> Doctor</a>

<div id="menu" class="fas fa-bars"></div>

<nav class="navbar">
    <ul>
        <li><a  href="index.jsp">Home</a></li>
        <li><a href="index.jsp#about">About us</a></li>
        <li><a class="active" href="post.jsp">Posts</a></li>
        <li><a href="index.jsp#prevent">Prevention</a></li>
        <li><a href="index.jsp#doctor">Doctors</a></li>
        <li><a href="logintodashboard.jsp">Login</a></li>
    </ul>
</nav>

</header>

<!-- header section ends -->
<section>

    <div class="container"> 
        
        <h1 style="text-align:center;">Blog Post</h1>   
          <%
        Connection con;
        statement= null;
        ResultSet rst; 
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
          PreparedStatement ps=con.prepareStatement(  "SELECT * FROM posts"); 
          rst=ps.executeQuery(); 
          int no=0; 
        while(rst.next()){
        %>
        <div class="grid"> 

                <div class="card">
<!--                                 <div class="card_img">
                                     <img src="" alt="">
                                 </div>-->
                    <div class="card_body">
                        <!--<img src=''>-->

                                 





            <h2 class="card_title"><%=rst.getString("title") %></h2>

            <p><%=rst.getString("Description") %></p>

            <p><%=rst.getString("id") %></p>

            <p class="card_author">by <a href="#" class="author_link"><%=rst.getString("author") %></a></p>

            <a  class="read_more" href="details.jsp?id=<%=rst.getString("id") %>">Read article</a>  
                        
        </div>
          </div>

          
        </div>
            <%
        }
       %>
     
          
    </div>

</section>

</body>

</html>
