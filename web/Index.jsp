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
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>Explore Kuningan</title>
  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="materialize/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="materialize/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

</head>
<body>
<div class="navbar-fixed">
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Explore Kuningan</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="Wisataa.jsp">Tempat Wisata</a></li>
        <li><a href="#">Tentang Kami</a></li>
        <li><a href="Login.jsp">Login</a></li>
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Navbar Link</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</div>
  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center teal-text text-lighten-2">Selamat Datang</h1>
        <div class="row center">
          <h5 class="header col s12 light">Yukk...Kita Explore Tempat Wisata Yang Ada Di Kuningan </h5>
        </div>
        <div class="row center">
          <a href="#" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">Yuk Explore</a>
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="materialize/img/gambar1.jpg" alt="Unsplashed background img 1"></div>
  </div>

  <div class="container">
    <div class="section">
      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">location_on</i></h2>
            <h5 class="center">Tempat Wisata</h5>

            <p class="light" style="text-align:justify">Tempat wisata di Kuningan begitu banyak,
            di Kuningan banyak tempat wisata yang indah-indah, tempat wisata di Kuningan juga ada banyak lagi seperi Telaga,Taman Kota, Curug,dll.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">web</i></h2>
            <h5 class="center">Kuliner</h5>

            <p class="light" style="text-align:justify">Kuliner di Kuningan begitu beragam,Kuningan mempunyai banyak wisata kuliner seperti Martabak Kuningan,Ranginang, opak',dll.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">navigation</i></h2>
            <h5 class="center">Hotel</h5>
            <p class="light" style="text-align:justify">Dengan banyaknya tempat wisata di Kuningan, maka banyak pula tempat penginapan/hotel yang tersedia di Kuningan, ada pula hotel berbintang yang menyediakan tempat penginapan yang ada di Kuningan.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 light">ExploreKuningan.com</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="materialize/img/gambar4.jpg" alt="Unsplashed background img 3"></div>
  </div>

  <footer class="page-footer teal">
    <div class="container">
      <div class="row">
        <div class="col l6 s6">
          <h5 class="white-text">ExploreKuningan.com</h5>
          <p class="grey-text text-lighten-4" style="text-align:justify">Website ini merupakan sebuah website informasi tentang tempat pariwisata yang ada di Kuningan.
          Website ini juga menyediakan sebuah informasi tentang tempat-tempat penginapan yang ada di Kuningan.</p>
        </div>
        <div class="col l6 s6">
          <h5 class="white-text"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FansPage</h5>
          <ul>
            <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Whatsapp : 081313131414</li>
            <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Intagram : @Explorekuningan</li>
            <li class="white-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Facebook : facebook.com/explorekuningan</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="brown-text text-lighten-3" href="#">Kelompok 1 J2EE</a>
      </div>
    </div>
  </footer>
  <!--  Scripts-->


  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="materialize/js1/materialize.js"></script>
  <script src="materialize/js1/init.js"></script>
  <!-- <script src="materialize/js/slider.js"></script>
  <script src="materialize/js/slider2s.js"></script> -->
  </body>
  </html>
