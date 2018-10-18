<%-- 
    Document   : conectar
    Created on : 14/10/2018, 06:05:13 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
   import ="java.sql.*"
        %>
 
<% 
Connection c=null;
Statement sentencia=null;
try{
Class.forName("com.mysql.jdbc.Driver");
         c=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/cinema","root","123456");
          sentencia = c.createStatement();
}
catch (Exception e){
out.print("error conexion");
}
%>