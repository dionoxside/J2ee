<%-- 
    Document   : Home
    Created on : 22-Feb-2017, 22:32:46
    Author     : novan
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<%@page import="com.mysql.jdbc.Connection" %>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%
    User user = (User) request.getSession().getAttribute("user");
    if(user==null){
//        response.sendRedirect("Home.jsp");
    }else if(user.getRole().equals("admin")){
        response.sendRedirect("Admin.jsp");
    }else if(user.getRole().equals("user")){
        
    }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <title>Wisata</title>

<!-- CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="materialize/css/materialize.css">
<link rel="stylesheet" href="materialize/css/style.css">


  </head>
  <body>
    <nav>
        <div class="nav-wrapper indigo darken-3">
          <a href="#" class="brand-logo">Logo</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="#">Home</a></li>
            <li><a href="#">Wisata</a></li>
            <li><a href="#">Info</a></li>
            <li><a href="#">Contact</a></li>
            <a class="dropdown-button" href="#" data-activates="dropdown1">User</a>
            <ul id="dropdown1" class="dropdown-content">
                <li><a href="logout.jsp">Logout</a></li>
                <li><a href="Login.jsp">Login</a></li>
            </ul>
          </ul>
        </div>
      </nav>
<main>
  <!-- <div id="index-banner" class="parallax-container">
      <div class="section no-pad-bot">
        <div class="container">
          <br><br>
          <h1 class="header center teal-text text-lighten-2">Selamat Datang</h1>
          <div class="row center">
            <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
          </div>
          <div class="row center">
            <a href="#" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">Get Started</a>
          </div>
          <br><br>

        </div>
      </div>
      <div class="parallax"><img src="background1.jpg" alt="Unsplashed background img 1"></div>
    </div> -->


  <!-- Slider -->
  <div class="slider">
    <ul class="slides">
      <li>
        <img src="http://lorempixel.com/580/250/nature/1"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/2"> <!-- random image -->
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/3"> <!-- random image -->
        <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/4"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
    </ul>
  </div>
</main>

<footer class="page-footer indigo darken-3">
  <div class="container">
    <div class="row">
      <div class="col l6 s6">
        <h5 class="white-text">Kuningan.com</h5>
        <p class="grey-text text-lighten-4" style="text-align:justify">Website ini merupakan sebuah website informasi tentang tempat pariwisata yang ada di Bangka Belitung.
        Website ini juga menyediakan sebuah informasi tentang tempat-tempat penginapan yang ada di Bangka Belitung.</p>
      </div>
      <div class="col l6 s6">
        <h5 class="white-text"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FansPage</h5>
        <ul>
          <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Whatsapp : 081313131414</li>
          <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Intagram : @ExploreBabel</li>
          <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Facebook : facebook.com/explorebabel</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
    Made by <a class="brown-text text-lighten-3" href="#">Kelompok 1</a>
    </div>
  </div>
</footer>
<!-- Javascript -->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="materialize/js/materialize.js"></script>
<script src="materialize/js/init.js"></script>
<script src="materialize/js/slider.js"></script>
<script src="materialize/js/slider2s.js"></script>

  </body>
</html>