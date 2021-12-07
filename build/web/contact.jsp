<%-- 
    Document   : contact.jsp
    Created on : Nov 22, 2021, 5:50:01 PM
    Author     : KOICA UR ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Doctor</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>

        <a href="#" class="logo"><span>The</span> Doctor</a>
    
        <div id="menu" class="fas fa-bars"></div>
    
        <nav class="navbar">
            <ul>
                <li><a  href="./index.jsp">home</a></li>
                <li><a class="active" href="#protect">Contact us</a></li>
                <li><a href="#symtoms">Diseases</a></li>
                <li><a href="#prevent">Prevention</a></li>
                <li><a href="#handwash">Doctors</a></li>
                <li><a href="./login.html">login</a></li>
                <li><a   href="signuptodashboard.jsp">SignUp</a></li>
            </ul>
        </nav>
    
    </header>

    <section class="contact_section" id="contact">
        <h2 class="section-title">Get In Touch</h2>

        <div class="contact__container bd-grid">
            <script>
                function form(){
                    var name= document.getElementById('name');
                    alert('THANK YOU  ' +name.value);
                }
            </script>
            <form  class="contact__form" onsubmit="return form();">
                <div class="contact__inputs">
                    <input type="text" placeholder="Name" id="name" class="contact__input" required>
                    <input type="email" placeholder="Email" class="contact__input" required>
                </div>
                <input type="text" placeholder="project" class="contact__input">
                <textarea name="" id="" cols="0" rows="10" placeholder="Message" class="contact__input"></textarea>
            <a href="#" class="btn">submit</a>

                <!-- <input type="submit" value="Submit" class="button contact__button"> -->
            </form>
            <div class="contact__information">
                <h2 class="section-information">Information</h2>
                <div class="contact__info">
                    <h3 class="contact__subtitle">Call us</h3>
                    <span class="contact__text">+250 783 493 350</span>
                    <span class="contact__text">+250 722 450 600</span>
                </div>

                <div class="contact__info">
                    <h3 class="contact__subtitle">E-mail Us</h3>
                    <span class="contact__text">eddycletis90@gmail.com</span>
                    <span class="contact__text">kayiganwa04@gmail.com</span>
                </div>

                <div class="contact__info">
                    <h3 class="contact__subtitle">Location</h3>
                    <span class="contact__text">    Kigali, Rwanda kk 125st</span>
                </div>
            </div>
        </div>
    <a class="forgot" href="./forgot.html">forgot password</a>

    </section>

</body>
</html>