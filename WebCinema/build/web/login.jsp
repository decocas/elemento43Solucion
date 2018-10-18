<%-- 
    Document   : login
    Created on : 14/10/2018, 05:36:39 PM
    Author     : USUARIO
--%>

<%@include file="conectar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Bienvenido!</h1>
        <%
        String id=request.getParameter("id");
        String clave=request.getParameter("clave");
        if(clave!=null && id!=null){
        String s="SELECT * FROM cliente WHERE id='"+id+"' AND clave= '"+clave+"' ";
          sentencia.executeQuery(s);
           if(sentencia.executeQuery(s)!=null){
        out.println("<h1>Bienvenido Usuario</h1>"+"<a href='tarea.jsp'><h1>calificar una pelicula</h1></a> <br>"
        +"<a href='listar.jsp'><h1>listar peliculas</h1></a> "+"<br> <a href='index.html'><h1>volver</h1></a>");
          }else{
            out.println("usuario no registrado");
        }
        }else{%>
                  <form class="container" action="login.jsp" method="POST">
                
     <input type="text"  name="id" value="" required="required" placeholder="ID" /><br>
            
     <input type="password"  name="clave" value=""  required="required" placeholder="PASSWORD" /><br>
             
            <input type="submit"  value="entrar" />
            <input type="reset" value="borrar" />
                            </form>   
      
        
        
        <%}%>
        <hr>
        <%
        String as="SELECT * FROM cliente WHERE id='"+id+"'";
        ResultSet f=sentencia.executeQuery(as);
        while(f.next()!=false){
            out.println("<h1>Perfil Cliente:</h1>"
                        + "<tr><h2>ID: "+f.getString("id")+"<br>"+
                        "Nombre: "+f.getString("nombre")+"<br>"+
                        "Apellido: "+f.getString("apellido")+"<br>"+
                        "Edad: " +f.getString("edad")+"<br>"+
                        "Correo: "+f.getString("email")+"<td></h2>");
        }
        %>
        <hr>
        <%
            out.println("<h1>Pelicula calificadas:</h1>");
        String a="SELECT cantidad,nombre FROM calificacion,pelicula WHERE id_c='"+id+"'";
        ResultSet f1=sentencia.executeQuery(a);
        while(f1.next()!=false){
            out.println("<tr><h2>Nombre: "+f1.getString("nombre")+"<br>"+
                        "Puntaje: "+f1.getString("cantidad")+"<td></h2>");
        } %>
    </body>
</html>
