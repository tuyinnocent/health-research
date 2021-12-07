<%-- 
    Document   : upload.jsp
    Created on : Nov 22, 2021, 5:57:35 PM
    Author     : KOICA UR ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("logintodashboard.jsp");
    }
        String user_id = (String)session.getAttribute("id");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Register</title>
</head>
<body>
    <div class="container">
        <form class="login-email" method="GET" enctype="multipart/form-data" action="upload">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Post Article</p>
           
            <div class="input-group">
                <input type="text" placeholder="title" name="title" value="" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="author" name="author" value="" required>
            </div>
<!--            <div class="input-group">
                <input type="file"  name="uploadfile" required>
            </div>-->
            <div class="input-group">
    
                <textarea name="description" id="" cols="30" rows="10" placeholder="Description" style="margin-top: 10px; border: 1px solid rgb(228, 228, 228); outline: none; padding: 20px; width: 100%; border-radius: 10px; "></textarea>
            </div>
            <div class="input-group">
            
                <input type="submit" name="submit" class="btn" value="Post">
            </div>
        </form>
    </div>
</body>
</html>