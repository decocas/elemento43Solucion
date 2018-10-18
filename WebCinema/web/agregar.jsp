<%-- 
    Document   : agregar
    Created on : 14/10/2018, 05:37:58 PM
    Author     : USUARIO
--%>
<%@include file="conectar.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar cliente</title>
    </head>
    <body>
        <h1>Bienvenido!</h1>
           <%
         String nombre=request.getParameter("nombre");
         String clave=request.getParameter("clave");
         String id=request.getParameter("id");
         String apellido=request.getParameter("apellido");
         String email=request.getParameter("email");
         String edad=request.getParameter("edad");
         
         if(nombre!=null && clave!=null && id !=null){
          String s="INSERT INTO cliente(id,nombre,apellido,edad,email,clave)  values ('"+id+"','"+nombre+"','"+apellido+"','"+edad+"','"+email+"','"+clave+"')";
          sentencia.executeUpdate(s);
  out.println("<h2>Cliente registrado</h2>"+"<a href='index.html'><h1>regresar</h1></a>");
  }else{ %>
        <form class="container" action="agregar.jsp" method="POST">
     
     <input type="text"  name="id" value="" required="required"  placeholder="ID"/><br>
           
     <input type="text"   name="nombre" value="" required="required" placeholder="NOMBRE"/><br>
     
     <input type="text"   name="apellido" value="" required="required" placeholder="APELLIDO"/><br>
          
     <input type="text"   name="edad" value="" required="required" placeholder="EDAD"/><br>
     
     <input type="email"   name="email" value="" required="required" placeholder="E-mail"/><br>
     
     <input type="text"   name="clave" value=""  required="required" placeholder="PASSWORD" /><br>
             
            <input type="submit"  value="registrar" />
            <input type="reset"   value="borrar" />
                
            
        </form>
        <%}%>
    </body>
</html>
