<%-- 
    Document   : About
    Created on : 07-Mar-2017, 13:17:27
    Author     : novan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <li><a href="About">Tentang Kami</a></li>
        <li><a href="Login.jsp">Login</a></li>
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Navbar Link</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</div>

<!-- Card Photo Anggota -->
<div class="row container">
  <div class="col s4">
    <ul class="collapsible" data-collapsible="accordion">
        <li>
          <div class="collapsible-header center">
            <br>
            <img src="materialize/img/rusli.jpg" class="circle" width="150px" height="150px">
            <h5>Diki Anugrah Triya Novan</h5>
          </div>
          <div class="collapsible-body">
            <p>Sebagai : Back-End Programmer </p>
          </div>
        </li>
      </ul>
  </div>
  <div class="col s4">
    <ul class="collapsible" data-collapsible="accordion">
        <li>
          <div class="collapsible-header center">
            <br>
            <img src="materialize/img/reva.jpg" class="circle" width="150px" height="150px">
            <h5>Reva Ayu Sentikawati</h5>
          </div>
          <div class="collapsible-body">
            <p>Sebagai : Desain Interface </p>
          </div>
        </li>
      </ul>
  </div>
  <div class="col s4">
    <ul class="collapsible" data-collapsible="accordion">
        <li>
          <div class="collapsible-header center">
            <br>
            <img src="materialize/img/fikri.jpg" class="circle" width="150px"  height="150px">
            <h5>Fikri Fajar Albana</h5>
          </div>
          <div class="collapsible-body">
            <p>Sebagai : Front-End Programmer</p>
          </div>
        </li>
      </ul>
    </div>
</div>

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
  <script src="materialize/js/materialize.js"></script>
    <script src="materialize/js/init.js"></script>
</html>