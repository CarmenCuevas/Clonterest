<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Conexion.Conexion"%>
<!DOCTYPE html>
<% 
    Conexion n = new Conexion();
    ArrayList <String> imagen = new ArrayList <String>();
    try{
        String tipo = request.getParameter("tipo");
        imagen = n.obtenerimagenes(tipo);
        //out.write("<p>" + tipo + "<p>");
        
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
        <table>
             <tr>
                   <td id="id">URL <td>
                          <%
                                                
                                                for(int j = 0; j<imagen.size();j++){
                                                out.write("<p>"+imagen.get(j) +"</p>");
                                            }
                                        %>
                   </td>
                </tr>
        </table>
    </body>
</html>
