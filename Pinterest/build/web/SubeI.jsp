<%-- 
    Document   : SubeI
    Created on : 10/04/2015, 06:09:30 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="Likes" method="POST" action ="Respuesta.jsp">
            <p>Nombre</p>
         <input type="text" name="nombre">
         <p>URL</p>
         <input type="text" name="url">
         <p>Categoria</p><select name="tipo">
             <option value="Alimentos">Alimentos</option>
             <option value="Animales">Animales</option>
             <option value="Ciencia">Ciencia</option>
             <option value="Coches">Coches</option>
             <option value="Deportes">Deportes</option>
             <option value="Moda">Moda</option>    
         </select>
        <input type="submit" value="Likes" name="Likes" id="Likes"/>
        </form>
    </body>
</html>
