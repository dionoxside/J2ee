<%-- 
    Document   : Wisata
    Created on : 06-Mar-2017, 16:55:34
    Author     : novan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Operator"%>
<%@page import="model.Wisata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Operator operator = new Operator();
ArrayList<Wisata> list = operator.getAllWisata();
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
        <li><a href="Wisata.jsp">Tempat Wisata</a></li>
        <li><a href="#">Tentang Kami</a></li>
        <li><a href="Login.jsp">Login</a></li>
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="Wisata.jsp">Tempat Wisata</a></li>
        <li><a href="#">Tentang Kami</a></li>
        <li><a href="Login.jsp">Login</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</div>

<!-- Slider -->
<div class="slider">
    <ul class="slides">
      <li>
        <img src="gambar/Curug_Sidomba3.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="gambar/Curug_putri4.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="gambar/mountain.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="gambar/telagaremis.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
    </ul>
  </div>
<section class="section">
<% for(Wisata u: list){%>
<div class="container">
<div class="row">
    <div class="col s4">
        <img src="<%=u.getGambar()%>" style="width:300px;height:200px;margin-top:85px" class="responsive-img"></img>
    </div>
        <h4><%=u.getNama()%></h4>
    <div class="col s8">
        <p><%= u.getDeskripsi()%></p>
    </div>
</div>
</div>
       <%}%>
</section>
<!-- Footer -->
 <footer class="page-footer grey darken-2">
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
</body>
<!-- Script -->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="materialize/js1/materialize.js"></script>
  <script src="materialize/js1/init.js"></script>
  <script src="materialize/js1/slider.js"></script>
  <script src="materialize/js/slider2s.js"></script>
  </html>