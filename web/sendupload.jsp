<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String title=request.getParameter("title");
String author=request.getParameter("author");
String uploadfile=request.getParameter("uploadfile");
String description=request.getParameter("description");
ResultSet resultSet = null;

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/me", "root", "");
Statement st=conn.createStatement();

String sql ="insert into post values('"+title+"','"+author+"','"+uploadfile+"','"+description+"')";
st.executeQuery(sql);




out.println("Data is successfully inserted!");


%>
