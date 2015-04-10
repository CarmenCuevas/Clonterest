<%-- 
    Document   : MeteLike
    Created on : 9/04/2015, 06:21:25 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Conexion.Conexion"%>
<!DOCTYPE html>
<% 
    try{
    Conexion n = new Conexion();
    String nombre = request.getParameter("nombre");
    if(n.consultalike(nombre) == true){
        out.write("Los datos se insertaron chido :DD");
    }
    else{
        out.write("Ya valio D:");
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
