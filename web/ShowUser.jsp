<%-- 
    Document   : ShowUser
    Created on : 26-Feb-2017, 14:17:34
    Author     : novan
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        User u = (User)request.getAttribute("user");
        %>
        <table>
            
            <tr>
                 <td>ID: </td>
                 <td><%= u.getId()%></td>
            </tr>
            
            <tr>
                 <td>Username: </td>
                 <td><%= u.getUsername()%></td>
            </tr>           
            <tr>
                 <td>Password: </td>
                 <td><%= u.getPassword()%></td>
            </tr>
            
            <tr>
                 <td>Email: </td>
                 <td><%= u.getEmail()%></td>
            </tr>
            
            <tr>
                 <td>Role: </td>
                 <td><%= u.getRole()%></td>
            </tr>
            
           
       
       </table>
    </body>
</html>
