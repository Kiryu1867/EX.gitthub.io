<%-- 
    Document   : RegisP
    Created on : 2/05/2021, 02:22:13 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>registrad</h1>
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        String url, UserName, password, driver;
        url = "jdbc:mysql://localhost/Heladitos";
        UserName = "root";
        password = "Caledonea1";
        driver = "com.mysql.jdbc.driver";
        try{Class.forName(driver);
        con = DriverManager.getConnection(url, UserName, password);
      try{ String id_p, nombre, precio, gramos, presentacion, q;
      id_p = request.getParameter("id_p");
      nombre = request.getParameter("nombre");
      precio = request.getParameter("precio");
      gramos = request.getParameter("gramos");
      presentacion = request.getParameter("presentacion");
      set = con.createStatement();
      q = "insert into Held(id_p, nombre, precio, gramos, presentacion)"
           + "values('"+id_p+"', '"+nombre+"', '"+precio+"', '"+gramos+"', '"+presentacion+"')";  
      int registro = set.executeUpdate(q); 
     %>
     
     
     <h1>Registro exitoso</h1>
     
     
      <% 
        set.close();
      }
      catch(SQLException ed){
        System.out.println("Error al registrar datos en la tabla");
        System.out.println(ed.getMessage());
%>
     
     
     <h1>Registro no exitoso, error en la lectura</h1>
     
     
      <% 
      }
        }catch(Exception e){
            System.out.println("Error al conectarse con la base de datos");
            
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());

        } 
        
        
        %>
        <h1> esta pagina sigue en construccion</h1>
        
    <a href="Compras.html">Atras</a>
    </body>
</html>
