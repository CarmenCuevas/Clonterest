<%-- 
    Document   : Comentado
    Created on : 9/04/2015, 08:48:20 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Conexion.Conexion"%>
<!DOCTYPE html>
<% try{
    Conexion n = new Conexion();
    int id_img = Integer.parseInt(request.getParameter("id_imagen"));
    int id_coment = Integer.parseInt(request.getParameter("id_coment"));
    String comentario = request.getParameter("comentario");
    
    if(n.comentario(id_coment, comentario, id_img) == true){
        out.write("Eres bien chido y comentaste");
    }
    else{
        out.write("Ya valio madres");
    }
 }catch(Exception e){
         e.printStackTrace();
     }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
