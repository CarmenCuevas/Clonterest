<%-- 
    Document   : Imagen
    Created on : 8/04/2015, 09:34:46 PM
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
        <h1>Hello World!</h1>
        <form name="Buscar" method="POST" action ="Consulta.jsp">
            <p>Tipo</p>
            <input type="text" name="tipo">
            <input type="submit" value="Enviar" name="Enviar" id="Enviar"/>
        </form>
    </body>
</html>
