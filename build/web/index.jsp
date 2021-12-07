<%-- 
    Document   : index.jsp
    Created on : Nov 22, 2021, 5:52:58 PM
    Author     : KOICA UR ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="java.util.Random"%>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campus Health Guide</title>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="indexstyle.css">


    

</head>
<body>
    
<!-- header section starts  -->

<header>

    <a href="#" class="logo"><span>UR Campus</span> Health Guide</a>

    <div id="menu" class="fas fa-bars"></div>

    <nav class="navbar">
        <ul>
            <li><a class="active" href="#home">home</a></li>
            <li><a href="#about">About us</a></li>
            <li><a href="post.jsp">Posts</a></li>
            <li><a href="#prevent">prevention</a></li>
            <li><a href="#doctor">Doctors</a></li>
            <li><a href="logintodashboard.jsp">Login</a></li>
            
            
        </ul>
    </nav>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="container_home" id="home">

   <div class="row">
       <div class="col">
        <h1 class="home_h1">"Ntabe Ari Njye" Campaign</h1>
        <p class="p_home"> While appearing on ‘Waramutse Rwanda’, a morning talk-show on Rwanda Television on Monday, CP Kabera observed that ‘Ntabe Ari Njye’ literally translated as ‘I shouldn’t be the one’ campaign initiated by RNP is meant to effect change in people’s thinking and actions to make safer individual choices in compliance with the recommended directives and guidelines to contain the pandemic.

            “Ntabe Ari Njye campaign looks at the individual character to make a choice not be the source for COVID-19 infections where you live, walk, in the vehicle or at work.</p>
            <button type="button" class="btn">Prevent</button>
         </div>
        <div class="col">
            <div class="card_home card1">
                <h3>Covid-19</h3>
                <p class="p_home">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos harum architecto velit aspernatur nam nisi quia, nesciunt dolorem quaerat deleniti deserunt id qui placeat quibusdam cumque accusantium accusamus eaque ducimus lo.</p>
            </div>
            <div class="card_home card2">
                <h3>Influenza</h3>
                <p class="p_home">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos harum architecto velit aspernatur nam nisi quia, nesciunt dolorem quaerat deleniti deserunt id qui placeat quibusdam cumque accusantium accusamus eaque ducimus.</p>
            </div>
            <div class="card_home card2">
                <h3>Influenza</h3>
                <p class="p_home">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos harum architecto velit aspernatur nam nisi quia, nesciunt dolorem quaerat deleniti deserunt id qui placeat quibusdam cumque accusantium accusamus eaque ducimus.</p>
            </div>
            <div class="card_home card2">
                <h3>Influenza</h3>
                <p class="p_home">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos harum architecto velit aspernatur nam nisi quia, nesciunt dolorem quaerat deleniti deserunt id qui placeat quibusdam cumque accusantium accusamus eaque ducimus.</p>
            </div>
        </div>
      
   </div>
   
</section>

<!-- home section ends -->

<section class="prevent" id="prevent">

    <h1 class="heading"> Preventions of Covid-19 </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/pre-1.png" alt="">
            <h3>wash your place</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-1.png" alt="">
            <h3>wash your place</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-1.png" alt="">
            <h3>wash your place</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-2.png" alt="">
            <h3>maintain distance</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-3.png" alt="">
            <h3>don't touch face</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-4.png" alt="">
            <h3>wash your hand</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-5.png" alt="">
            <h3>use napkin</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

        <div class="box">
            <img src="images/pre-6.png" alt="">
            <h3>wear a mask</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
        </div>

    </div>

