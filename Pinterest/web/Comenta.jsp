<%-- 
    Document   : Comenta
    Created on : 9/04/2015, 08:46:07 PM
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
        <form name="Buscar" method="POST" action ="Comentado.jsp">
            <p>Idc, Idim,Coment </p>
            <input type="text" name="id_coment">
            <input type="text" name="id_imagen">
            <input type="text" name="comentario">
            <input type="submit" value="comenta" name="comenta" id="comenta"/>
        </form>
    </body>
</html>
