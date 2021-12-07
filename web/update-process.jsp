<%-- 
    Document   : update-process
    Created on : Nov 23, 2021, 1:38:15 PM
    Author     : KOICA UR ADMIN
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/me";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String username=request.getParameter("username");
String user_email=request.getParameter("user_email");
String user_password=request.getParameter("user_password");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update post_user set id,username=?,user_email=?,user_password=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, username);
ps.setString(3, user_email);
ps.setString(4, user_password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>