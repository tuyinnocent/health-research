<%-- 
    Document   : activateTickets
    Created on : Nov 20, 2021, 3:10:17 PM
    Author     : Students
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
    <title>Dashboard Doctor</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/bootstrap-4.3.1-dist/css/bootstrap.min.css">
  <script type="text/javascript" src="styles/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles/Sidebar.css">
    <link rel="stylesheet" href="styles/index.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg?size=338&ext=jpg" type="image/png">
</head>
<body>   
    <div class="wrapper" style="background-color: #f6f5fa">
        <div class="container-fluid">
          <div class="row">
            <!-- Nav start -->
            <nav class="col-md-2 d-none d-md-block sidebar">
                <div class="sidebar-sticky">
                  <div class="sidebar-img text-center mt-5">
                    <p><img src="https://img.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg?size=338&ext=jpg" alt="Logo" width="150" height="150" /></p>
                  </div>
                  <ul class="nav flex-column dash-nav">
                    <li class="nav-item"><a class="nav-link" href="board.jsp">Posts</a></li>
                    <li class="nav-item"><a class="nav-link active">Users</a></li>
                    <!-- <li class="nav-item"><a href="passwordChange.jsp" class="nav-link">Change Password</a></li> -->
                    <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="logout.jsp" class="text-dark">Logout</a></button></li>
                  </ul>
                </div>
              </nav>
            <!-- nav end -->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 main-content pb-4"style="background-color: #f6f5fa">
              <h4 class=" font-weight-bold mt-4" style="font-size: 18; margin-left:450px">
                All Your Users
                <span>
                <button class="mr-2 btn btn-danger"><a href="signuptodashboard.jsp">Add User</a></button>
                </span>
              </h4>
              <div class="container-fluid mt-5">
                <div class="mt-5">
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">ID</th>
                            <th scope="col">UserName</th>
                            <th scope="col">UserEmail</th>
                            <th scope="col">User_password</th>
                            

                            <th scope="col">Action</th>
                          </tr>
                        </thead>
                        <tbody>
      <%
        Connection con;
        Statement statement= null;
        ResultSet rst; 
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
          PreparedStatement ps=con.prepareStatement(  "SELECT * FROM post_user"); 
          rst=ps.executeQuery(); 
          int no=0; 
        while(rst.next()){
        %>
                            <tr>
                                <td><%=rst.getString("id") %></td>
                                <td><%=rst.getString("username") %></td>
                                <td><%=rst.getString("user_email") %></td>
                                <td><%=rst.getString("user_password") %></td>

                                                        

                              
                              <td>
                                  <span>
                                      <button class="mr-2 btn btn-danger" ><a href="delete.jsp?id=<%=rst.getString("id")%>">Delete</a></button>
                                  </span>
                                  <span>
                                       <button class ="btn btn-warning" ><a href="updateuser.jsp?id=<%=rst.getString("id")%>">Update</a></button>
                                  </span>

                              </td>
                            </tr>
          <%
        }
       %>
                        </tbody>
                      </table>
                    </div>
                  </div>
              </div>
            </main>
          </div>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
      <footer>
</body>
</html>
