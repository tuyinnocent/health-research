<%-- 
    Document   : login.jsp
    Created on : Nov 23, 2021, 4:44:41 PM
    Author     : KOICA UR ADMIN
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
session.putValue("username",username);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from post_user where username='"+username+"' and user_password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("userid").equals(username))
{
out.println("Welcome " +username);
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>