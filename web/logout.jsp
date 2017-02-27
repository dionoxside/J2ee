<%-- 
    Document   : logout
    Created on : 24-Feb-2017, 13:37:23
    Author     : novan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.invalidate();
%>
<jsp:forward page="Login.jsp"></jsp:forward>
    </body>
</html>
