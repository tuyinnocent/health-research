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
String id=request.getParameter("id");
String title = request.getParameter("title");
String author=request.getParameter("author");
String Description=request.getParameter("Description");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update posts set title=?,author=?,Description=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, title);
ps.setString(2, author);
ps.setString(3, Description);
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