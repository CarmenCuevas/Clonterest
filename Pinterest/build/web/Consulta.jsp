<%@page import="java.net.URL"%>
<%@page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection  conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/pinterest", "root", "123456");

int j = 1;
String tipo = request.getParameter("tipo");

Statement Estamento = conexion.createStatement();
ResultSet rs = Estamento.executeQuery("Select Id_imagen, Nombre, URL, Tipo, Likes from imagen where Tipo = '"+ tipo +"'");
%>

<% while (rs.next()){ %>

  <div class="row">

    <div class="col-md-3">
      <div class="panel panel-default" data-idimg="<%= rs.getString("Id_imagen") %>">
        <img src="<%= rs.getString("URL") %>" >
        <div class="panel-body">
          <button type="button" class="btn btn-default likebtn" data-nomimg="<%= rs.getString("Nombre") %>"><span class="glyphicon glyphicon-thumbs-up"> </span>  <span class="badge"><%= rs.getString("Likes") %></span></button> <span><%= rs.getString("Nombre") %></span>
        </div>
      </div>
    </div>

    <% if((j % 4) == 0 ){ %>

</div>
<div class="row">

    <% } %>


<% j++; } %>