<%-- 
    Document   : Likes
    Created on : 9/04/2015, 06:18:50 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Conexion.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="Likes" method="POST" action ="MeteLike.jsp">
         <input type="text" name="nombre">
        <input type="submit" value="Likes" name="Likes" id="Likes"/>
        </form>
    </body>
</html>
