/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Alexis
 */
public class Conexion {
    
    String bd = "pinterest";
    String usuario = "root";
    String password  = "123456";
    String url= "jdbc:mysql://localhost:3306/pinterest";;
    Connection conexion = null;
    String query , query2;
    PreparedStatement accion;
    ResultSet rs;
    
     public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException ex){
            System.out.print("Error en Clase por nombre " + ex);
        }
        
        try{
            conexion = DriverManager.getConnection(url, usuario, password);            
        }catch(Exception e){
            e.printStackTrace();
        }
        return conexion;
    }
     
   public ArrayList <String> obtenerimagenes(String tipo) throws SQLException{
       try{
       conexion = getConnection();
       ArrayList <String> imagen_url = new ArrayList <String> ();
       /*if(tipo == "Todo"){     
       query = "Select Id_imagen, Nombre, URL, Tipo, Likes from imagen";
       accion = conexion.prepareStatement(query);
       rs = accion.executeQuery();
       while(rs.next()){
         imagen_url.add(rs.getString("Id_imagen"));
         imagen_url.add(rs.getString("Nombre"));    
         imagen_url.add(rs.getString("URL"));
         imagen_url.add(rs.getString("Tipo"));
         imagen_url.add(rs.getString("Likes"));  
       }
       return imagen_url;    
       }else{*/
       query = "Select Id_imagen, Nombre, URL, Tipo, Likes from imagen where Tipo = '"+ tipo +"'";
       accion = conexion.prepareStatement(query);
       rs = accion.executeQuery();
       while(rs.next()){
          imagen_url.add(rs.getString("Id_imagen"));
          imagen_url.add(rs.getString("Nombre"));    
          imagen_url.add(rs.getString("URL"));
          imagen_url.add(rs.getString("Tipo"));
          imagen_url.add(rs.getString("Likes"));        
       }
       return imagen_url;
       //}             
   }catch(SQLException sQLException){
            sQLException.printStackTrace();
            return null;
        }finally{
          cerrarConexiones();
    
}
   
}
   public Boolean insertaimagen (String Nombre, String url, String tipo){
       try{
   int default_likes = 0;
   conexion = getConnection();
       query = "Insert into imagen ( Nombre, URL, Tipo, Likes) values (?,?,?,?)";
       accion = conexion.prepareStatement(query);
       accion.setString(1, Nombre);
       accion.setString(2, url);
       accion.setString(3, tipo);
       accion.setInt(4, default_likes);
       accion.executeUpdate();
   
   return true;
   }
       catch(SQLException sQLException){
            sQLException.printStackTrace();
            return false;
        }finally{
          cerrarConexiones();
    
}
       
   }
   
   public Boolean comentario (int id_i, String coment, int id_c){
       try{
       conexion = getConnection();
       query = "Insert into comentario (Id_comentario,Comentario,Id_imagen) Values (?,?,?)";
       accion = conexion.prepareStatement(query);
       accion.setInt(1, id_i);
       accion.setString(2, coment);
       accion.setInt(3, id_c);
       accion.executeUpdate();
       return true;
       }
       catch (SQLException sQLException) {
           sQLException.printStackTrace();
           return false;
       }finally{
          cerrarConexiones();
       }
   }
   
   public Boolean consultalike (String Nombre){
       try{
          String likes = null;
          int moar_likes;
          conexion = getConnection();
          query = "Select Likes from imagen where Nombre = '"+ Nombre +"'";
          accion = conexion.prepareStatement(query);
          rs = accion.executeQuery();
          if(rs.next()){
          likes = rs.getString("Likes");
          moar_likes = Integer.parseInt(likes);
          moar_likes = moar_likes + 1;
          query2 = "Update imagen set Likes = '" + moar_likes + "' where Nombre = '"+ Nombre + "'";
          accion = conexion.prepareStatement(query2);
          accion.executeUpdate();
          }
          return true;
       }catch(SQLException sQLException){
            sQLException.printStackTrace();
            return false;
        }finally{
          cerrarConexiones();
    
}
   }
   
   public void cerrarConexiones() {
      try{
          if(conexion != null){
              conexion.close();
          }
          if(rs != null){
              rs.close();
          }
      }catch(SQLException sQLException){
      }
    }
     public static void main( String args[] ){
       Conexion n = new Conexion();
       //System.out.println(n.hacerPedido(21, 3, 4, 1800, "xaus@gmail.com"));
    //   System.out.println(n.contraseñaCorrecta("admin@gmail.com","admin"));
   }
    
}
