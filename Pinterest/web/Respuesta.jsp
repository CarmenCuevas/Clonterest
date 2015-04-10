<%-- 
    Document   : Respuesta
    Created on : 10/04/2015, 06:18:04 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Conexion.Conexion"%>
<!DOCTYPE html>
<% 
    try{
        String nombre = request.getParameter("nombre");
        String url = request.getParameter("url");
        String tipo = request.getParameter("tipo");
        
        Conexion n = new Conexion();
        
        if(n.insertaimagen(nombre, url, tipo) == true){
            out.write("La imagen se guardo correctamente");
        }
        else{
            out.write("Algo fallo");
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
