<%-- 
    Document   : Login
    Created on : 22-Feb-2017, 22:45:04
    Author     : novan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Admin</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="materialize/css/materialize.css" media="screen">
    <link href="https://file.myfontastic.com/n6vo44Re5QaWo8oCKShBs7/icons.css" rel="stylesheet">
  </head>
  <body>
  <style>
 body {
   display: flex;
   min-height: 100vh;
   flex-direction: column;
 }

 main {
   flex: 1 0 auto;
 }

 body {
   background: #fff;
 }

 .input-field input[type=date]:focus + label,
 .input-field input[type=text]:focus + label,
 .input-field input[type=email]:focus + label,
 .input-field input[type=password]:focus + label {
   color: #e91e63;
 }

 .input-field input[type=date]:focus,
 .input-field input[type=text]:focus,
 .input-field input[type=email]:focus,
 .input-field input[type=password]:focus {
   border-bottom: 2px solid #e91e63;
   box-shadow: none;
 }
</style>
</head>

<body>
<div class="section"></div>
<main>
 <center>
   <img class="responsive-img" style="width: 250px;" src="http://i.imgur.com/ax0NCsK.gif" />
   <div class="section"></div>

   <h5 class="indigo-text">Please, login First into Your Account</h5>
   <div class="section"></div>

   <div class="container">
     <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

       <form class="col s12" action="Login" method="post">
         <div class='row'>
           <div class='col s12'>
           </div>
         </div>

         <div class='row'>
           <div class='input-field col s12'>
             <input class='validate' type='text' name='username' id='email' />
             <label for='email'>Enter Username</label>
           </div>
         </div>

         <div class='row'>
           <div class='input-field col s12'>
             <input class='validate' type='password' name='password' id='password' />
             <label for='password'>Enter Password</label>
           </div>
           <label style='float: right;'>
             <a class='pink-text' href='Register.jsp'><b>Don't have account? Please Register</b></a>
           </label>
         </div>

         <br />
         <center>
           <div class='row'>
             <button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect indigo'>Login</button>
           </div>
         </center>
       </form>
     </div>
   </div>
   <!-- <a href="#!">Create account</a> -->
 </center>

 <div class="section"></div>
 <div class="section"></div>
</main>


    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="materialize/js1/materialize.js"></script>
    <script type="text/javascript" src="materialize/js1/io.js"></script>
  </body>
</html>