</section>
<!-- ============= post section starts============= -->
<!--<section class="post-section" id= "post">
    <h1 class="heading">Latest post</h1>
    <div class="container"> 

         <div class="grid"> 

                <div class="card">
                                 <div class="card_img">
                                     <img src="" alt="">
                                 </div>
                    <div class="card_body">
                        <img src=''>

                                 

      <%
        Connection con;
        Statement statement= null;
        ResultSet rst; 
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/me","root","");
          PreparedStatement ps=con.prepareStatement(  "SELECT * FROM posts"); 
          rst=ps.executeQuery(); 
          int no=0; 
        while(rst.next()){
        %>




            <h2 class="card_title"><%=rst.getString("title") %></h2>

            <p><%=rst.getString("Description") %></p>

            <p><%=rst.getString("id") %></p>

            <p class="card_author">by <a href="#" class="author_link"><%=rst.getString("author") %></a></p>

            <a  class="read_more" href="details.jsp?id=<%=rst.getString("id") %>">Read article</a>  
                        

   <%
        }
       %>
                    </div>
                </div>
  
        </div>
    
    
    </div>
</section>-->
<!-- ============= post section ends============= -->


<!-- About section starts  -->

<section class="section" id="about">
    <h1 class="heading">About Us</h1>
        <div class="about-container">
                <div class="content-section">
                    <div class="about-content">
                        <h3>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellat, consequuntur?</h3>
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis neque esse qui odit consectetur nulla nihil quam excepturi suscipit distinctio, sed totam quas sequi architecto, natus iure quos. Tempore, itaque? Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis illum quas cupiditate inventore rem dolore vero exercitationem architecto aspernatur molestias, corrupti illo ad ratione mollitia delectus, quibusdam iste corporis deleniti. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente unde repellendus amet tempora quisquam dolor cupiditate laudantium aperiam. Similique libero deserunt vel! Minima, amet nobis. Quae alias rerum voluptas? Officiis.</p>
                        <div class="btn"><a href="">Contact Us</a></div>
                    </div>
                </div>
                <div class="image-section">
                    <img src="./images/pexels-photo-5863393.jpeg" alt="">
                </div>
        </div>
  
    

</section>

<!-- symtoms section ends -->


<!-- Doctors section starts  -->
<section class="doctor section-doctor" id="doctor">
    <div class="container_card">
        <h1 class="heading">Meet our doctors</h1>
        <div class="card-wrapper">
            <div class="card">
                <img src="./images/pre-6.png" alt="profile image" class="profile-img">
                <h1>Avacode Joe</h1>
                <p class="job-title">Head of Department</p>
                <p class="about">Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus suscipit ab voluptatem quidem unde minus nisi, mollitia sapiente voluptates sequi reprehenderit eligendi assumenda ad modi rem totam soluta inventore ipsum.

                </p>
                    <a href="#" class="btn-card">contact</a>
               
            </div>

            <div class="card">
                <img src="./images/pre-6.png" alt="profile image" class="profile-img">
                <h1>Avacode Joe</h1>
                <p class="job-title">Mobile app developer</p>
                <p class="about">Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus suscipit ab voluptatem quidem unde minus nisi, mollitia sapiente voluptates sequi reprehenderit eligendi assumenda ad modi rem totam soluta inventore ipsum.

                </p>
                    <a href="#" class="btn-card">contact</a>
                
            </div>

            <div class="card">
                <img src="./images/pre-6.png" alt="profile image" class="profile-img">
                <h1>Avacode Joe</h1>
                <p class="job-title">React js developer</p>
                <p class="about">Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus suscipit ab voluptatem quidem unde minus nisi, mollitia sapiente voluptates sequi reprehenderit eligendi assumenda ad modi rem totam soluta inventore ipsum.

                </p>
                    <a href="#" class="btn-card">contact</a>
                
            </div>
        </div>
    </div>
</section>
<!-- spread section ends -->

<!-- ======================== Contact section start================= -->






<!-- =========================Contact section End===================== -->

<!-- footer section starts  -->

<section class="footer">

 

    <h1 class="credit"> @all rights reserved 2021 </h1>

</section>
<!-- footer section ends -->
<!-- custom js file link  -->
<script src="js/script.js"></script>


</body>
</html>
